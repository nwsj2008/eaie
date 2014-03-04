package com.eaie.dbmanage;

/**
 * Gcss entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Gcss implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String sfz;
	private String gcly;
	private String gct;
	private String zyk;
	private String tel;
	private String lqjg;

	// Constructors

	/** default constructor */
	public Gcss() {
	}

	/** full constructor */
	public Gcss(String name, String sfz, String gcly, String gct, String zyk,
			String tel, String lqjg) {
		this.name = name;
		this.sfz = sfz;
		this.gcly = gcly;
		this.gct = gct;
		this.zyk = zyk;
		this.tel = tel;
		this.lqjg = lqjg;
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

	public String getSfz() {
		return this.sfz;
	}

	public void setSfz(String sfz) {
		this.sfz = sfz;
	}

	public String getGcly() {
		return this.gcly;
	}

	public void setGcly(String gcly) {
		this.gcly = gcly;
	}

	public String getGct() {
		return this.gct;
	}

	public void setGct(String gct) {
		this.gct = gct;
	}

	public String getZyk() {
		return this.zyk;
	}

	public void setZyk(String zyk) {
		this.zyk = zyk;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLqjg() {
		return this.lqjg;
	}

	public void setLqjg(String lqjg) {
		this.lqjg = lqjg;
	}

}