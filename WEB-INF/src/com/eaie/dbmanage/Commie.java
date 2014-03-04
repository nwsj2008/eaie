package com.eaie.dbmanage;

/**
 * Commie entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Commie implements java.io.Serializable {

	// Fields

	private String stuid;
	private String pwd;
	private String name;
	private String sex;
	private String banji;
	private String branch;
	private Integer post;
	private String addtime;
	private Byte sfzs;
	private String zzsj;
	private Byte rdsqs;
	private Byte rdzys;
	private Byte hd;
	private Byte zz;
	private Byte dkjyz;
	private Byte ybdykcb;
	private Byte zzsqs;
	private Byte bnzj;
	private Byte qnzj;
	private String sxhb;
	private String beizhu;

	// Constructors

	/** default constructor */
	public Commie() {
	}

	/** minimal constructor */
	public Commie(String stuid) {
		this.stuid = stuid;
	}

	/** full constructor */
	public Commie(String stuid, String pwd, String name, String sex,
			String banji, String branch, Integer post, String addtime,
			Byte sfzs, String zzsj, Byte rdsqs, Byte rdzys, Byte hd, Byte zz,
			Byte dkjyz, Byte ybdykcb, Byte zzsqs, Byte bnzj, Byte qnzj,
			String sxhb, String beizhu) {
		this.stuid = stuid;
		this.pwd = pwd;
		this.name = name;
		this.sex = sex;
		this.banji = banji;
		this.branch = branch;
		this.post = post;
		this.addtime = addtime;
		this.sfzs = sfzs;
		this.zzsj = zzsj;
		this.rdsqs = rdsqs;
		this.rdzys = rdzys;
		this.hd = hd;
		this.zz = zz;
		this.dkjyz = dkjyz;
		this.ybdykcb = ybdykcb;
		this.zzsqs = zzsqs;
		this.bnzj = bnzj;
		this.qnzj = qnzj;
		this.sxhb = sxhb;
		this.beizhu = beizhu;
	}

	// Property accessors

	public String getStuid() {
		return this.stuid;
	}

	public void setStuid(String stuid) {
		this.stuid = stuid;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBanji() {
		return this.banji;
	}

	public void setBanji(String banji) {
		this.banji = banji;
	}

	public String getBranch() {
		return this.branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public Integer getPost() {
		return this.post;
	}

	public void setPost(Integer post) {
		this.post = post;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public Byte getSfzs() {
		return this.sfzs;
	}

	public void setSfzs(Byte sfzs) {
		this.sfzs = sfzs;
	}

	public String getZzsj() {
		return this.zzsj;
	}

	public void setZzsj(String zzsj) {
		this.zzsj = zzsj;
	}

	public Byte getRdsqs() {
		return this.rdsqs;
	}

	public void setRdsqs(Byte rdsqs) {
		this.rdsqs = rdsqs;
	}

	public Byte getRdzys() {
		return this.rdzys;
	}

	public void setRdzys(Byte rdzys) {
		this.rdzys = rdzys;
	}

	public Byte getHd() {
		return this.hd;
	}

	public void setHd(Byte hd) {
		this.hd = hd;
	}

	public Byte getZz() {
		return this.zz;
	}

	public void setZz(Byte zz) {
		this.zz = zz;
	}

	public Byte getDkjyz() {
		return this.dkjyz;
	}

	public void setDkjyz(Byte dkjyz) {
		this.dkjyz = dkjyz;
	}

	public Byte getYbdykcb() {
		return this.ybdykcb;
	}

	public void setYbdykcb(Byte ybdykcb) {
		this.ybdykcb = ybdykcb;
	}

	public Byte getZzsqs() {
		return this.zzsqs;
	}

	public void setZzsqs(Byte zzsqs) {
		this.zzsqs = zzsqs;
	}

	public Byte getBnzj() {
		return this.bnzj;
	}

	public void setBnzj(Byte bnzj) {
		this.bnzj = bnzj;
	}

	public Byte getQnzj() {
		return this.qnzj;
	}

	public void setQnzj(Byte qnzj) {
		this.qnzj = qnzj;
	}

	public String getSxhb() {
		return this.sxhb;
	}

	public void setSxhb(String sxhb) {
		this.sxhb = sxhb;
	}

	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

}