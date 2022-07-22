import javax.imageio.ImageIO;
import javax.imageio.stream.FileImageInputStream;
import javax.imageio.stream.ImageInputStream;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.Enumeration;
import java.util.Map;
import java.util.Set;

@WebServlet("/ImgServlet")
public class ImgServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String referer = request.getHeader("referer");
        try{
            if (request.getSession().getAttribute("username") != null && !referer.contains(request.getServletPath())){
                String imgId = request.getParameter("imgVal");
                ImageInputStream r = new FileImageInputStream(new RandomAccessFile(request.getServletContext().getRealPath("/WEB-INF/img/" + imgId), "r"));
                BufferedImage image = ImageIO.read(r);
                ImageIO.write(image, "png", response.getOutputStream());
            } else {
                response.sendRedirect("index.jsp");
            }
        }catch (NullPointerException e){
            response.getOutputStream().write("Download is not allowed! ".getBytes());
        }


    }
}
