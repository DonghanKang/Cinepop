package com.mp.cinepop.ticketing.seat.model;

import java.sql.Timestamp;

public class SeatVO {
	private int sTNo;
    private int sNo;
    private String userid;
    private String seatNo;
    private Timestamp regdate;
	public int getsTNo() {
		return sTNo;
	}
	public void setsTNo(int sTNo) {
		this.sTNo = sTNo;
	}
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "SeatVO [sTNo=" + sTNo + ", sNo=" + sNo + ", userid=" + userid + ", seatNo=" + seatNo + ", regdate="
				+ regdate + "]";
	}

    
}
