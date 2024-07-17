<%-- 
    Document   : signup
    Created on : 17 Mar 2024, 14:50:06
    Author     : Ashish Katare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
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
        
        <main class=" primary-back banner-background mt-2" style="height: 150vh">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header primary-back text-white text-center">
                            <span class="fa fa-user-plus fa-2x"></span>
                            <p>Register Here</p>
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="registerservlet" method="POST" name="register">
  <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <input name="name"  type="name" class="form-control" autocomplete="given-name" id="name" aria-describedby="emailHelp" placeholder="Enter name">
    <small id="namehelpl" class="form-text text-muted">We'll never share your details with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input name="email" required type="email" autocomplete="given-name" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group" >
    <label for="example11">Select Gender</label>
    <br>
    <input type="radio" name="gender" id="example11" value="male">Male
    <input type="radio" name="gender" id="example12" value="female"> Female
  </div>
                                <div class="form-group">
    <label for="exampleInputEmail1">Date of Birth</label>
    <input name="dob" required type="date" class="form-control" id="dob" aria-describedby="emailHelp" >
    <small id="dobHelp" class="form-text text-muted">We'll never share your details with anyone else.</small>
  </div>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Address</label>
    <input name="address" type="text" class="form-control" autocomplete="given-name" id="address" aria-describedby="emailHelp" placeholder="village district state";>
    <small id="addressHelp" class="form-text text-muted">We'll never share your details with anyone else.</small>
  </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">About yourself</label>
    <input name="about" type="text" class="form-control" id="about" aria-describedby="emailHelp" placeholder="Enter here" style="height:14vh";>
    <small id="aboutHelp" class="form-text text-muted">We'll never share your details with anyone else.</small>
  </div>
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Set a Password</label>
    <input name="pass" required type="password" class="form-control" id="examplel111" aria-describedby="emailHelp" placeholder="Enter here";>
    <small id="passHelp" class="form-text text-muted">create a secure and robust password</small>
  </div>
  <div class="form-check">
      <input name="check" type="checkbox" class="form-check-input" id="check">
    <label class="form-check-label" for="check">Check me in</label>
  </div>
                                <div id="loader" class="container text-center " style="display: none;" >
                                <span class="fa fa-refresh fa-spin fa-2x"></span>
                                <h4>please wait...</h4>
                                </div>
                                <br>
                                <button id="submit-btn" type="submit" class="btn btn-primary">submit</button>
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<script>
    
    $(document).ready(function(){
        console.log("loaded.....");
       
        $('#reg-form').on('submit',function(event){
        
        var email = document.getElementById("email").value;
        var regex = /\S+@\S+\.\S+/;
        if(!regex.test(email)){
             alert("please add a valid email");
        window.location = "signup.jsp";
        }
        
        var name = document.getElementById("name").value;
        var regex = /^[a-zA-Z\s]*$/;
        if(!regex.test(name)){
             alert("please enter a valid name");
        window.location = "signup.jsp";
        }
        
        var dob = new Date(document.getElementById("dob").value);
        var minDate = new Date('1950-01-01');
        var maxDate = new Date();
        if(dob < minDate || dob > maxDate){
             alert("please add a valid Date of birth not below than 1950");
        window.location = "signup.jsp";
        }
        
        var about = document.getElementById("about").value.trim();
        if(about == ''){
             alert("please provide information about your self");
        window.location = "signup.jsp";
        }
        
        if(check.checked!=1){   
        alert("please check the check box");
        window.location = "signup.jsp";
        }
        event.preventDefault();
        
            let form = new FormData(this);
            
            $("#submit-btn").hide();
            $("#loader").show();
            
            $.ajax({
                url: "registerservlet",
                type: 'POST' ,
                data: form,
                success: function (data, textStatus, jqXHR){
                    console.log(data);
                    
                     $("#submit-btn").show();
            $("#loader").hide();
            
            swal("registered succesfully.....")
                       .then((value) => {
                      window.location = "login.jsp";
                     });
                     
                },
                error: function(jqXHR, textStatus , errorThrown){
                    console.log(jqXHR);
                    
                     $("#submit-btn").show();
            $("#loader").hide();
            swal("something went wrong.........");
                    
                },
                processData: false,
                contentType: false
            });
         
        });
    });
    
</script>

</html>
