package com.eaie.dbmanage;

/**
 * Tmopen entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Tmopen implements java.io.Serializable {

	// Fields

	private Integer id;
	private String openxt;

	// Constructors

	/** default constructor */
	public Tmopen() {
	}

	/** full constructor */
	public Tmopen(String openxt) {
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