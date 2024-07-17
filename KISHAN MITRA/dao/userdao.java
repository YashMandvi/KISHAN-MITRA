/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.kisanmitra.dao;
import com.kisanmitra.entities.postuser;
import com.kisanmitra.entities.user;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class userdao {
    private Connection con;

    public userdao(Connection con) {
        this.con = con;
    }
    
    public boolean saveuser(user u){
        boolean f = false;
        try{
            String query = "insert into newuser(id,name,email,gender,dob,address,about,pass) values(?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, u.getId());
            pstmt.setString(2, u.getName());
            pstmt.setString(3, u.getEmail());
            pstmt.setString(4, u.getGender());
            pstmt.setString(5, u.getDob());
            pstmt.setString(6, u.getAddress());
            pstmt.setString(7, u.getAbout());
            pstmt.setString(8, u.getPass());
            
             pstmt.executeUpdate();
            f=true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    public user getUserByEmailandPass(String email , String pass){
        user u = null;
        try{
            String query = "select * from newuser where email=? and pass=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, pass);
            
            ResultSet set = pstmt.executeQuery();
            
            if(set.next()){
                u = new user();
                
                String id = set.getString("id");
                u.setId(id);
                
                String name = set.getString("name");
                u.setName(name);
                
                u.setEmail(set.getString("email"));
                u.setGender(set.getString("gender"));
                u.setDob(set.getString("dob"));
                u.setAddress(set.getString("address"));
                u.setAbout(set.getString("about"));
                u.setPass(set.getString("pass"));
                u.setProfile(set.getString("profile"));
                
            }
        }
        
        catch(Exception e){
            e.printStackTrace();
        }
       return u; 
    }
    
    public boolean updateuser(user u){
        boolean f = false;
        try{
            String query = "update newuser set name=? , email=? , address=? , about=? , pass=? , profile=? where id=?";
            PreparedStatement p = con.prepareStatement(query);
            p.setString(1, u.getName());
            p.setString(2, u.getEmail());
            p.setString(3, u.getAddress());
            p.setString(4, u.getAbout());
            p.setString(5, u.getPass());
            p.setString(6, u.getProfile());
            p.setString(7,u.getId());
            
            p.executeUpdate();
            f = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
    
        
        
        
    return f;
    }
    
    
    public List<postuser> getUserByid(String id){
        List<postuser> list = new ArrayList<>();
        try{
            String query = "select * from newuser where id=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);
           
            
            ResultSet set = pstmt.executeQuery();
            
            while(set.next()){
                
               
                
                String name = set.getString("name");
                
                String email =  set.getString("email");
                String gender = set.getString("gender");
               String dob = set.getString("dob");
               String address = set.getString("address");
               String about = set.getString("about");
                String profile = set.getString("profile");
                
                postuser p = new postuser(name,email,gender,dob,address,about,profile);
                list.add(p);
                
            }
        }
        
        catch(Exception e){
            e.printStackTrace();
        }
       return list; 
    }
    
}
