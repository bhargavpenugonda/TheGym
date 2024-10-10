<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TheGym - Session Booking</title>
  <link rel="stylesheet" href="css/class.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
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
    <span style="display: inline ; color: #ec4141  ;font-size: 1.2rem;">
      <%   
          String name=(String)session.getAttribute("username");  
          if (name != null && !name.isEmpty()) {
            out.print("Hello, " + name);
          }   
      %> 
        </span>
  </nav>
</header>
<div class="contact-form">
  <h1><b>Subscription</b></h1>
  <div class="container">
    <div class="main">
      <div class="content">
        <form action="subscribe.jsp" method="post">
          <label for="name">Enter Username:</label><br>
          <input type="text" id="name" name="name" placeholder="Enter Your Name" value="<%= (String)session.getAttribute("username") %>"  required><br>
          <label for="email">Enter E-mail:</label><br>
          <input type="email" id="email" name="email" placeholder="Enter Your Email" required>
          <label for="plan">Choose Plan:</label><br>
          <div class="radio">
            <input type="radio" id="standard" name="subscription" value="Standard(1500$)">
            <label for="standard">Standard</label><br>
            <input type="radio" id="diamond" name="subscription" value="Diamond(2000$)">
            <label for="diamond">Diamond</label><br>
            <input type="radio" id="premium" name="subscription" value="Premium(3500$)">
            <label for="premium">Premium</label>
        </div><br>
        <label for="date">Pick the Date:</label>
        <input type="date" id="date" name="date" placeholder="Enter date" required>
        
          <label for="phno">Enter Mobile Number:</label><br>
          <input type="text" id="phno" name="phno" placeholder="Enter Phone Number"><br>
          <button type="submit" class="btn">Subscribe Now  <i class="fas fa-paper-plane"></i></button>
        </form>
      </div>
      <div class="form-img">
        <img src="img/5.png" alt="">
      </div>
    </div>
  </div>
</div>

</body>
</html>
