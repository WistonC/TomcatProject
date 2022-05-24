import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        req.getRequestDispatcher("/index.jsp").forward(req,res);// user not yet login
    }
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");
        String username= req.getParameter("username");
        System.out.println(username);
        String password=req.getParameter("password");
        System.out.println(password);
        if(sqlConnect(username,password)){
            res.setContentType("text/html;charset = utf-8");
            Cookie cookie = new Cookie("username", username);
            cookie.setMaxAge(60*60*24*7);
            res.addCookie(cookie);
            final HttpSession session=req.getSession();
            session.setAttribute("username",username);
            System.out.println("Success");
            req.getRequestDispatcher("/WEB-INF/mainpage.jsp").forward(req,res);// once the password is correct for the request to main page
        }
        else{  //If the password incorrect pass the request to login failure page*/
            res.setContentType("text/html;charset = utf-8");
            req.getRequestDispatcher("/WEB-INF/logfailure.jsp").forward(req,res);
        }
    }

    /**
     * Connect to the SQL server to validate the login info
     * @param username
     * @param password
     * @return connect success or not
     */
    public boolean sqlConnect(String username ,String password){
        if(username == null || password == null){
            return false;
        }
        //连接数据库判断是否登录成功
        Connection conn = null;
        PreparedStatement pstmt =  null;
        ResultSet rs = null;
        //1.获取连接
        try {
            conn =  JDBCUtils.getConnection();
            //2.定义sql
            String sql = "select * from user where username = ? and password = ?";
            //3.获取执行sql的对象
            pstmt = conn.prepareStatement(sql);
            //给?赋值
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            //4.执行查询,不需要传递sql
            rs = pstmt.executeQuery();
            return rs.next();//如果有下一行，则返回true

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(rs,pstmt,conn);
        }


        return false;
    }


}
