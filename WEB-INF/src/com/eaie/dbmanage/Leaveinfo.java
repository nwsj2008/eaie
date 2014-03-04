package com.eaie.dbmanage;

import java.util.Date;

/**
 * Leaveinfo entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Leaveinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String content;
	private Date pubtime;
	private String writer;
	private String answer;
	private Date answertime;

	// Constructors

	/** default constructor */
	public Leaveinfo() {
	}

	/** full constructor */
	public Leaveinfo(String title, String content, Date pubtime, String writer,
			String answer, Date answertime) {
		this.title = title;
		this.content = content;
		this.pubtime = pubtime;
		this.writer = writer;
		this.answer = answer;
		this.answertime = answertime;
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

	public Date getPubtime() {
		return this.pubtime;
	}

	public void setPubtime(Date pubtime) {
		this.pubtime = pubtime;
	}

	public String getWriter() {
		return this.writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getAnswertime() {
		return this.answertime;
	}

	public void setAnswertime(Date answertime) {
		this.answertime = answertime;
	}

}