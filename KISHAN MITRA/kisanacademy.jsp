<%-- 
    Document   : kisanacademy
    Created on : 2 Apr 2024, 09:34:38
    Author     : Ashish Katare
--%>

<%@page import="com.kisanmitra.entities.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    user u = (user) session.getAttribute("currentUser");
    if(u==null){
   response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KisanAcademy</title>
           <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/cs.css" rel="stylesheet" type="text/css"/>
        <style>
            .banner-pri{
            clip-path: polygon(0% 15%, 15% 15%, 15% 0%, 85% 0%, 85% 15%, 100% 15%, 100% 85%, 85% 85%, 85% 100%, 15% 100%, 15% 85%, 0% 85%);
            }
        </style>
    </head>
    <body>
        <div class="text-center text-white" style="background: #415ca7;">
                <p >may initiated by ministry of Education(Gov. of India) in future</p>
        </div>
       <nav class="navbar navbar-expand-lg">
         <a class="navbar-brand" href="kisanacademy.jsp"><h1 style="color: #415ca7;"><span class="fa fa-graduation-cap"></span> KisanAcademy</h1></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

         <div class="collapse navbar-collapse ml-5" id="navbarSupportedContent" style="font-size: 20px;">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" style="color: black;"><span class="fa fa-info-circle"></span> About KisanAcademy <span class="sr-only">(current)</span></a>
      </li>
     
       <li class="nav-item">
           <a class="nav-link " style="color: black;"href="#"><span class="fa fa-envelope"></span> Local Chapters</a>
      </li>
       <li class="nav-item">
           <a class="nav-link " style="color: black;" href="#"><span class="fa fa-toggle-right"></span> FAQ</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle " style="color: black;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="fa fa-spinner"></span>
                 Announcements
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#"><span class="fa fa-bell"></span> Notifications</a>
            <a class="dropdown-item" href="#"><span class="fa fa-arrows"></span> Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#"><span class="fa fa-gear"></span> Settings</a>
        </div>
      </li>
    </ul>
      <form class="form-inline my-2 my-lg-0" style="background: #415ca7;border-radius: 10px;">
         <a class="nav-link text-white" href="" data-toggle="modal" data-target="#exampleModal"><span class="fa fa-user-circle-o"></span><%=  u.getName()%></a>
       <a class="nav-link text-white" href="logoutservlet"><span class="fa fa-sign-out"></span> Logout</a>
    </form>
  </div>
</nav>
       
       <div class="container-fluid p-0 mt-2">
             <div class="jumbotron text-black text-center" style="background:#415ca7;height:50vh;">
                 
                 <div class="container text-center">         
       <div class="row mb-2">
            <div class="col-md-3">
              
   <span class="	fa fa-bank" style="font-size: 40px;color: orange;"></span>
                 <p class="text-white">1</p>
                 <p class="text-white">Partening Institutions</p>
                    
</div>
           <div class="col-md-3">
              
   <span class="	fa fa-book" style="font-size: 40px;color: yellow;"></span>
                 <p class="text-white">1</p>
                 <p class="text-white">Completed Course</p>
                    
</div>
           <div class="col-md-3">
              
   <span class="	fa fa-desktop" style="font-size: 40px;color: red;"></span>
                 <p class="text-white">1</p>
                 <p class="text-white">Farmers Enrolled</p>
                    
</div>
            <div class="col-md-3">
              
   <span class="	fa fa-graduation-cap" style="font-size: 40px;color: greenyellow;"></span>
                 <p class="text-white">1</p>
                 <p class="text-white">Certifications Completed</p>
                    
</div>
            </div>
                 </div>
             
            
                 <div class="container" style="margin-top: 65px;">
       <div class="row mb-2">
            <div class="col-md-4">
                <div class="card" style="background:lightblue;">
  <div class="card-body">
      <h5 class="card-title" style="background:gold;border-radius: 10px;">Gov. Schemes:</h5>
    <p class="card-text">Here, are the all Beneficiary GOV. Schemes which are run by Gov. to Empower Farmers and for ....</p>
    <a href="#" class="btn btn-primary primary-back2"><span class="fa fa-sign-in"></span> Let's Explore</a>
  </div>
                    
</div>
            </div>
             <div class="col-md-4">
                <div class="card" style="background:lightblue;">
  <div class="card-body">
    <h5 class="card-title" style="background:lightpink;border-radius: 10px;"  >Ministry for Farmers:</h5>
    <p class="card-text"> Let's Know all About the Farming Ministry and other Government Bodies those work for Farmers....</p>
    <a href="services.jsp" class="btn btn-primary primary-back2"><span class="fa fa-info-circle"></span> Know more</a>
  </div>
                    
</div>
            </div>
             <div class="col-md-4">
                <div class="card" style="background:lightblue;">
  <div class="card-body">
    <h5 class="card-title" style="background:greenyellow;border-radius: 10px">Kisan HelpLine:</h5>
    <h3 class="card-text">1800-180-1551</h3>
    <p>And official websites for help and Support...</p>
    <a href="services.jsp" class="btn btn-primary primary-back2">Read more</a>
  </div>
                    
</div>
            </div>
            
        </div>
    </div>
         </div>
            </div>
       
       <div class="container text-center  banner-pri " style= "height: 10rem;width: 19rem;margin-top: 7rem;">
           <span class="fa fa-graduation-cap mt-3" style="font-size: 50px;"></span>
           <br>
           
            <a href="" class="btn btn-primary primary-back2 mt-2">Local Chapters</a>
       </div>
            
                 <div class="container" style="margin-top: 10px;">
       <div class="row mb-2">
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="img/watermm.jpg" alt="Card image cap">
  <div class="card-body">
    <h2 class="card-title">Water Management System:</h2>
    <p class="card-text">Accurate yield forecasts enable farmers to make informed decisions regarding crop planning, ..</p>
    <a href="services.jsp" class="btn btn-primary primary-back2">Read more</a>
  </div>
                    
</div>
            </div>
             <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="img/fert.jpg" alt="Card image cap">
  <div class="card-body">
    <h2 class="card-title">Uses and Selection of Fertilizers:</h2>
    <p class="card-text"> Empowers farmers with access to information, resources, market opportunities and ...</p>
    <a href="services.jsp" class="btn btn-primary primary-back2">Read more</a>
  </div>
                    
</div>
            </div>
             <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="img/seed.jpg" alt="Card image cap" style="height: 14rem;">
  <div class="card-body">
    <h2 class="card-title">Selection of High Yield Seeds:</h2>
    <p class="card-text">We are KisanMitra. Who are Continously Working for Farmers to Empower them and to gave a Boost to agriculture...</p>
    <a href="services.jsp" class="btn btn-primary primary-back2">Read more</a>
  </div>

</div>
            </div>
            
        </div>
    </div>
       
       <div class="container" style="margin-top: 80px;">
       <div class="row mb-2">
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="img/soil.jpg" alt="Card image cap">
  <div class="card-body">
    <h2 class="card-title">Soil Management System:</h2>
    <p class="card-text">Accurate yield forecasts enable farmers to make informed decisions regarding crop planning, ..</p>
    <a href="services.jsp" class="btn btn-primary primary-back2">Read more</a>
  </div>
                    
</div>
            </div>
             <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="img/water av.jpg" alt="Card image cap">
  <div class="card-body">
    <h2 class="card-title">Checks for Water availability?</h2>
    <p class="card-text"> Empowers farmers with access to information, resources, market opportunities and ...</p>
    <a href="services.jsp" class="btn btn-primary primary-back2">Read more</a>
  </div>
                    
</div>
            </div>
             <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="img/anay.jpg" alt="Card image cap" style="height: 14rem;">
  <div class="card-body">
    <h2 class="card-title">Crop Analysis and Checks:</h2>
    <p class="card-text">We are KisanMitra. Who are Continously Working for Farmers to Empower them and to gave a Boost to agriculture...</p>
    <a href="services.jsp" class="btn btn-primary primary-back2">Read more</a>
  </div>

</div>
            </div>
            
        </div>
    </div>
       
       <div class="container text-center mt-5 banner-pri " style="background: #415ca7; height: 10rem;width: 19rem;">
           <span class="fa fa-graduation-cap mt-3 text-white" style="font-size: 50px;"></span>
           <br>
           
            <a href="services.jsp" class="btn btn-primary primary-back2 mt-2">view Course Catalog</a>
       </div>
       
        <div class="container-fluid p-0 mt-3">
              <div class="jumbotron primary-background banner-background text-black" style="opacity: 0.7;text-align: center;">
            <div class="container">
                <h3 class="display-4">ThankYou , For Visiting...</h3>
                <h3> We Hope , We Helps You...</h3>
               
                <h6>@CopyRight</h6>
            </div>
                
                
                </div>
        </div>
       
        <div class="text-center text-white" style="background: #415ca7;">
                <p >Pricay Policy | Terms of Use | Honor Code</p>
        </div>
        <div class="text-center text-white" style="background: #415ca7;">
                <p >@policy reserved KisanAcademy...</p>
        </div>
       
       
         
           
       
        
      
    
    </body>
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>
