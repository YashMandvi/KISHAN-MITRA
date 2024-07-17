/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.kisanmitra.servlet;

import com.kisanmitra.dao.userdao;
import com.kisanmitra.entities.user;
import com.kisanmitra.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 *
 * @author Ashish Katare
 */
 @MultipartConfig
public class registerservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
             Random rando = new Random();
            int i = rando.nextInt()%900 + 1000;
            String j = "" + i;
           
            
           
            String check = request.getParameter("check");
            if(check==null){
                out.print("please check the checkbox");
            }
            else{
                 String name = request.getParameter("name");
                 
                 char c = name.charAt(0);
            char d = name.charAt(name.length()-1);
            
               String Id = c + j + d;
            
                String email = request.getParameter("email");
                String gender = request.getParameter("gender");
                String dob = request.getParameter("dob");
                String address = request.getParameter("address");
                String about = request.getParameter("about");
                String pass = request.getParameter("pass");
                
                user u = new user(Id,name,email,gender,dob,address,about,pass);
                
                
                userdao dao = new userdao(ConnectionProvider.getConnection());
                
                if(dao.saveuser(u)){
                    out.print("done");
                }
                else{
                    out.print("error");
                }
                
                
                
            }
            
            
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
