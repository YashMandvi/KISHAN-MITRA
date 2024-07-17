<%-- 
    Document   : navbar
    Created on : 17 Mar 2024, 08:32:07
    Author     : Ashish Katare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/cs.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
     <nav class="navbar navbar-expand-lg">
         <a class="navbar-brand" href="kisanmitra.jsp"><h1 class="text-success"><span class="fa fa-handshake-o"></span> Kisanmitra</h1></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
       <nav class="navbar navbar-expand-lg navbar-light primary-back text-white">

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mx-auto" style="font-size: 20px">
      <li class="nav-item active">
          <a class="nav-link text-white" href="kisanmitra.jsp"><span class="fa fa-home"></span> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link text-white ml-2" href="aboutus.jsp"><span class="fa fa-info-circle"></span> About us</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white ml-2" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             <span class="fa fa-spinner"></span>
            Services
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="services.jsp"><span class="fa fa-globe"></span> Kisanbook</a>
            <a class="dropdown-item" href="services.jsp"><span class="fa fa-shopping-cart"></span> KisanMart</a>
            <a class="dropdown-item" href="services.jsp"><span class="fa fa-graduation-cap"></span> KisanAcademy</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="services.jsp"><span class="fa fa-balance-scale"></span> Crop-Yield-Prediction</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled text-white ml-2" href="login.jsp"><span class="fa fa-user-plus"></span> Login</a>
      </li>
    </ul>
   
  </div>
</nav>
    </body>
</html>
