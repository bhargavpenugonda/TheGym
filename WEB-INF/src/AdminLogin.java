import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*; 
import java.io.*;
public class AdminLogin extends GenericServlet
{
	public void service(ServletRequest req,ServletResponse res) throws ServletException,IOException
	{
		PrintWriter out=res.getWriter();
		String u=req.getParameter("uname");
		String p=req.getParameter("pwd");
		res.setContentType("text/html");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from admin_login");
			int flag=0;
			while(rs.next())
			{
				if(u.equals(rs.getString(1)) && p.equals(rs.getString(4)))
				{
					flag=1;
					break;
				}
			}
			if(flag==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Login Successful');");
				out.println("</script>");
				RequestDispatcher rd=req.getRequestDispatcher("admin_home.html");
				rd.include(req,res);
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Incorrect username or password');");
				out.println("</script>");
				RequestDispatcher rd=req.getRequestDispatcher("admin_login.html");
				rd.include(req,res); 
			}
			con.close();
			}
			catch(Exception e)
			{
				out.println(e);
			}
	}
}