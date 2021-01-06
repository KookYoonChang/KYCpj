package com.kh.thil.user.myPage.myRequest.model.vo;

import java.sql.Date;

public class UserRequest {
	private String rno;
	private Date reqDate;
	private String catName;
	private String bsTitle;
	private int payPrice;
	private String proName;
	
	public UserRequest() {}

	public UserRequest(String rno, Date reqDate, String catName, String bsTitle, int payPrice, String proName) {
		super();
		this.rno = rno;
		this.reqDate = reqDate;
		this.catName = catName;
		this.bsTitle = bsTitle;
		this.payPrice = payPrice;
		this.proName = proName;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public Date getReqDate() {
		return reqDate;
	}

	public void setReqDate(Date reqDate) {
		this.reqDate = reqDate;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public String getBsTitle() {
		return bsTitle;
	}

	public void setBsTitle(String bsTitle) {
		this.bsTitle = bsTitle;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	@Override
	public String toString() {
		return "UserRequest [rno=" + rno + ", reqDate=" + reqDate + ", catName=" + catName + ", bsTitle=" + bsTitle
				+ ", payPrice=" + payPrice + ", proName=" + proName + "]";
	}
	
}
