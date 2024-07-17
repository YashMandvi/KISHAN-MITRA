<%-- 
    Document   : error
    Created on : 20 Mar 2024, 16:30:15
    Author     : Ashish Katare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 52% 100%, 21% 94%, 0 100%, 0 0);
            }
        </style>
    </head>
    <body>
        <div class="container text-center">
            <img class="img-fluid" style="width: 60vh;height: 60vh;" src="img/404-error-3060993_1920.png" alt=""/>
            <br>
            <h3 class="display-3">   Something went Wrong.......</h3>
            <%= exception%>
            <br>
            <br>
            <a href="kisanmitra.jsp" class="btn btn-primary primary-background">Home</a>
            
        </div>
    </body>
</html>