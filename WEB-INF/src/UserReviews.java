import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;

public class UserReviews extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");
            String qry = "select * from contact";
            PreparedStatement pstmt = con.prepareStatement(qry);
            ResultSet rs = pstmt.executeQuery();
            
            out.println("<!DOCTYPE html>");
            out.println("<html lang=\"en\">");
            out.println("<head>");
            out.println("<meta charset=\"UTF-8\">");
            out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
            out.println("<title>TheGym - User Review Details</title>");
            out.println("<link rel=\"stylesheet\" href=\"css/sub.css\">");
            out.println("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\"/>");
            out.println("<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>");
            out.println("</head>");
            out.println("<body>");


            out.println("<header class=\"header\">");
            out.println("<a href=\"admin_home.html\" class=\"logo\">");
            out.println("<i class=\"fas fa-dumbbell\"></i>TheGym");
            out.println("</a>");
            out.println("<nav class=\"navbar\">");
            out.println("<a href=\"admin_home.html\">DashBoard</a>");
            out.println("<a href=\"admin_services.html\">Services</a>");
            out.println("<a href=\"conadmin\">Contact</a>");
            out.println("<a href=\"admin_pricing.html\">Pricing</a>");
            out.println("<a href=\"display\">Subscriptions</a>");
            out.println("<a href=\"#\">|</a>");
            out.println("<a href=\"landing.html\">Logout</a>");
            out.println("</nav>");
            out.println("</header>");
            out.println("<div class=\"subscription-details\">");
            out.println("<h1><b>Subscription Details</b></h1>");
            out.println("<div class=\"container\">");
            out.println("<div class=\"main\">");
            out.println("<div class=\"content\">");
            out.println("<table>");
            out.println("<h1 style=\"background-color:#ec4141\">Reviews</h1>");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>Name</th>");
            out.println("<th>Email</th>");
            out.println("<th>User Review</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");
            
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString(1) + "</td>");
                out.println("<td>" + rs.getString(2) + "</td>");
                out.println("<td>" + rs.getString(3) + "</td>");
                out.println("</tr>");
            }
            
            out.println("</tbody>");
            out.println("</table>");
            out.println("</div>");
            out.println("<div class=\"form-img\">");
            out.println("<img src=\"img/5.png\" alt=\"\">");
            out.println("</div>");
            out.println("</div>");
            out.println("</div>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");

            con.close();
        } catch (Exception e) {
            out.print(e);
        }
    }
}
