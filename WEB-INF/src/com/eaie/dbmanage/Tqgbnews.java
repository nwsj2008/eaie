package com.eaie.dbmanage;

import java.util.Date;

/**
 * Tqgbnews entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Tqgbnews implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String content;
	private String filename;
	private String fileurl;
	private Date pubtime;

	// Constructors

	/** default constructor */
	public Tqgbnews() {
	}

	/** full constructor */
	public Tqgbnews(String title, String content, String filename,
			String fileurl, Date pubtime) {
		this.title = title;
		this.content = content;
		this.filename = filename;
		this.fileurl = fileurl;
		this.pubtime = pubtime;
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

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFileurl() {
		return this.fileurl;
	}

	public void setFileurl(String fileurl) {
		this.fileurl = fileurl;
	}

	public Date getPubtime() {
		return this.pubtime;
	}

	public void setPubtime(Date pubtime) {
		this.pubtime = pubtime;
	}

}