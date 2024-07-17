/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.kisanmitra.helper;

import java.sql.*;
public class ConnectionProvider {
    private static Connection con; 
    public static Connection getConnection(){
        try{
            if(con==null){
                Class.forName("com.mysql.jdbc.Driver");
                 String url = "jdbc:mysql://localhost:3306/kisanmitra";
    String user = "root";
    String pass = "rishabh";
    con = DriverManager.getConnection(url,user,pass);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        
        return con;
    }
}
