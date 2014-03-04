package com.eaie.dbmanage;

/**
 * Tqgb entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Tqgb implements java.io.Serializable {

	// Fields

	private Integer id;
	private String xuehao;
	private String name;
	private String sex;
	private String sszy;
	private String nbzy;
	private String sd;
	private String nbbd;
	private String cjpm;
	private String beizhu;
	private String username;
	private String pwd;
	private String tel;
	private String lqlb;
	private String dsxx;
	private String lqzy;

	// Constructors

	/** default constructor */
	public Tqgb() {
	}

	/** full constructor */
	public Tqgb(String xuehao, String name, String sex, String sszy,
			String nbzy, String sd, String nbbd, String cjpm, String beizhu,
			String username, String pwd, String tel, String lqlb, String dsxx,
			String lqzy) {
		this.xuehao = xuehao;
		this.name = name;
		this.sex = sex;
		this.sszy = sszy;
		this.nbzy = nbzy;
		this.sd = sd;
		this.nbbd = nbbd;
		this.cjpm = cjpm;
		this.beizhu = beizhu;
		this.username = username;
		this.pwd = pwd;
		this.tel = tel;
		this.lqlb = lqlb;
		this.dsxx = dsxx;
		this.lqzy = lqzy;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getXuehao() {
		return this.xuehao;
	}

	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
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

	public String getSszy() {
		return this.sszy;
	}

	public void setSszy(String sszy) {
		this.sszy = sszy;
	}

	public String getNbzy() {
		return this.nbzy;
	}

	public void setNbzy(String nbzy) {
		this.nbzy = nbzy;
	}

	public String getSd() {
		return this.sd;
	}

	public void setSd(String sd) {
		this.sd = sd;
	}

	public String getNbbd() {
		return this.nbbd;
	}

	public void setNbbd(String nbbd) {
		this.nbbd = nbbd;
	}

	public String getCjpm() {
		return this.cjpm;
	}

	public void setCjpm(String cjpm) {
		this.cjpm = cjpm;
	}

	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getLqlb() {
		return this.lqlb;
	}

	public void setLqlb(String lqlb) {
		this.lqlb = lqlb;
	}

	public String getDsxx() {
		return this.dsxx;
	}

	public void setDsxx(String dsxx) {
		this.dsxx = dsxx;
	}

	public String getLqzy() {
		return this.lqzy;
	}

	public void setLqzy(String lqzy) {
		this.lqzy = lqzy;
	}

}