package com.eaie.dbmanage;

import java.util.Date;


/**
 * News generated by MyEclipse - Hibernate Tools
 */

public class News  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Integer bigclassid;
     private Integer smallclassid;
     private String smallclass;
     private String title;
     private String content;
     private String teacher;
     private String part;
     private String imageurl;
     private String filename;
     private String fileurl;
     private Byte istop;
     private Byte isok;
     private Byte ispicnews;
     private Integer hits;
     private Date pubtime;


    // Constructors

    /** default constructor */
    public News() {
    }

    
    /** full constructor */
    public News(Integer bigclassid, Integer smallclassid, String smallclass, String title, String content, String teacher, String part, String imageurl, String filename, String fileurl, Byte istop, Byte isok, Byte ispicnews, Integer hits, Date pubtime) {
        this.bigclassid = bigclassid;
        this.smallclassid = smallclassid;
        this.smallclass = smallclass;
        this.title = title;
        this.content = content;
        this.teacher = teacher;
        this.part = part;
        this.imageurl = imageurl;
        this.filename = filename;
        this.fileurl = fileurl;
        this.istop = istop;
        this.isok = isok;
        this.ispicnews = ispicnews;
        this.hits = hits;
        this.pubtime = pubtime;
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

    public Integer getSmallclassid() {
        return this.smallclassid;
    }
    
    public void setSmallclassid(Integer smallclassid) {
        this.smallclassid = smallclassid;
    }

    public String getSmallclass() {
        return this.smallclass;
    }
    
    public void setSmallclass(String smallclass) {
        this.smallclass = smallclass;
    }

    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }

    public String getTeacher() {
        return this.teacher;
    }
    
    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getPart() {
        return this.part;
    }
    
    public void setPart(String part) {
        this.part = part;
    }

    public String getImageurl() {
        return this.imageurl;
    }
    
    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
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

    public Byte getIstop() {
        return this.istop;
    }
    
    public void setIstop(Byte istop) {
        this.istop = istop;
    }

    public Byte getIsok() {
        return this.isok;
    }
    
    public void setIsok(Byte isok) {
        this.isok = isok;
    }

    public Byte getIspicnews() {
        return this.ispicnews;
    }
    
    public void setIspicnews(Byte ispicnews) {
        this.ispicnews = ispicnews;
    }

    public Integer getHits() {
        return this.hits;
    }
    
    public void setHits(Integer hits) {
        this.hits = hits;
    }

    public Date getPubtime() {
        return this.pubtime;
    }
    
    public void setPubtime(Date pubtime) {
        this.pubtime = pubtime;
    }
   








}