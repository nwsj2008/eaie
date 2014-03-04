package com.eaie.dbmanage;

/**
 * Leader entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Leader implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer postid;
	private String post;
	private String name;
	private String tel;
	private String address;
	private String email;
	private String charge;
	private String imageurl;

	// Constructors

	/** default constructor */
	public Leader() {
	}

	/** full constructor */
	public Leader(Integer postid, String post, String name, String tel,
			String address, String email, String charge, String imageurl) {
		this.postid = postid;
		this.post = post;
		this.name = name;
		this.tel = tel;
		this.address = address;
		this.email = email;
		this.charge = charge;
		this.imageurl = imageurl;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPostid() {
		return this.postid;
	}

	public void setPostid(Integer postid) {
		this.postid = postid;
	}

	public String getPost() {
		return this.post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCharge() {
		return this.charge;
	}

	public void setCharge(String charge) {
		this.charge = charge;
	}

	public String getImageurl() {
		return this.imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

}