/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.kisanmitra.dao;

import com.kisanmitra.entities.categories;
import com.kisanmitra.entities.post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class postdao {
    Connection con;

    public postdao(Connection con) {
        this.con = con;
    }
    
    public ArrayList<categories> getAllcategories(){
        
        ArrayList<categories> list = new ArrayList<>();
        
        try{
        String query = "select * from categories";
        Statement st = this.con.createStatement();
        ResultSet set = st.executeQuery(query);
        while(set.next()){
            int cid = set.getInt("cid");
            String name = set.getString("name");
            String desc = set.getString("description");
            categories cat = new categories(cid,name,desc);
            list.add(cat);
        }
        
    }
        
       catch(Exception e){
            e.printStackTrace();
        
    }
        return list;
}
    
    public boolean savepost(post p){
        boolean f = false;
        
        try{
            String query = "insert into post(ptitle,pcontent,ppic,cid,id) values(?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1,p.getPtitle());
            pstmt.setString(2, p.getPcontent());
            pstmt.setString(3, p.getPpic());
            pstmt.setInt(4, p.getPcid());
            pstmt.setString(5, p.getId());
            
            pstmt.executeUpdate();
            f = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return f;
    }
    
    public List<post> gateallpost(){
        List<post> list = new ArrayList<>();
        
        try{
        String query = "select * from post";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        ResultSet set = pstmt.executeQuery();
        while(set.next()){
            int i = set.getInt("pid");
            String t = set.getString("ptitle");
            String d = set.getString("pcontent");
            String pic = set.getString("ppic");
            Timestamp date = set.getTimestamp("pdate");
            int ci = set.getInt("cid");
            String id = set.getString("id");
            post p = new post(i,t,d,pic,date,ci,id);
            list.add(p);
            
        }
        } 
        catch(Exception e){
            e.printStackTrace();
        }
        
        return list;
    }
    
}

