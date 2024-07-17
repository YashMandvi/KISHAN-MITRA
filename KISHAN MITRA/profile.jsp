<%-- 
    Document   : profile.jsp
    Created on : 20 Mar 2024, 16:29:52
    Author     : Ashish Katare
--%>

<%@page import="com.kisanmitra.entities.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp"%>
<% user u = (user) session.getAttribute("currentUser");
   if(u==null){
   response.sendRedirect("login.jsp");
    }%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= u.getName() %></title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/cs.css" rel="stylesheet" type="text/css"/>
        
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 52% 100%, 21% 94%, 0 100%, 0 0);
            }
        </style>
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
     
      <li class="nav-item">
        <a class="nav-link disabled text-white ml-2" href="" data-toggle="modal" data-target="#exampleModal" ><span class="fa fa-user-circle-o"></span> <%= u.getName() %> </a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled text-white ml-2" href="logoutservlet" ><span class="fa fa-user-circle-o"></span> logout </a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
    
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
      
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-back text-white">
        <h5 class="modal-title" id="exampleModalLabel">KisanMitra</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
        <div class="container text-center" >
      <div class="modal-body">
          <img src="pix/<%= u.getProfile()%>" class="img-fluid" style="width: 200px" alt="alt"/>
        <h5 class="modal-title" id="exampleModalLabel"><%= u.getName() %></h5>
        
        <div id="profile-details">
        <table class="table">
  <thead>
  </thead>
  <tbody>
    <tr>
      <th scope="row">id</th>
      <td><%= u.getId() %></td>
      
    </tr>
    <tr>
      <th scope="row">Name</th>
      <td><%= u.getName() %></td>
      
    </tr>
    <tr>
      <th scope="row">email</th>
      <td><%= u.getEmail() %></td>
      
    </tr>
    <tr>
      <th scope="row">gender</th>
      <td><%= u.getGender() %></td>
     
    </tr>
    <tr>
      <th scope="row">dob</th>
      <td><%= u.getDob() %></td>
      
    </tr>
    <tr>
      <th scope="row">address</th>
      <td><%= u.getAddress() %></td>
      
    </tr>
    <tr>
      <th scope="row">about</th>
      <td><%= u.getAbout() %></td>
      
    </tr>
    
  </tbody>
</table>
        </div>
      
      <div id="profile-edit" style="display: none;">
          <h3>please edit carefully</h3>
          <form action="editservlet" method="POST" enctype="multipart/form-data">
          <table class="table">
  <thead>
  </thead>
  <tbody>
  
      <tr>
      <th scope="row">Name</th>
      <td><input type="text" name="name" value="<%= u.getName()%>"></td>
      
    </tr>
      
    <tr>
      <th scope="row">email</th>
      <td><input type="email" name="email" value="<%= u.getEmail()%>"></td>
      
    </tr>
    
    <tr>
      <th scope="row">gender</th>
      <td><%= u.getGender().toUpperCase() %></td>
     
    </tr>
    
     <tr>
      <th scope="row">dob</th>
       <td><%= u.getDob() %></td>
      
    </tr>
    
     <tr>
      <th scope="row">address</th>
      <td><input type="text" name="address" value="<%= u.getAddress()%>"></td>
      
    </tr>
    
     <tr>
      <th scope="row">about</th>
      <td><input type="text" name="about" value="<%= u.getAbout() %>"></td>
      
    </tr>
    
    
     <tr>
      <th scope="row">password</th>
      <td><input type="password" name="pass" value="<%= u.getPass() %>"></td>
      
    </tr>
    
    
    
    <tr>
      <th scope="row">new profile pic</th>
      <td><input type="file" name="image" class="form-control"></td>
      
    </tr>
    
    
    
  </tbody>
</table>
      <div class="container"><!-- comment -->
          <button class="btn btn-outline-primary">save</button>
      </div>
          </form>
      </div>
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit-btn" type="button" class="btn btn-primary">edit</button>
      </div>
    </div>
    </div>
  </div>
</div>
      
      <%@include file="kisanwelcome.html" %>
      
    </body>
    
         <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
     $(document).ready(function(){
        let editstatus = false;
        $('#edit-btn').click(function(){
            if(editstatus==false){
                $("#profile-details").hide();
            $("#profile-edit").show();
            editstatus = true;
            $(this).text("back");
            }
            else{
                $("#profile-details").show();
            $("#profile-edit").hide();
            editstatus = false;
            $(this).text("edit");
            }
            
        });
    });
</script>
</html>
