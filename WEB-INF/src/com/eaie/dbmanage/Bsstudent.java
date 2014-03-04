package com.eaie.dbmanage;

/**
 * Bsstudent entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Bsstudent implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String pwd;
	private String bkzy;
	private String bkds;
	private String waiyu;
	private String yewu1;
	private String yewu2;
	private String zongfen;
	private String mstz;
	private String lqzy;
	private String lqds;
	private String lqlb;

	// Constructors

	/** default constructor */
	public Bsstudent() {
	}

	/** full constructor */
	public Bsstudent(String name, String pwd, String bkzy, String bkds,
			String waiyu, String yewu1, String yewu2, String zongfen,
			String mstz, String lqzy, String lqds, String lqlb) {
		this.name = name;
		this.pwd = pwd;
		this.bkzy = bkzy;
		this.bkds = bkds;
		this.waiyu = waiyu;
		this.yewu1 = yewu1;
		this.yewu2 = yewu2;
		this.zongfen = zongfen;
		this.mstz = mstz;
		this.lqzy = lqzy;
		this.lqds = lqds;
		this.lqlb = lqlb;
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

	public String getBkzy() {
		return this.bkzy;
	}

	public void setBkzy(String bkzy) {
		this.bkzy = bkzy;
	}

	public String getBkds() {
		return this.bkds;
	}

	public void setBkds(String bkds) {
		this.bkds = bkds;
	}

	public String getWaiyu() {
		return this.waiyu;
	}

	public void setWaiyu(String waiyu) {
		this.waiyu = waiyu;
	}

	public String getYewu1() {
		return this.yewu1;
	}

	public void setYewu1(String yewu1) {
		this.yewu1 = yewu1;
	}

	public String getYewu2() {
		return this.yewu2;
	}

	public void setYewu2(String yewu2) {
		this.yewu2 = yewu2;
	}

	public String getZongfen() {
		return this.zongfen;
	}

	public void setZongfen(String zongfen) {
		this.zongfen = zongfen;
	}

	public String getMstz() {
		return this.mstz;
	}

	public void setMstz(String mstz) {
		this.mstz = mstz;
	}

	public String getLqzy() {
		return this.lqzy;
	}

	public void setLqzy(String lqzy) {
		this.lqzy = lqzy;
	}

	public String getLqds() {
		return this.lqds;
	}

	public void setLqds(String lqds) {
		this.lqds = lqds;
	}

	public String getLqlb() {
		return this.lqlb;
	}

	public void setLqlb(String lqlb) {
		this.lqlb = lqlb;
	}

}