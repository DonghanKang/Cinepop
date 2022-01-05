package com.mp.cinepop.qna.model;

import java.sql.Timestamp;

public class QnaVO {
	private int qNo;
	private String title;
	private String publisher;
	private String content;
	private int readcount;
	private Timestamp regdate;
	
	public QnaVO() {
		super();
	}
	
	public QnaVO(int qNo, String title, String publisher, String content, int readcount, Timestamp regdate) {
		super();
		this.qNo = qNo;
		this.title = title;
		this.publisher = publisher;
		this.content = content;
		this.readcount = readcount;
		this.regdate = regdate;
	}
	
	public int getqNo() {
		return qNo;
	}
	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "QnaVO [qNo=" + qNo + ", title=" + title + ", publisher=" + publisher + ", content=" + content
				+ ", readcount=" + readcount + ", regdate=" + regdate + "]";
	}
	
	
}
