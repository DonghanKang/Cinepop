package com.mp.cinepop.account.model;

public class AccountVO {
	private int aNo;
	 private String aName;
	 private String id;
	 private String  postcode1;
	 private String address;
	 private String detailAddress1;
	 private String tel;
	 private int aAmount;
	 private int point;
	 private int gNo;
	 private String pwd;
	 private String gName;
	public int getaNo() {
		return aNo;
	}
	public void setaNo(int aNo) {
		this.aNo = aNo;
	}
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPostcode1() {
		return postcode1;
	}
	public void setPostcode1(String postcode1) {
		this.postcode1 = postcode1;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailAddress1() {
		return detailAddress1;
	}
	public void setDetailAddress1(String detailAddress1) {
		this.detailAddress1 = detailAddress1;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getaAmount() {
		return aAmount;
	}
	public void setaAmount(int aAmount) {
		this.aAmount = aAmount;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getgNo() {
		return gNo;
	}
	public void setgNo(int gNo) {
		this.gNo = gNo;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getgName() {
		return gName;
	}
	public void setgName(String gName) {
		this.gName = gName;
	}
	@Override
	public String toString() {
		return "AccountVO [aNo=" + aNo + ", aName=" + aName + ", id=" + id + ", postcode1=" + postcode1 + ", address="
				+ address + ", detailAddress1=" + detailAddress1 + ", tel=" + tel + ", aAmount=" + aAmount + ", point="
				+ point + ", gNo=" + gNo + ", pwd=" + pwd + ", gName=" + gName + "]";
	}
	 
	 
}
