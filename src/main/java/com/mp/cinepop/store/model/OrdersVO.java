package com.mp.cinepop.store.model;

import java.sql.Timestamp;

public class OrdersVO {
	private int orderNo;
	private String id;
	private int totalPrice;
	private int discPrice;
	private String deliveryStatus;
	private Timestamp orderDate;
	private String message;
	private String receiver;
	private String hp;
	
	public int getOrderNo() {
		return orderNo;
	}
	public String getId() {
		return id;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public int getDiscPrice() {
		return discPrice;
	}
	public String getDeliveryStatus() {
		return deliveryStatus;
	}
	public Timestamp getOrderDate() {
		return orderDate;
	}
	public String getMessage() {
		return message;
	}
	public String getReceiver() {
		return receiver;
	}
	public String getHp() {
		return hp;
	}
	
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public void setDiscPrice(int discPrice) {
		this.discPrice = discPrice;
	}
	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	@Override
	public String toString() {
		return "OrdersVO [orderNo=" + orderNo + ", id=" + id + ", totalPrice=" + totalPrice + ", discPrice=" + discPrice
				+ ", deliveryStatus=" + deliveryStatus + ", orderDate=" + orderDate + ", message=" + message
				+ ", receiver=" + receiver + ", hp=" + hp + "]";
	}
}
