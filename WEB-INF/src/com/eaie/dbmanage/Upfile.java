package com.eaie.dbmanage;

import java.util.Date;


/**
 * Upfile generated by MyEclipse - Hibernate Tools
 */

public class Upfile  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Integer bigclassid;
     private String filename;
     private String fileurl;
     private String filesize;
     private String part;
     private String teacher;
     private Integer downnum;
     private Date uptime;


    // Constructors

    /** default constructor */
    public Upfile() {
    }

    
    /** full constructor */
    public Upfile(Integer bigclassid, String filename, String fileurl, String filesize, String part, String teacher, Integer downnum, Date uptime) {
        this.bigclassid = bigclassid;
        this.filename = filename;
        this.fileurl = fileurl;
        this.filesize = filesize;
        this.part = part;
        this.teacher = teacher;
        this.downnum = downnum;
        this.uptime = uptime;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBigclassid() {
        return this.bigclassid;
    }
    
    public void setBigclassid(Integer bigclassid) {
        this.bigclassid = bigclassid;
    }

    public String getFilename() {
        return this.filename;
    }
    
    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFileurl() {
        return this.fileurl;
    }
    
    public void setFileurl(String fileurl) {
        this.fileurl = fileurl;
    }

    public String getFilesize() {
        return this.filesize;
    }
    
    public void setFilesize(String filesize) {
        this.filesize = filesize;
    }

    public String getPart() {
        return this.part;
    }
    
    public void setPart(String part) {
        this.part = part;
    }

    public String getTeacher() {
        return this.teacher;
    }
    
    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public Integer getDownnum() {
        return this.downnum;
    }
    
    public void setDownnum(Integer downnum) {
        this.downnum = downnum;
    }

    public Date getUptime() {
        return this.uptime;
    }
    
    public void setUptime(Date uptime) {
        this.uptime = uptime;
    }
   








}