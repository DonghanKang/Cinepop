package com.mp.cinepop.account.model;

public class AccountVO {

	 private int a_no;
	 private String a_name;
	 private String id;
	 private String  postcode1;
	 private String address_1;
	 private String detailAddress1;
	 private String tel;
	 private int a_amount;
	 private int point;
	 private int g_no;
	 
	
	public int getA_no() {
		return a_no;
	}
	public void setA_no(int a_no) {
		this.a_no = a_no;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
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
	public String getAddress_1() {
		return address_1;
	}
	public void setAddress_1(String address1) {
		this.address_1 = address1;
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
	public int getA_amount() {
		return a_amount;
	}
	public void setA_amount(int a_amount) {
		this.a_amount = a_amount;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getG_no() {
		return g_no;
	}
	public void setG_no(int g_no) {
		this.g_no = g_no;
	}
	@Override
	public String toString() {
		return "AccountVO [a_no=" + a_no + ", a_name=" + a_name + ", id=" + id + ", postcode1=" + postcode1
				+ ", address1=" + address_1 + ", detailAddress1=" + detailAddress1 + ", tel=" + tel + ", a_amount="
				+ a_amount + ", point=" + point + ", g_no=" + g_no + "]";
	}
	
	 
	 
	
}
