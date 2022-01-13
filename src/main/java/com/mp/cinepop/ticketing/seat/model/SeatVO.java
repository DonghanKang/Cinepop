package com.mp.cinepop.ticketing.seat.model;

public class SeatVO {
	private String sTNo;
    private int sNo;
    private String userid;
    private String seatNo;
    
	public String getsTNo() {
		return sTNo;
	}
	public void setsTNo(String sTNo) {
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
	
	@Override
	public String toString() {
		return "SeatsVO [sTNo=" + sTNo + ", sNo=" + sNo + ", userid=" + userid + ", seatNo=" + seatNo + "]";
	}
    
    
}
