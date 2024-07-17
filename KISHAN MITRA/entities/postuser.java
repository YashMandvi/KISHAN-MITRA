/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.kisanmitra.entities;


public class postuser {
    private String id;
    private String name;
    private String email;
    private String gender;
    private String dob;
    private String address;
    private String about;
    private String pass;
    private String profile;

    public postuser(String name, String email, String gender, String dob, String address, String about, String profile) {
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.dob = dob;
        this.address = address;
        this.about = about;
        this.profile = profile;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getGender() {
        return gender;
    }

    public String getDob() {
        return dob;
    }

    public String getAddress() {
        return address;
    }

    public String getAbout() {
        return about;
    }

    public String getPass() {
        return pass;
    }

    public String getProfile() {
        return profile;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
    
    
}
