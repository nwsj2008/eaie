package com.eaie.dbmanage;

/**
 * Gcstudent entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Gcstudent implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String pwd;

	// Constructors

	/** default constructor */
	public Gcstudent() {
	}

	/** full constructor */
	public Gcstudent(String name, String pwd) {
		this.name = name;
		this.pwd = pwd;
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

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}