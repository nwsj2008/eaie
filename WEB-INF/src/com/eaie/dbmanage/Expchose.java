package com.eaie.dbmanage;



/**
 * Expchose generated by MyEclipse - Hibernate Tools
 */

public class Expchose  implements java.io.Serializable {


    // Fields    

     private Integer choseid;
     private Expstudent expstudent;
     private Innovativelexp innovativelexp;
     private Integer apporder;


    // Constructors

    /** default constructor */
    public Expchose() {
    }

    
    /** full constructor */
    public Expchose(Expstudent expstudent, Innovativelexp innovativelexp, Integer apporder) {
        this.expstudent = expstudent;
        this.innovativelexp = innovativelexp;
        this.apporder = apporder;
    }

   
    // Property accessors

    public Integer getChoseid() {
        return this.choseid;
    }
    
    public void setChoseid(Integer choseid) {
        this.choseid = choseid;
    }

    public Expstudent getExpstudent() {
        return this.expstudent;
    }
    
    public void setExpstudent(Expstudent expstudent) {
        this.expstudent = expstudent;
    }

    public Innovativelexp getInnovativelexp() {
        return this.innovativelexp;
    }
    
    public void setInnovativelexp(Innovativelexp innovativelexp) {
        this.innovativelexp = innovativelexp;
    }

    public Integer getApporder() {
        return this.apporder;
    }
    
    public void setApporder(Integer apporder) {
        this.apporder = apporder;
    }
   








}