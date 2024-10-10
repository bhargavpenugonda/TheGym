import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;

public class Contact extends GenericServlet
{
         public void service(ServletRequest req,ServletResponse res)throws 
			 IOException,ServletException
         {
                res.setContentType("text/html");
               PrintWriter out=res.getWriter();
               
			   String name=req.getParameter("name");
			   String email=req.getParameter("ename");
			   String msg=req.getParameter("message");
			  try
			  {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
				
				String qry="insert into contact values(?,?,?)";
				
				PreparedStatement pstmt=con.prepareStatement(qry);
				pstmt.setString(1,name);
				pstmt.setString(2,email);
				pstmt.setString(3,msg);
				int i=pstmt.executeUpdate();
				if(i==1)
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Submitted Successfully');");
					out.println("</script>");
					RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
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