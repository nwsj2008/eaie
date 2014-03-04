package com.eaie.dbmanage;

import java.util.Date;

/**
 * Tmstudent entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Tmstudent implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String byschool;
	private String byspeciality;
	private String jsacademe;
	private String jsspeciality;
	private String tel;
	private String shenheresult;
	private String fushiresult;
	private String sflq;
	private String teacher;
	private String pwd;
	private String username;
	private Date lastlogintime;
	private String lastloginip;
	private Integer logintimes;
	private String zypm;
	private String zyrs;
	private String siji;
	private String liuji;
	private String huoj;

	// Constructors

	/** default constructor */
	public Tmstudent() {
	}

	/** full constructor */
	public Tmstudent(String name, String byschool, String byspeciality,
			String jsacademe, String jsspeciality, String tel,
			String shenheresult, String fushiresult, String sflq,
			String teacher, String pwd, String username, Date lastlogintime,
			String lastloginip, Integer logintimes, String zypm, String zyrs,
			String siji, String liuji, String huoj) {
		this.name = name;
		this.byschool = byschool;
		this.byspeciality = byspeciality;
		this.jsacademe = jsacademe;
		this.jsspeciality = jsspeciality;
		this.tel = tel;
		this.shenheresult = shenheresult;
		this.fushiresult = fushiresult;
		this.sflq = sflq;
		this.teacher = teacher;
		this.pwd = pwd;
		this.username = username;
		this.lastlogintime = lastlogintime;
		this.lastloginip = lastloginip;
		this.logintimes = logintimes;
		this.zypm = zypm;
		this.zyrs = zyrs;
		this.siji = siji;
		this.liuji = liuji;
		this.huoj = huoj;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getByschool() {
		return this.byschool;
	}

	public void setByschool(String byschool) {
		this.byschool = byschool;
	}

	public String getByspeciality() {
		return this.byspeciality;
	}

	public void setByspeciality(String byspeciality) {
		this.byspeciality = byspeciality;
	}

	public String getJsacademe() {
		return this.jsacademe;
	}

	public void setJsacademe(String jsacademe) {
		this.jsacademe = jsacademe;
	}

	public String getJsspeciality() {
		return this.jsspeciality;
	}

	public void setJsspeciality(String jsspeciality) {
		this.jsspeciality = jsspeciality;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getShenheresult() {
		return this.shenheresult;
	}

	public void setShenheresult(String shenheresult) {
		this.shenheresult = shenheresult;
	}

	public String getFushiresult() {
		return this.fushiresult;
	}

	public void setFushiresult(String fushiresult) {
		this.fushiresult = fushiresult;
	}

	public String getSflq() {
		return this.sflq;
	}

	public void setSflq(String sflq) {
		this.sflq = sflq;
	}

	public String getTeacher() {
		return this.teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Date getLastlogintime() {
		return this.lastlogintime;
	}

	public void setLastlogintime(Date lastlogintime) {
		this.lastlogintime = lastlogintime;
	}

	public String getLastloginip() {
		return this.lastloginip;
	}

	public void setLastloginip(String lastloginip) {
		this.lastloginip = lastloginip;
	}

	public Integer getLogintimes() {
		return this.logintimes;
	}

	public void setLogintimes(Integer logintimes) {
		this.logintimes = logintimes;
	}

	public String getZypm() {
		return this.zypm;
	}

	public void setZypm(String zypm) {
		this.zypm = zypm;
	}

	public String getZyrs() {
		return this.zyrs;
	}

	public void setZyrs(String zyrs) {
		this.zyrs = zyrs;
	}

	public String getSiji() {
		return this.siji;
	}

	public void setSiji(String siji) {
		this.siji = siji;
	}

	public String getLiuji() {
		return this.liuji;
	}

	public void setLiuji(String liuji) {
		this.liuji = liuji;
	}

	public String getHuoj() {
		return this.huoj;
	}

	public void setHuoj(String huoj) {
		this.huoj = huoj;
	}

}