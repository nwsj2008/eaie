package com.eaie.dbmanage;

/**
 * Gccourse entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Gccourse implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String teacher;
	private String credit;
	private String book;
	private String nian;
	private String shijian;
	private String place;
	private String test;
	private String beizhu;

	// Constructors

	/** default constructor */
	public Gccourse() {
	}

	/** full constructor */
	public Gccourse(String title, String teacher, String credit, String book,
			String nian, String shijian, String place, String test,
			String beizhu) {
		this.title = title;
		this.teacher = teacher;
		this.credit = credit;
		this.book = book;
		this.nian = nian;
		this.shijian = shijian;
		this.place = place;
		this.test = test;
		this.beizhu = beizhu;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTeacher() {
		return this.teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public String getCredit() {
		return this.credit;
	}

	public void setCredit(String credit) {
		this.credit = credit;
	}

	public String getBook() {
		return this.book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public String getNian() {
		return this.nian;
	}

	public void setNian(String nian) {
		this.nian = nian;
	}

	public String getShijian() {
		return this.shijian;
	}

	public void setShijian(String shijian) {
		this.shijian = shijian;
	}

	public String getPlace() {
		return this.place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getTest() {
		return this.test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

}