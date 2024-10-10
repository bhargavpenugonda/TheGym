<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TheGym</title>
  <link rel="stylesheet" href="css/contact.css">
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
<br><br><br>
<br>
<center>
	 <div class="contact-form">
	<h1>Contact Us</h1>
	<div class="container">
		<div class="main">
			<div class="content">
				<h2>Talk To Us</h2>
				<form action="contact" method="post">

					<input type="text" name="name" placeholder="Enter Your Name" value="<%= (String)session.getAttribute("username") %>" readonly required>

				
					<input type="email" name="ename" placeholder="Enter Your Email" required>
					<textarea name="message" placeholder="Your Message" required></textarea>                   
	<button type="submit" class="btn" id="a">Send <i class="fas fa-paper-plane"></i></button>
				</form>
			</div>
			<div class="form-img">
				<img src="img/5.png" alt="">
			</div>
		</div>
	</div>
</div>

</center>

<script>
    document.getElementById("a").addEventListener("click", function(event) {
        // Display an alert message
        //alert("Submitted Successfully");

        // Optionally, redirect after alert confirmation
        if (alert("Submitted Successfully.")) {
            window.location.href = "index.jsp"; // Redirect to logout page
        }
    });
</script>
  </body>

  </html>
      