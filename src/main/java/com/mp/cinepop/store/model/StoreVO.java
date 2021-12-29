package com.mp.cinepop.store.model;

import java.sql.Timestamp;

public class StoreVO {
	private int pdNo;
	private String pctNo;
	private String pdName;
	private int pdPrice;
	private String pdImagename;
	private long pdImagefilesize;
	private String pdDescription;
	private Timestamp pdRegdate;

	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	public String getPctNo() {
		return pctNo;
	}
	public void setPctNo(String pctNo) {
		this.pctNo = pctNo;
	}
	public String getPdName() {
		return pdName;
	}
	public void setPdName(String pdName) {
		this.pdName = pdName;
	}
	public int getPdPrice() {
		return pdPrice;
	}
	public void setPdPrice(int pdPrice) {
		this.pdPrice = pdPrice;
	}
	public String getPdDescription() {
		return pdDescription;
	}
	public void setPdDescription(String pdDescription) {
		this.pdDescription = pdDescription;
	}
	public Timestamp getPdRegdate() {
		return pdRegdate;
	}
	public void setPdRegdate(Timestamp pdRegdate) {
		this.pdRegdate = pdRegdate;
	}
	
	public String getPdImagename() {
		return pdImagename;
	}
	public void setPdImagename(String pdImagename) {
		this.pdImagename = pdImagename;
	}
	public long getPdImagefilesize() {
		return pdImagefilesize;
	}
	public void setPdImagefilesize(long pdImagefilesize) {
		this.pdImagefilesize = pdImagefilesize;
	}
	@Override
	public String toString() {
		return "StoreVO [pdNo=" + pdNo + ", pctNo=" + pctNo + ", pdName=" + pdName + ", pdPrice=" + pdPrice
				+ ", pdImagename=" + pdImagename + ", pdImagefilesize=" + pdImagefilesize + ", pdDescription="
				+ pdDescription + ", pdRegdate=" + pdRegdate + "]";
	}
}
