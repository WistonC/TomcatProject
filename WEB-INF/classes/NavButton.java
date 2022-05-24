import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

public class NavButton extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/index.jsp").forward(req,resp);// user not yet login
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setHeader("Cache-Control","no-cache"); //Force caches to obtain a new copy of the page from the origin server
        res.setHeader("Cache-Control","no-store"); //Direct caches not to store the page under any circumstance
        res.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        res.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
        if(req.getSession().getAttribute("username")!=null){// check the user login or not
            String navBtnVal = req.getParameter("navBtnVal");
            System.out.println(navBtnVal);
            if (Objects.equals(navBtnVal, "1")){
                req.getRequestDispatcher("/WEB-INF/mainpage.jsp").forward(req,res);
            }
            else if (Objects.equals(navBtnVal, "2")){
                req.getRequestDispatcher("/WEB-INF/request.jsp").forward(req,res);
            }else if (Objects.equals(navBtnVal, "3")){
                req.getRequestDispatcher("/WEB-INF/aboutus.jsp").forward(req,res);
            }else if (Objects.equals(navBtnVal, "4")){
                req.getSession().invalidate();
                req.getRequestDispatcher("/index.jsp").forward(req,res);
            }
        }
        else{
            req.getRequestDispatcher("/index.jsp").forward(req,res);// user not yet login
        }
    }
}
