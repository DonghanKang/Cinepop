package com.mp.cinepop.review.model;

import java.sql.Timestamp;

public class ReviewVO {
	String reviewcontent;
	int reviewgrade;
	String userid;
	Timestamp regdate;
	
	public String getReviewcontent() {
		return reviewcontent;
	}
	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}
	public int getReviewgrade() {
		return reviewgrade;
	}
	public void setReviewgrade(int reviewgrade) {
		this.reviewgrade = reviewgrade;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
}
