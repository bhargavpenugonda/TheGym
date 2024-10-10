<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TheGym</title>
  <link rel="stylesheet" href="css/pricing.css">
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

<section class="layer plans">
    <section>
   <section class="third lift plan-tier" onclick="location.href='class.jsp';">      
        <h4>Standard</h4>
        <h5><sup class="superscript">&#8360.</sup><span class="plan-price">1500</span><sub> /mo</sub></h5>
        <del>&#8360. 2000/mo</del>
	<ul>
<li>No Personal Trainer</li>
  <li> Up to <strong>2</strong> hrs</li>
  <li><strong>-</strong></li>
  <li><strong>Free</strong> Outdoor Gym</li>
  <li>No <strong>trials</strong></li>
  	</ul>
   </section>
      
    <section class="third lift plan-tier callout" onclick="location.href='class.jsp';">
  	<h6>Most popular</h6>
        <h4>Diamond<br>(Recommended)</h4>
        <h5><sup class="superscript">&#8360.</sup><span class="plan-price">2000</span><sub> /mo</sub></h5>
        <del>&#8360. 2500/mo</del>
        <ul>
<li>1 Week Personal Trainer</li>
  <li>Up to <strong>4</strong> hrs</li>
  <li><strong>access</strong> to stalls</li>
  <li><strong>Free</strong> Outdoor Gym</li>
  <li>10 day <strong>free trial</strong></li>
  	</ul>
  	</section>
      
      <section class="third lift plan-tier" onclick="location.href='class.jsp';">
	 <h4>Premium</h4>
        <h5><sup class="superscript">&#8360.</sup><span class="plan-price">3500</span><sub> /mo</sub></h5>
        <del>&#8360. 3500/mo</del>
      	 <ul>
<li>Personal Trainer</li>
  <li><strong>Unlimited</strong> time</li>
  <li><strong>include</strong> shakes</li>
  <li><strong>Free</strong> outdoor Gym</li>
  <li>15 day <strong>free trial</strong></li>
  	</ul>
	</section>
    </section>
  </section>

</body>
</html>
