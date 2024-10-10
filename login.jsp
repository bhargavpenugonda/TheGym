
<%@ page import="java.sql.*"%>
<%
		String u=request.getParameter("uname");
		String p=request.getParameter("pwd");
		if (u != null && p!=null) {
			try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");
			String sql = "SELECT * FROM login WHERE username = ? AND password = ?";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, u);
            pstmt.setString(2, p);
            ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
                // Login successful
                session.setAttribute("username", u);
                con.close();
                response.sendRedirect("index.jsp"); // Redirect to index.jsp after successful login
            } else {
                // Incorrect username or password
                con.close();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Incorrect username or password');");
                out.println("window.location.href = 'landing.html';"); // Redirect back to login page
                out.println("</script>");
            }

            rs.close();
            pstmt.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Output exception details for debugging
            // Handle database connection or query execution errors
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Error occurred. Please try again.');");
            out.println("window.location.href = 'login.jsp';"); // Redirect back to login page
            out.println("</script>");
        }
    } else {
        // Handle case where username or password is missing
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Please provide both username and password');");
        out.println("window.location.href = 'login.jsp';"); // Redirect back to login page
        out.println("</script>");
    }
%>