package com.eaie.dbmanage;

import java.util.Date;


/**
 * Vjian generated by MyEclipse - Hibernate Tools
 */

public class Vjian  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Integer today;
     private Integer yesterday;
     private Integer vtop;
     private Date vdate;
     private Date starttime;


    // Constructors

    /** default constructor */
    public Vjian() {
    }

	/** minimal constructor */
    public Vjian(Integer id) {
        this.id = id;
    }
    
    /** full constructor */
    public Vjian(Integer id, Integer today, Integer yesterday, Integer vtop, Date vdate, Date starttime) {
        this.id = id;
        this.today = today;
        this.yesterday = yesterday;
        this.vtop = vtop;
        this.vdate = vdate;
        this.starttime = starttime;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getToday() {
        return this.today;
    }
    
    public void setToday(Integer today) {
        this.today = today;
    }

    public Integer getYesterday() {
        return this.yesterday;
    }
    
    public void setYesterday(Integer yesterday) {
        this.yesterday = yesterday;
    }

    public Integer getVtop() {
        return this.vtop;
    }
    
    public void setVtop(Integer vtop) {
        this.vtop = vtop;
    }

    public Date getVdate() {
        return this.vdate;
    }
    
    public void setVdate(Date vdate) {
        this.vdate = vdate;
    }

    public Date getStarttime() {
        return this.starttime;
    }
    
    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }
   








}