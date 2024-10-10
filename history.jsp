<%@ page errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TheGym - Subscription Details</title>
    <link rel="stylesheet" href="css/sub.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <header class="header">
        <a href="index.jsp" class="logo">
            <i class="fas fa-dumbbell"></i>TheGym
        </a>
        <nav class="navbar">
            <a href="index.jsp">Home</a>
            <a href="services.jsp">Services</a>
            <a href="contact.jsp">Contact</a>
            <a href="pricing.jsp">Pricing</a>
            <a href="history.jsp">Subscriptions</a>
            <a href="landing.html">Logout</a>
            <a href="#">|</a>
            <span style="display: inline; color: #ec4141; font-size: 1.2rem;">
                <%   
                    String name = (String) session.getAttribute("username");  
                    if (name != null && !name.isEmpty()) {
                        out.print("Hello, " + name);
                    }   
                %> 
            </span>
        </nav>
    </header>
    <div class="subscription-details">
        <h1><b>Subscription Details</b></h1>
        <div class="container">
            <div class="main">
                <div class="content">
                    <table>
                        <h1 style="background-color: #ec4141;">Subscriptions History</h1>
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone Number</th>
                                <th>Subscribed On</th>
                                <th>Subscription Plan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%  
                                String username = (String) session.getAttribute("username");
                                if (username != null && !username.isEmpty()) {
                                    Class.forName("oracle.jdbc.driver.OracleDriver");
                                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");
                                    String qry = "SELECT * FROM subscribe WHERE name = ?";
                                    PreparedStatement pstmt = con.prepareStatement(qry);
                                    pstmt.setString(1, username);
                                    ResultSet rs = pstmt.executeQuery();
                                    while (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td>" + rs.getString(1) + "</td>");
                                        out.println("<td>" + rs.getString(2) + "</td>");
                                        out.println("<td>" + rs.getLong(3) + "</td>");
                                        out.println("<td>" + rs.getString(4) + "</td>");
                                        out.println("<td>" + rs.getString(5) + "</td>");
                                        out.println("</tr>");
                                    }
                                    rs.close();
                                    pstmt.close();
                                    con.close();
                                }
                            %>
                        </tbody>
                    </table>
                </div>
                <div class="form-img">
                    <img src="img/5.png" alt="">
                </div>
            </div>
        </div>
    </div>
</body>
</html>
