<%-- 
    Document   : login
    Created on : 17 Mar 2024, 14:34:33
    Author     : Ashish Katare
--%>

<%@page import="com.kisanmitra.dao.postuserdao"%>
<%@page import="com.kisanmitra.entities.postuser"%>
<%@page import="com.sun.jdi.connect.spi.Connection"%>
<%@page import="com.kisanmitra.dao.userdao"%>
<%@page import="com.kisanmitra.entities.user"%>
<%@page import="java.util.List"%>
<%@page import="com.kisanmitra.entities.post"%>
<%@page import="com.kisanmitra.helper.ConnectionProvider"%>
<%@page import="com.kisanmitra.dao.postdao"%>
<%@page import="com.kisanmitra.entities.message"%>
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
        
        <div class="row" style="width: 70rem;">
            <% 
              postdao d = new postdao(ConnectionProvider.getConnection());
              List<post> po = d.gateallpost();
              for(post pp : po){
            %>
  <div class="col-sm-6 mt-4">
    <div class="card" style="background: #f9f9f9;">
      <div class="card-body">
          <%
               postuserdao da = new postuserdao(ConnectionProvider.getConnection());
              postuser rs = da.getUserByid(pp.getId());
              userdao dao = new userdao(ConnectionProvider.getConnection());
              List<postuser> ll = dao.getUserByid(pp.getId());
              for(postuser pu : ll){
          %>
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-sm"> <%=  pu.getName()%></button>
          <h5 class="card-title mt-3"><%= pp.getPtitle() %></h5>
          <p style="font-size: 20px" class="card-text"><%= pp.getPcontent() %></p>
        <br>
        <p class="card-text">Posted on <%= pp.getPdate() %></p>
       
      </div>
    </div>
  </div>
        
         
        
<div class="modal fade bd-example-modal-sm text-center" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
       
        <img src="pix/<%= pu.getProfile()%>" class="img-fluid" style="width: 200px" alt="alt"/>
      <h5 class="modal-title" id="exampleModalLabel"><%= pu.getName() %></h5>
      <div id="profile-details">
        <table class="table">
  <thead>
  </thead>
  <tbody>
    <tr>
      <th scope="row">id</th>
      <td><%= pu.getId() %></td>
      
    </tr>
    <tr>
      <th scope="row">Name</th>
      <td><%= pu.getName() %></td>
      
    </tr>
    
    
  </tbody>
</table>
        </div>
      
    </div>
  </div>
</div>
       
        <%
            
            }
            }
        %>
        </div>
        
        
    </body>
    
     <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>
