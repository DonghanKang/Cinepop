package com.mp.cinepop.store.model;

public class PdReviewVO {
	public int orderNo;
	public int pdNo;
	public String review;
	public String regdate;
	
	/* 테이블에는 없지만 같이 보여줘야 하는 컬럼 */
	public String id;

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getPdNo() {
		return pdNo;
	}

	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "PdReviewVO [orderNo=" + orderNo + ", pdNo=" + pdNo + ", review=" + review + ", regdate=" + regdate
				+ ", id=" + id + "]";
	}
	
}
