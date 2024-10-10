<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>TheGym</title>
      <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
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
              <a href="landing.html" id="loginLink">Logout</a>
              <a href="#">|</a>
              <span "id="welcomeMessage" style="display: inline ; color: #ec4141  ;font-size: 1.2rem;">
              <%   
                String name=(String)session.getAttribute("username");  
                if (name != null && !name.isEmpty()) {
                    out.print("Hello, " + name);
                }   
               %> 
            </span>
                       
          </nav>
      </header>
	<br><hr>
  	<br><br>
      <section class="home">
          <div class="max-width">
              <div class="home-content">
                  <h3>TheGym</h3>
                  <p> Unveil a World of Wellness and Strength! Embrace the journey towards a better, healthier you.<br> Your path to a stronger, fitter self begins right here!</p>
                  <br>
                  <a href="services.jsp">
                  <button class="button-87" role="button">Get Started</button></a>
               </div>
           	<div class="home-image">
                  <img src="img/5.png" alt="#">
           	</div>
          </div>
      </section>
<hr>

<footer class="footer">
    <div class="container">
        <div class="row">
		<div class="footerText">
                    <h2>About us</h2><br>
                    <p>At THE GYM, our mission is to provide you with the ultimate<br> fitness experience, one that focuses on your specific fitness<br> needs,helps you achieve the results 			you are afterand <br>invigorates your soul. We guarantee the highest<br> quality equipment and training programs available, <br>an expert staff, special amenities 			that are often not <br>found in other health clubs, attentive service and<br> truly sophisticated surroundings. </p>
		</div>
            	<div class="footer-col">
                <h4>company</h4>
                <ul>
                    <li><a href="#">about us</a></li>
                    <li><a href="services.html">our services</a></li>
                    <li><a href="#">privacy policy</a></li>
                </ul>
           	</div>
           	<div class="footer-col">
                <h4>get help</h4>
                <ul>
                    <li><a href="contact.html">Contact Us</a></li>
                    <li><a href="#">Membership</a></li>
			<li><a href="pricing.html">Plans</a></li>
                    <li><a href="#">payment options</a></li>
                </ul>
            	</div>
            	<div class="footer-col">
                <h4>follow us</h4>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            	</div>
        </div>
    </div>
</footer>
<script>
    document.getElementById("loginLink").addEventListener("click", function(event) {
        event.preventDefault(); // Prevent the default action of following the link

        // Display an alert message
        if (confirm("Are you sure you want to logout?")) {
            window.location.href = event.target.href; // Redirect to the logout page if the user confirms
        }
    });
</script>
</body>
</html>