package com.mp.cinepop.ticketing.screen_info.model;

import java.sql.Date;

public class ScreenInfoViewVO {
	private int sNo;
	private String mName;
	private String city;
	private int no;
	private int runTime;
	private String tName;
	private String auditorium;
	private Date sDate;
	private int sTime;
	private int rating;
	private String image1;
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getRunTime() {
		return runTime;
	}
	public void setRunTime(int runTime) {
		this.runTime = runTime;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	public String getAuditorium() {
		return auditorium;
	}
	public void setAuditorium(String auditorium) {
		this.auditorium = auditorium;
	}
	public Date getsDate() {
		return sDate;
	}
	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}
	public int getsTime() {
		return sTime;
	}
	public void setsTime(int sTime) {
		this.sTime = sTime;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	@Override
	public String toString() {
		return "ScreenInfoViewVO [sNo=" + sNo + ", mName=" + mName + ", city=" + city + ", no=" + no + ", runTime="
				+ runTime + ", tName=" + tName + ", auditorium=" + auditorium + ", sDate=" + sDate + ", sTime=" + sTime
				+ ", rating=" + rating + ", image1=" + image1 + "]";
	}
	
	
	
	
}
