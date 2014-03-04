package com.eaie.dbmanage;

/**
 * Gcxkopen entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Gcxkopen implements java.io.Serializable {

	// Fields

	private Integer id;
	private String openxt;
	private String term;

	// Constructors

	/** default constructor */
	public Gcxkopen() {
	}

	/** full constructor */
	public Gcxkopen(String openxt, String term) {
		this.openxt = openxt;
		this.term = term;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOpenxt() {
		return this.openxt;
	}

	public void setOpenxt(String openxt) {
		this.openxt = openxt;
	}

	public String getTerm() {
		return this.term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

}