/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.kisanmitra.entities;

import java.sql.*;

public class post {
    private int pid;
    private String ptitle;
    private String pcontent;
    private String ppic;
    private Timestamp pdate;
    private int pcid;
    private String id;

    public post(int pid, String ptitle, String pcontent, String ppic, Timestamp pdate, int pcid,String id) {
        this.pid = pid;
        this.ptitle = ptitle;
        this.pcontent = pcontent;
        this.ppic = ppic;
        this.pdate = pdate;
        this.pcid = pcid;
        this.id = id;
    }

    public post(String ptitle, String pcontent, String ppic, Timestamp pdate, int pcid) {
        this.ptitle = ptitle;
        this.pcontent = pcontent;
        this.ppic = ppic;
        this.pdate = pdate;
        this.pcid = pcid;
    }

    public post(int pcid,String ptitle, String pcontent, String ppic, String id) {
        this.id = id;
        this.pcid = pcid;
        this.ptitle = ptitle;
        this.pcontent = pcontent;
        this.ppic = ppic;
    }
    
    
 
    
    
    public int getPid() {
        return pid;
    }

    public String getPtitle() {
        return ptitle;
    }

    public String getPcontent() {
        return pcontent;
    }

    public String getPpic() {
        return ppic;
    }

    public Timestamp getPdate() {
        return pdate;
    }

    public int getPcid() {
        return pcid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public void setPcontent(String pcontent) {
        this.pcontent = pcontent;
    }

    public void setPpic(String ppic) {
        this.ppic = ppic;
    }

    public void setPdate(Timestamp pdate) {
        this.pdate = pdate;
    }

    public void setPcid(int pcid) {
        this.pcid = pcid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    
    
}
