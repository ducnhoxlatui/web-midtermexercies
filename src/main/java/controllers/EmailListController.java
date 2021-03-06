package controllers;

import business.User;
import data.UserDB;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(urlPatterns = {"/emailList", "/thanks"})
public class EmailListController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String url = "/view/email/indexmail.jsp";
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        if (action.equals("back")){
//            url=("/view/home.jsp");
            response.sendRedirect("/home");
        }else {
            if (action.equals("join")) {
                url = "/view/email/indexmail.jsp";    // the "join" page
            } else if (action.equals("add")) {
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String email = request.getParameter("email");

                User user = new User();
                user.setFirstName(firstName);
                user.setLastName(lastName);
                user.setEmail(email);

                HttpSession session = request.getSession();
                session.setAttribute("user", user);

                if (firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                    url = "/view/email/indexmail.jsp";
                } else {
                    UserDB.insert(user);
                    url = "/view/email/thanks.jsp";
                }
            }

            getServletContext().getRequestDispatcher(url).forward(request, response);
        }

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }
}
