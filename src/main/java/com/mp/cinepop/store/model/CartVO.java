package com.mp.cinepop.store.model;

public class CartVO {
	private int cartNo;
	private String id;
	private int	pdNo;
	private int quantity;
	public int getCartNo() {
		return cartNo;
	}
	public String getId() {
		return id;
	}
	public int getPdNo() {
		return pdNo;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	@Override
	public String toString() {
		return "CartVO [cartNo=" + cartNo + ", id=" + id + ", pdNo=" + pdNo + ", quantity=" + quantity + "]";
	}
	
	
}
