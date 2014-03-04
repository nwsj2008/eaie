package com.eaie.dbmanage;

/**
 * Sbopen entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Sbopen implements java.io.Serializable {

	// Fields

	private Integer id;
	private String openxt;

	// Constructors

	/** default constructor */
	public Sbopen() {
	}

	/** full constructor */
	public Sbopen(String openxt) {
		this.openxt = openxt;
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

}