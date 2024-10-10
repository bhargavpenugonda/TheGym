import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;

public class Register extends GenericServlet
{
         public void service(ServletRequest req,ServletResponse res)throws 
			 IOException,ServletException
         {
                res.setContentType("text/html");
               PrintWriter out=res.getWriter();
               
			   String name=req.getParameter("uname");
			   String email=req.getParameter("email");
			   String pwd=req.getParameter("pwd");
			   long phno=Long.parseLong(req.getParameter("mobile"));
			  try
			  {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
				
				String qry="insert into login values(?,?,?,?)";
				
				PreparedStatement pstmt=con.prepareStatement(qry);
				pstmt.setString(1,name);
				pstmt.setString(2,email);
				pstmt.setLong(3,phno);
				pstmt.setString(4,pwd);
				int i=pstmt.executeUpdate();
				if(i==1)
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Registered Successfully');");
					out.println("</script>");
					RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
					rd.forward(req,res);
				}
				con.close();
			  }
			  catch (Exception e)
			  {
				  out.print(e);
			  }
              
         }
}