package com.eaie.dbmanage;

/**
 * Gcxk entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Gcxk implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer sid;
	private Integer tid;
	private String score;
	private String beizhu;

	// Constructors

	/** default constructor */
	public Gcxk() {
	}

	/** full constructor */
	public Gcxk(Integer sid, Integer tid, String score, String beizhu) {
		this.sid = sid;
		this.tid = tid;
		this.score = score;
		this.beizhu = beizhu;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getScore() {
		return this.score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

}