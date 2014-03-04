package com.eaie.dbmanage;

/**
 * Tqgbopen entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Tqgbopen implements java.io.Serializable {

	// Fields

	private Integer id;
	private String openxt;

	// Constructors

	/** default constructor */
	public Tqgbopen() {
	}

	/** full constructor */
	public Tqgbopen(String openxt) {
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