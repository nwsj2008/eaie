package com.eaie.dbmanage;

import java.util.Date;

/**
 * KxfzgNews entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class KxfzgNews implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String content;
	private String imageurl;
	private Date pubtime;
	private String filename;
	private String fileurl;
	private String part;
	private Integer istop;
	private Integer ispicnews;
	private Integer hit;

	// Constructors

	/** default constructor */
	public KxfzgNews() {
	}

	/** full constructor */
	public KxfzgNews(String title, String content, String imageurl,
			Date pubtime, String filename, String fileurl, String part,
			Integer istop, Integer ispicnews, Integer hit) {
		this.title = title;
		this.content = content;
		this.imageurl = imageurl;
		this.pubtime = pubtime;
		this.filename = filename;
		this.fileurl = fileurl;
		this.part = part;
		this.istop = istop;
		this.ispicnews = ispicnews;
		this.hit = hit;
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

	public String getImageurl() {
		return this.imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

	public Date getPubtime() {
		return this.pubtime;
	}

	public void setPubtime(Date pubtime) {
		this.pubtime = pubtime;
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

	public String getPart() {
		return this.part;
	}

	public void setPart(String part) {
		this.part = part;
	}

	public Integer getIstop() {
		return this.istop;
	}

	public void setIstop(Integer istop) {
		this.istop = istop;
	}

	public Integer getIspicnews() {
		return this.ispicnews;
	}

	public void setIspicnews(Integer ispicnews) {
		this.ispicnews = ispicnews;
	}

	public Integer getHit() {
		return this.hit;
	}

	public void setHit(Integer hit) {
		this.hit = hit;
	}

}