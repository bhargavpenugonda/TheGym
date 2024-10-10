<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TheGym</title>
  <link rel="stylesheet" href="css/services.css">
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
  </header><br>
  <section class="service" id="service">
  	<div class="container">
    		<div class="content">
     			<section class="home">
        			<div class="max-width">
           				<div class="text box wow slideInLeft">
            					<h2>Services</h2>
            					<p>
            						Our fitness center offers a comprehensive range of services to help you achieve your fitness goals,<br> from personal training and 							group fitness classes to state-of-the-art equipment <br>and expert nutrition counseling.
         					</p>
         					<p>
              						Whether you're a seasoned athlete or just starting your fitness journey, we have something for everyone.<br> Our experienced and 							dedicated staff is committed to providing you with the support and guidance <br> you need to reach your full potential.
            					</p>
            					<a href="pricing.jsp" class="btn">Start Now</a>
            				</div>
        				<div class="home-image1">
            					<img src="img/schedule1.png" alt="#">
          				</div>       
        			</div>
        			<br>
			</section>
			<div class="text box wow slideInRight">
			<hr>
    			<center> <h2>Group Fitness Classes</h2> </center>
			<hr>
		<ul>
     		<section class="home">
    			<div class="max-width">
				 <div class="text box wow slideInLeft">
      					 <h2>Zumba</h2>
       					 <p>
        				 Are you ready to party yourself into shape? Forget the workout, just lose yourself in the music and find yourself in shape with fitness dance at 					 The Gym. Zumba classes feature exotic rhythms set to high-energy Latin and international beats.
      					 </p>     
      				 </div>
      				<div class="home-image1">
          				<img src="img/zumba.jpg" alt="#">
      				</div>       
      			</div>
		</section>
		<section class="home">
    			<div class="max-width">
				<div class="home-image1">
        				<img src="img/yoga.jpg" alt="#">
      				</div>
				<div class="text box wow slideInLeft">
      					<h2>Yoga</h2>
       					<p>
        				one up, slim down, and find balance with this high-energy summer workout from power yoga. It brings inner peace, a spiritual boost, and an 						unparalleled measure of serenity.Power yoga is a general term used to describe a vigorous.</p>     
      				</div>
			</div>
  		</section>       
		<section class="home">
    			<div class="max-width">
				<div class="text box wow slideInLeft">
      				<h2>Aerobic</h2>
       				<p>
        			Aerobic exercises, which includes walking, running, and swimming, has been proven to be an effective way for burning fat and losing weight. Aerobic exercise 				was also a more efficient method of exercise for losing body fat.</p>     
      				</div>
				<div class="home-image1">
          				<img src="img/aerobic.jpg" alt="#">
      				</div>       
			</div>
		</section>
		<section class="home">
    			<div class="max-width">
				<div class="home-image1">
        				<img src="img/spin.jpg" alt="#">
      				</div>
				<div class="text box wow slideInLeft">
      					<h2>Spin</h2>
       					<p>
        				Spinning is a total body, low impact, high intensity cardiovascular workout, so you get a lot of bang for your buck and it's a really time efficient 					way to workout," says Alana Murrin, Head of Ride at Psycle.      </p>     
      				</div>
			 </div>
  		</section>
		<section class="home">
    			<div class="max-width">
				<div class="text box wow slideInLeft">
      				<h2>Kickboxing</h2>
       				<p>
        			Kickboxing not only gives you that fab figure, but also makes you stronger. Kickboxing has been a rage with fitness enthusiasts for some time now. For many 				people, it is a 'cool' workout option compared to gymming, which can be monotonous.</p>     
      				</div>
			 	<div class="home-image1">
          				<img src="img/kickboxing.jpg" alt="#">
      			 	</div>       
			</div>
  		</section>
 	</ul>
	</div>

    <br>

    	<div class="text box wow slideInLeft">
      	<h2>Our Gym Equipment</h2>
      	<p>
        Our wide range of gym equipment is designed to cater to diverse fitness needs, ensuring that you can achieve your health <br>and wellness goals in the comfort of your home or at 	your fitness facility.</p><br>
      	<ul>
        	<label>
          		<div class="home-image">
            		<img src="img/tm.jpg" alt="#">
            		<br>
            		<li>Treadmill</li>
          		</div>       
        		<div class="home-image">
          		<img src="img/ellip.jpg" alt="#">
          		<br>
          		<li>Elliptical</li>
        		</div>       
			<div class="home-image">
          		<img src="img/rowmac.jpg" alt="#">
          		<br>
          		<li>Rowing machine</li>
        		</div>
        	</label>
      
        <br>

        	<label>
          		<div class="home-image">
            		<img src="img/kettlebell.jpg" alt="#">
            		<br>
            		<li>Kettlebell</li>
          		</div>
        		<div class="home-image">
          		<img src="img/benches.jpg" alt="#">
          		<br>
          		<li>Bench</li>
        		</div>
        		<div class="home-image">
          		<img src="img/dumbbell.jpg" alt="#">
          		<br>
          		<li>Dumbbell</li>
        		</div>
        	</label>
      	</ul>
  	</div>
</div>
    </div>
</section>
</body>
</html>