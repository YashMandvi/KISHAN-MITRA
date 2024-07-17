/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.kisanmitra.dao;

import com.kisanmitra.entities.postuser;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class postuserdao {
    private Connection con;

    public postuserdao(Connection con) {
        this.con = con;
    }
    
    public postuser getUserByid(String id){
        postuser p = null;
        try{
            String query = "select * from newuser where id=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);
           
            
            ResultSet set = pstmt.executeQuery();
            
            if(set.next()){
                
               
                
                String name = set.getString("name");
                
                String email =  set.getString("email");
                String gender = set.getString("gender");
               String dob = set.getString("dob");
               String address = set.getString("address");
               String about = set.getString("about");
                String profile = set.getString("profile");
                
                p = new postuser(name,email,gender,dob,address,about,profile);
               
                
            }
        }
        
        catch(Exception e){
            e.printStackTrace();
        }
       return p; 
    }
}
