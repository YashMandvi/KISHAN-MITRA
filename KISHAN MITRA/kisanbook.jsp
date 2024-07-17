<%-- 
    Document   : kisanbook
    Created on : 22 Mar 2024, 14:30:46
    Author     : Ashish Katare
--%>

<%@page import="java.util.List"%>
<%@page import="com.kisanmitra.entities.post"%>
<%@page import="com.kisanmitra.entities.categories"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="com.kisanmitra.helper.ConnectionProvider"%>
<%@page import="com.kisanmitra.dao.postdao"%>
<%@page import="com.kisanmitra.entities.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp"%>
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
        <title>KisanBook</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/newcss.css" rel="stylesheet" type="text/css"/>
        <style>
            .list-group-item.active{
                background-color: #673ab7;
            }
        </style>
    </head>
    <body>
             <nav class="navbar navbar-expand-lg navbar-light primary-background">
            <a class="navbar-brand text-white" href="index.jsp"> <span class="fa fa-globe"></span> KisanBook</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link text-white" href="#"><span class="fa fa-home"></span> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link text-white" href="#"><span class="fa fa-group"></span> Friends</a>
      </li>
       <li class="nav-item">
           <a class="nav-link text-white" href="#"><span class="fa fa-envelope"></span> Messages</a>
      </li>
       <li class="nav-item">
           <a class="nav-link text-white" href="#"><span class="fa fa-toggle-right"></span> Videos</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="fa fa-spinner"></span>
                 Sevices
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#"><span class="fa fa-bell"></span> Notifications</a>
            <a class="dropdown-item" href="#"><span class="fa fa-arrows"></span> Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#"><span class="fa fa-gear"></span> Settings</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
         <a class="nav-link text-white" href="" data-toggle="modal" data-target="#exampleModal"><span class="fa fa-user-circle-o"></span><%=  u.getName()%></a>
       <a class="nav-link text-white" href="logoutservlet"><span class="fa fa-sign-out"></span> Logout</a>
    </form>
  </div>
</nav>
       
       <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white">
        <h5 class="modal-title" id="exampleModalLabel">KisanBook</h5>
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
      <td><input type="text" id="n" autocomplete="name" name="name" value="<%= u.getName()%>"></td>
      
    </tr>
      
    <tr>
      <th scope="row">email</th>
      <td><input type="email" autocomplete="email" name="email" value="<%= u.getEmail()%>"></td>
      
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
      <td><input type="text" autocomplete="address" name="address" value="<%= u.getAddress()%>"></td>
      
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
     
      <div class="container-fluid">
       <img src="pix/<%= u.getProfile()%>" class="img-fluid mt-2" style="width: 100px" alt="alt"/>
       <p class="btn" data-toggle="modal" data-target="#exampleModalCenter" style="background: gainsboro;
    width: 20rem;
    margin: -76px 9px;
    height: 57px;
    text-align: center;
    align-items: center;
    border-radius: 54px;
    font-size: 22px;
    font-style: italic;">Write here something...</p>
       
       <!-- Button trigger modal -->
       <button type="button" class="btn primary-background text-white" data-toggle="modal" data-target="#exampleModalCenter" style="
    height: 45px; width: 5rem;border-radius: 20px;
"><span class="fa fa-plus-square"></span>
  Post
</button>
         
       <input class=" mr-sm-2" id="search" type="search" placeholder="Search" aria-label="Search" style="width: 17rem;
    height: 45px;
    border-radius: 15px;
    margin: 0px 37rem;
    padding: 5px;">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>

       
       

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white">
          <h5 class="modal-title" name="head" id="exampleModalLongTitle"><span class="fa fa-edit"> </span> Create post</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
        <form id="add-post-form" action="addpostservlet" method="POST">
      <div class="modal-body">
          <input type="text" required name="title" id="tt" placeholder="Title" style="border-radius: 8px;
                 padding: 4px;">&nbsp;
          
          <span class="fa fa-tags" style="font-size: 22px;">&nbsp;</span><select name="cid">
              
          
          <%
              postdao dao = new postdao(ConnectionProvider.getConnection());
              ArrayList<categories> list = dao.getAllcategories();
              for(categories c : list){
             %>
             <option name="cid" value="<%= c.getCid() %>"><%= c.getName()%> </option>
          
          <%
              }
              %>
              </select>
          <br>
          <textarea class="mt-3" required name="desc" placeholder="Discription" style="width: 29rem;
    height: 11rem;
    border-radius: 16px;
    padding: 8px;"></textarea>
          
           <br>
           <span class=" fa fa-file-image-o" style="font-size: 22px">  &nbsp;</span><input class="mt-3" name="pic" type="file" id="pp" accept="image/png,image/jpeg" multiple="multiple" style="font-size: 18px;">
           <br>
           <span class="fa fa-map-marker" style="font-size: 22px">&nbsp;</span><input class="mt-3" id="location" type="text" placeholder="Location" style="    width: 127px;">
           <span>&nbsp;</span>
           <span class="fa fa-music" style="font-size: 22px">&nbsp;</span><input class="mt-3" id="music" type="text" placeholder="Music" style="width: 127px;">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="fa fa-minus"> Back</button>
        <button type="submit" class="btn btn-primary"><span class="fa fa-plus-square"></span> Post</button>
      </div>
        </form>
    </div>
  </div>
</div>
       
       
</div>
       
       <div style="width: 36rem;
    padding: 27px;">
      <div class="row">
  <div class="col-4">
    <div class="list-group" id="list-tab" role="tablist">
        <%
           for(categories ca : list){
        %>
      <a class="list-group-item list-group-item-action
         "><%= ca.getName() %></a>
       <%
          }
          %>
    </div>
  </div>
  <div class="col-8">
    <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
            <div class="container text-center" id="loader">
                <i class="fa fa-refresh fa-4x fa-spin"></i>
                <h3>Loading...</h3>
            </div>
            
        </div>
      <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">...</div>
      <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>
      <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>
    </div>
  </div>
</div>
       </div>
       
         
    </body>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
<!<!-- now add post js -->
<script>
    $(document).ready(function (e){
        $("#add-post-form").on("submit",function (event){
            event.preventDefault();
            console.log("submitted")
            
            let form = new FormData(this);
            
            $.ajax({
                url: "addpostservlet",
                type: 'POST',
                data: form,
                success: function(data,textStatus,jqXHR){
                    console.log(data);
                    if(data.trim()=='done'){
                        swal("Good job!", "Saved successfully", "success");
                    }
                    else{
                        swal("Error!", "something went wrong", "error");
                    }
                },
                
                error : function(jqXHR ,textStatus, errorThrown){
                    
                },
                processData: false,
                contentType: false
            })
        })
    })
</script>
<script>
    $(document).ready(function(e){
       $.ajax({
           url:"load_post.jsp",
           success : function(data,textStatus,jqXHR){
               console.log(data);
               $("#loader").hide();
               $('#list-home').html(data)
           }
       }) 
    })
    
</script>
</html>
