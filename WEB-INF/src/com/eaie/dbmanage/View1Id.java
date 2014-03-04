package com.eaie.dbmanage;

/**
 * View1Id entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class View1Id implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String pwd;
	private String title;
	private String teacher;
	private String credit;
	private String zy;
	private String score;
	private Integer tid;
	private Integer sid;

	// Constructors

	/** default constructor */
	public View1Id() {
	}

	/** minimal constructor */
	public View1Id(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public View1Id(Integer id, String name, String pwd, String title,
			String teacher, String credit, String zy, String score,
			Integer tid, Integer sid) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.title = title;
		this.teacher = teacher;
		this.credit = credit;
		this.zy = zy;
		this.score = score;
		this.tid = tid;
		this.sid = sid;
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

	public String getZy() {
		return this.zy;
	}

	public void setZy(String zy) {
		this.zy = zy;
	}

	public String getScore() {
		return this.score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof View1Id))
			return false;
		View1Id castOther = (View1Id) other;

		return ((this.getId() == castOther.getId()) || (this.getId() != null
				&& castOther.getId() != null && this.getId().equals(
				castOther.getId())))
				&& ((this.getName() == castOther.getName()) || (this.getName() != null
						&& castOther.getName() != null && this.getName()
						.equals(castOther.getName())))
				&& ((this.getPwd() == castOther.getPwd()) || (this.getPwd() != null
						&& castOther.getPwd() != null && this.getPwd().equals(
						castOther.getPwd())))
				&& ((this.getTitle() == castOther.getTitle()) || (this
						.getTitle() != null
						&& castOther.getTitle() != null && this.getTitle()
						.equals(castOther.getTitle())))
				&& ((this.getTeacher() == castOther.getTeacher()) || (this
						.getTeacher() != null
						&& castOther.getTeacher() != null && this.getTeacher()
						.equals(castOther.getTeacher())))
				&& ((this.getCredit() == castOther.getCredit()) || (this
						.getCredit() != null
						&& castOther.getCredit() != null && this.getCredit()
						.equals(castOther.getCredit())))
				&& ((this.getZy() == castOther.getZy()) || (this.getZy() != null
						&& castOther.getZy() != null && this.getZy().equals(
						castOther.getZy())))
				&& ((this.getScore() == castOther.getScore()) || (this
						.getScore() != null
						&& castOther.getScore() != null && this.getScore()
						.equals(castOther.getScore())))
				&& ((this.getTid() == castOther.getTid()) || (this.getTid() != null
						&& castOther.getTid() != null && this.getTid().equals(
						castOther.getTid())))
				&& ((this.getSid() == castOther.getSid()) || (this.getSid() != null
						&& castOther.getSid() != null && this.getSid().equals(
						castOther.getSid())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getId() == null ? 0 : this.getId().hashCode());
		result = 37 * result
				+ (getName() == null ? 0 : this.getName().hashCode());
		result = 37 * result
				+ (getPwd() == null ? 0 : this.getPwd().hashCode());
		result = 37 * result
				+ (getTitle() == null ? 0 : this.getTitle().hashCode());
		result = 37 * result
				+ (getTeacher() == null ? 0 : this.getTeacher().hashCode());
		result = 37 * result
				+ (getCredit() == null ? 0 : this.getCredit().hashCode());
		result = 37 * result + (getZy() == null ? 0 : this.getZy().hashCode());
		result = 37 * result
				+ (getScore() == null ? 0 : this.getScore().hashCode());
		result = 37 * result
				+ (getTid() == null ? 0 : this.getTid().hashCode());
		result = 37 * result
				+ (getSid() == null ? 0 : this.getSid().hashCode());
		return result;
	}

}