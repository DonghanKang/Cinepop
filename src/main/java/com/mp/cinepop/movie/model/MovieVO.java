package com.mp.cinepop.movie.model;

import java.sql.Timestamp;

public class MovieVO {
	
	private int MNO;
	private String MNAME;
	private String DIRECTOR;
	private String ACTOR;
	private int REVIEWGRADE;
	private String STORY;
	private String SDATE;
	private String EDATE;
	private int GE_NO;
	private int RUNTIME;
	private String IMAGE1;
	private String IMAGE2;
	private String IMAGE3;
	private String VIDEOURL;
	private String GENAME;
	private String ID;
	private Timestamp REGDATE;
	private String REVIEWCONTENT;
	
	
	
	
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public Timestamp getREGDATE() {
		return REGDATE;
	}
	public void setREGDATE(Timestamp rEGDATE) {
		REGDATE = rEGDATE;
	}
	public String getREVIEWCONTENT() {
		return REVIEWCONTENT;
	}
	public void setREVIEWCONTENT(String rEVIEWCONTENT) {
		REVIEWCONTENT = rEVIEWCONTENT;
	}
	public String getGENAME() {
		return GENAME;
	}
	public void setGENAME(String gENAME) {
		GENAME = gENAME;
	}
	public int getMNO() {
		return MNO;
	}
	public void setMNO(int mNO) {
		MNO = mNO;
	}
	public String getMNAME() {
		return MNAME;
	}
	public void setMNAME(String mNAME) {
		MNAME = mNAME;
	}
	public String getDIRECTOR() {
		return DIRECTOR;
	}
	public void setDIRECTOR(String dIRECTOR) {
		DIRECTOR = dIRECTOR;
	}
	public String getACTOR() {
		return ACTOR;
	}
	public void setACTOR(String aCTOR) {
		ACTOR = aCTOR;
	}
	public int getREVIEWGRADE() {
		return REVIEWGRADE;
	}
	public void setREVIEWGRADE(int rEVIEWGRADE) {
		REVIEWGRADE = rEVIEWGRADE;
	}
	public String getSTORY() {
		return STORY;
	}
	public void setSTORY(String sTORY) {
		STORY = sTORY;
	}
	public String getSDATE() {
		return SDATE;
	}
	public void setSDATE(String sDATE) {
		SDATE = sDATE;
	}
	public String getEDATE() {
		return EDATE;
	}
	public void setEDATE(String eDATE) {
		EDATE = eDATE;
	}
	public int getGE_NO() {
		return GE_NO;
	}
	public void setGE_NO(int gE_NO) {
		GE_NO = gE_NO;
	}
	public int getRUNTIME() {
		return RUNTIME;
	}
	public void setRUNTIME(int rUNTIME) {
		RUNTIME = rUNTIME;
	}
	public String getIMAGE1() {
		return IMAGE1;
	}
	public void setIMAGE1(String iMAGE1) {
		IMAGE1 = iMAGE1;
	}
	public String getIMAGE2() {
		return IMAGE2;
	}
	public void setIMAGE2(String iMAGE2) {
		IMAGE2 = iMAGE2;
	}
	public String getIMAGE3() {
		return IMAGE3;
	}
	public void setIMAGE3(String iMAGE3) {
		IMAGE3 = iMAGE3;
	}
	public String getVIDEOURL() {
		return VIDEOURL;
	}
	public void setVIDEOURL(String vIDEOURL) {
		VIDEOURL = vIDEOURL;
	}
	
	
	

}
