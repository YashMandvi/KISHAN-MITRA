<%-- 
    Document   : login
    Created on : 17 Mar 2024, 14:34:33
    Author     : Ashish Katare
--%>

<%@page import="com.kisanmitra.entities.message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login page</title>
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
        <%@include file="navbar.jsp" %>
       
        <main class=" primary-back banner-background mt-2" style="height: 70vh">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header primary-back text-white text-center">
                            <span class="fa fa-user-plus fa-2x"></span>
                            <p>Login Here</p>
                        </div>
                        <%
                                message m = (message)session.getAttribute("msg");
                                if(m!=null){
                                %>
                            <div class="alert alert-primary" role="alert">
                          <%= m.getContent() %>
</div>
                                <%
                                    session.removeAttribute("msg");
                                    }
                                %>
                        <div class="card-body">
        
                            <form action="loginpageservlet">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" type="email" class="form-control" required id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">Please enter same email via which you had signed up</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="pass" required class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
            <button type="submit" href="#" class="btn btn-primary">Submit</button>
    <a href="signup.jsp" type="submit" class="btn btn-primary">SignUp</a>
</form>
                            </div>
                        
                    </div>
                </div>
            </div>
        </main>
    </body>
    
    
     <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>
