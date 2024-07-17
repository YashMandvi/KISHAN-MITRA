<%-- 
    Document   : kisanmitra.jsp
    Created on : 17 Mar 2024, 08:13:17
    Author     : Ashish Katare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KisanMitra</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/cs.css" rel="stylesheet" type="text/css"/>
        <style>
            .banner{
                clip-path: polygon(0% 0%, 100% 0%, 100% 75%, 75% 75%, 75% 100%, 50% 75%, 0% 75%);
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        
            
         <div class="container-fluid p-0 mt-2">
             <div class="jumbotron text-black" style="background-image: url('img/i1.jpg');height: 85vh;">
                 <div class="container" style="    opacity: 0.7;
    background: khaki;
    height: 65%;
    border-radius: 36px;">
                <h3 class="display-3">Welcome To KisanMitra</h3>
                <h4> Empowering Farmers with Technology</h4>
                <p><span style="color: red;
    font-size: 24px;
    font-weight: bold;">KisanMitra</span> is a cutting-edge Java-based web application tailored to meet the
 Diverse needs of farmers and agricultural stakeholders. By integrating various
 services , including social networking, e-commerce, learning, and predictive
 analytics, KisanMitra aims to revolutionize the agricultural landscape, empowering
 farmers and fostering community engagement, knowledge sharing, and economic
 growth.
</p>
                
                <button class="btn btn-outline-dark"><span class="fa fa-sign-in"></span> Let's Start</button>
                <a href="login.jsp" class="btn btn-outline-dark"><span class="fa fa-user-circle-o fa-spin"></span> Login</a>
            </div>
                 <br><!-- comment -->
                 <br>
                 <div class="container" style="text-align: center;">
                     <a href="login.jsp" type="button" class="btn btn-primary" style="font-size: 25px;"><span class="fa fa-globe"></span> KisanBook</a>
<a href="login.jsp"  type="button" class="btn primary-back text-white" style="font-size: 25px;"><span class="fa fa-shopping-cart"></span> KisanMart</a>
<a href="login.jsp"  type="button" class="btn btn-success" style="font-size: 25px;"><span class="fa fa-graduation-cap"></span> KisanAcademy</a>
<a href="login.jsp"  type="button" class="btn btn-danger" style="font-size: 25px;"><span class="fa fa-balance-scale"></span> Crop-Yield-Prediction</a>

                 </div>
             </div>
         </div>
             
         <div class="container mt-5">
        <div class="row mb-2">
            <div class="col-md-4">
                <div class="card">
  <div class="card-body">
    <h5 class="card-title">KisanBook - Social Networking Platform:</h5>
    <p class="card-text">KisanBook serves as a dedicated social media platform for farmers &....</p>
    <a href="services.jsp" class="btn btn-primary primary-back">Read more</a>
  </div>
                    
</div>
            </div>
             <div class="col-md-4">
                <div class="card">
  <div class="card-body">
    <h5 class="card-title">KisanMart - E-commerce Marketplace:</h5>
    <p class="card-text">KisanMart provides a platform for buying and selling agricultural products....</p>
    <a href="services.jsp" class="btn btn-primary primary-back">Read more</a>
  </div>
                    
</div>
            </div>
             <div class="col-md-4">
                <div class="card">
  <div class="card-body">
    <h5 class="card-title">KisanAcademy - Learning Hub:</h5>
    <br
    <p class="card-text">KisanAcademy offers a comprehensive repository of educational resources &....</p>
    <a href="services.jsp" class="btn btn-primary primary-back">Read more</a>
  </div>
                    
</div>
            </div>
            
        </div>
        <div class="row mb-2">
            <div class="col-md-4">
                <div class="card">
  <div class="card-body">
    <h5 class="card-title">Crop Yield Prediction Service:</h5>
    <p class="card-text">Accurate yield forecasts enable farmers to make informed decisions regarding crop planning, ..</p>
    <a href="services.jsp" class="btn btn-primary primary-back">Read more</a>
  </div>
                    
</div>
            </div>
             <div class="col-md-4">
                <div class="card">
  <div class="card-body">
    <h5 class="card-title">Our Goals</h5>
    <p class="card-text"> Empowers farmers with access to information, resources, market opportunities and ...</p>
    <a href="services.jsp" class="btn btn-primary primary-back">Read more</a>
  </div>
                    
</div>
            </div>
             <div class="col-md-4">
                <div class="card">
  <div class="card-body">
    <h5 class="card-title">Our Team</h5>
    <p class="card-text">We are KisanMitra. Who are Continously Working for Farmers to Empower them and to gave a Boost to agriculture...</p>
    <a href="services.jsp" class="btn btn-primary primary-back">Read more</a>
  </div>
                    
</div>
            </div>
            
        </div>
    </div>
        
        
            <div class="container text-center">
            <img class="img-fluid" style="width: 60vh;height: 60vh;" src="img/design.png" alt=""/>
            <br>
           
        </div>
       
        <div class="d-flex justify-content-center primary-back banner" style="width: 10px auto;
    margin: 0px 15vh;
    height: 67vh;">
            
            <p class="text-white" style="font-size: 28px;
    margin: 48px;
    text-align: center;">Kisanmitra represents a paradigm shift in the agricultural sector, leveraging technology to
empower farmers, promote sustainable farming practices, and drive economic growth. By providing a
seamless integration of social networking, e-commerce, learning, and predictive analytics services,
KisanMitra serves as a catalyst for innovation, collaboration, and prosperity in the farming
community.</p>
            
        </div>
        <br>
        
          <div class="container-fluid p-0 m-0">
              <div class="jumbotron primary-background banner-background text-black" style="opacity: 0.7;text-align: center;">
            <div class="container">
                <h3 class="display-4">ThankYou , For Visiting...</h3>
                <h3> We Hope , We Helps You...</h3>
               
                <h6>@CopyRight</h6>
            </div>
                
                
                </div>
        </div>
        
        
    </body>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
