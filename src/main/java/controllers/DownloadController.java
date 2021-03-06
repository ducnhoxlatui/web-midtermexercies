package controllers;
import business.User;
import data.UserIO;
import utils.CookieUtil;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet(urlPatterns = {"/download"})
public class DownloadController  extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws IOException, ServletException {

        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums";  // default action
        }
        if (action.equals("back")) {
//            url=("/view/home.jsp");
            response.sendRedirect("/home");
        }else {
            String url = "/view/download/indexdownload.jsp";
            if (action.equals("viewAlbums")) {
                url = "/view/download/indexdownload.jsp";
            } else if (action.equals("checkUser")) {
                url = checkUser(request, response);
            } else if (action.equals("viewCookies")) {
                url = "/view/download/view_cookies.jsp";
            } else if (action.equals("deleteCookies")) {
                url = deleteCookies(request, response);
            }
            getServletContext().getRequestDispatcher(url).forward(request, response);
        }

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums";  // default action
        }else {
            String url = "/view/download/indexdownload.jsp";
            if (action.equals("registerUser")) {
                url = registerUser(request, response);
            }
            getServletContext().getRequestDispatcher(url).forward(request, response);
        }

    }

    private String checkUser(HttpServletRequest request, HttpServletResponse response) {

        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        session.setAttribute("productCode", productCode);
        User user = (User) session.getAttribute("user");

        String url;
        // if User object doesn't exist, check email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress =
                    CookieUtil.getCookieValue(cookies, "emailCookie");

            // if cookie doesn't exist, go to Registration page
            if (emailAddress == null || emailAddress.equals("")) {
                url = "/view/download/register.jsp";
            }
            // if cookie exists, create User object and go to Downloads page
            else {
                ServletContext sc = getServletContext();
                String path = sc.getRealPath("/WEB-INF/EmailList.txt");
                user = UserIO.getUser(emailAddress, path);
                session.setAttribute("user", user);
                url = "/view/download/" + productCode + "_download.jsp";
            }
        }
        // if User object exists, go to Downloads page
        else {
            url = "/view/download/" + productCode + "_download.jsp";
        }
        return url;
    }

    private String registerUser(HttpServletRequest request,
                                HttpServletResponse response) {

        // get the user data
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        // store the data in a User object
        User user = new User();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);

        // write the User object to a file
        ServletContext sc = getServletContext();
        String path = sc.getRealPath("/WEB-INF/EmailList.txt");
        UserIO.add(user, path);

        // store the User object as a session attribute
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        // add a cookie that stores the user's email to browser
        Cookie c = new Cookie("emailCookie", email);
        c.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        c.setPath("/");                      // allow entire app to access it
        response.addCookie(c);

        // create and return a URL for the appropriate Download page
        String productCode = (String) session.getAttribute("productCode");
        String url = "/view/download/" + productCode + "_download.jsp";
        return url;
    }

    private String deleteCookies(HttpServletRequest request,
                                 HttpServletResponse response) {

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); //delete the cookie
            cookie.setPath("/"); //allow the download application to access it
            response.addCookie(cookie);
        }
        String url = "/view/download/delete_cookies.jsp";
        return url;
    }
}