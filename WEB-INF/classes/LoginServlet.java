import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        req.getRequestDispatcher("/index.jsp").forward(req, res);// user not yet login
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (c3p0Connect(username, password)) {
            res.setContentType("text/html;charset = utf-8");
            Cookie cookie = new Cookie("username", username);
            cookie.setMaxAge(60 * 60 * 24 * 7);
            res.addCookie(cookie);
            final HttpSession session = req.getSession();
            session.setAttribute("username", username);
            session.setAttribute("active", "Home");
            System.out.println(username + " logged in! ");
            req.getRequestDispatcher("/WEB-INF/home.jsp").forward(req, res);// once the password is correct for the request to main page
        } else {  //If the password incorrect pass the request to login failure page*/
            res.setContentType("text/html;charset = utf-8");
            req.getRequestDispatcher("/WEB-INF/logFailure.jsp").forward(req, res);
        }
    }

    /**
     * Connect to the SQL server to validate the login info
     *
     * @param username
     * @param password
     * @return connect success or not
     */
    public boolean c3p0Connect(String username, String password) {
        if (username == null || password == null) {
            return false;
        }
        DataSource dataSource = new ComboPooledDataSource();
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
            String sql = "select * from user where username = ? and password = ?";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();
            return rs.next();//如果有下一行，则返回true
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


}
