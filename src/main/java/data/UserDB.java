package data;

import business.User;
import utils.DBUtil;

import java.net.URISyntaxException;
import java.sql.*;
import java.util.ArrayList;


public class UserDB {

    public static int insert(User user) {
        Connection connection = null;
        try {
            connection = ConnectionPool.getConnection();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement ps = null;

        String query
                = "INSERT INTO users(Email, FirstName, LastName) "
                + "VALUES (?, ?, ?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getFirstName());
            ps.setString(3, user.getLastName());
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        } finally {
            DBUtil.closePreparedStatement(ps);

        }
    }

    public static int update(User user) {
        Connection connection = null;
        try {
            connection = ConnectionPool.getConnection();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement ps = null;

        String query = "UPDATE users SET "
                + "FirstName = ?, "
                + "LastName = ? "
                + "WHERE Email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getEmail());

            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        } finally {
            DBUtil.closePreparedStatement(ps);

        }
    }

    public static int delete(User user) {
        Connection connection = null;
        try {
            connection = ConnectionPool.getConnection();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement ps = null;

        String query = "DELETE FROM users "
                + "WHERE Email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getEmail());

            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        } finally {
            DBUtil.closePreparedStatement(ps);
        }
    }

    public static boolean emailExists(String email) {
        Connection connection = null;
        try {
            connection = ConnectionPool.getConnection();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT Email FROM users "
                + "WHERE Email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
        }
    }

    public static User selectUser(String email) {
        Connection connection = null;
        try {
            connection = ConnectionPool.getConnection();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM users "
                + "WHERE Email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            User user = null;
            if (rs.next()) {
                user = new User();
                user.setFirstName(rs.getString("FirstName"));
                user.setLastName(rs.getString("LastName"));
                user.setEmail(rs.getString("Email"));
            }
            return user;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
        }
    }

    public static ArrayList<User> selectUsers() {
        Connection connection = null;
        try {
            connection = ConnectionPool.getConnection();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM users";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            ArrayList<User> users = new ArrayList<User>();
            while (rs.next())
            {
                User user = new User();
                user.setFirstName(rs.getString("FirstName"));
                user.setLastName(rs.getString("LastName"));
                user.setEmail(rs.getString("Email"));
                users.add(user);
            }
            return users;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
        }
    }
}
