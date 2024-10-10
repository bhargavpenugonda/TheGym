<%@ page errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String accnt = request.getParameter("subscription");
    String date = request.getParameter("date");
    long phno = Long.parseLong(request.getParameter("phno"));
    
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");
        
        String qry = "INSERT INTO subscribe VALUES (?, ?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(qry);
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setLong(3, phno);
        pstmt.setString(4, date);
        pstmt.setString(5, accnt);
        
        int i = pstmt.executeUpdate();
        if (i == 1) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Subscribed Successfully!');");
            out.println("window.location.href = 'index.jsp';"); // Redirect after alert
            out.println("</script>");
        } else {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Subscription failed');");
            out.println("</script>");
        }
        
        pstmt.close();
        con.close();
    } catch (Exception e) {
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Error: Subscription failed');");
        out.println("</script>");
        e.printStackTrace(); // Log the exception for debugging
    }
%>
