package com.kh.thil.admin.request.model.vo;

import java.sql.Date;

public class AdminRequest {
	private String rno;
	private String proName;
	private String catName;
	private String userId;
	private String reqName;
	private String reqPhone;
	private String bsTitle;
	private String paySend;
	private int payPrice;
	private Date reqDate;
	
	public AdminRequest() {}

	public AdminRequest(String rno, String proName, String catName, String userId, String reqName, String reqPhone,
			String bsTitle, String paySend, int payPrice, Date reqDate) {
		super();
		this.rno = rno;
		this.proName = proName;
		this.catName = catName;
		this.userId = userId;
		this.reqName = reqName;
		this.reqPhone = reqPhone;
		this.bsTitle = bsTitle;
		this.paySend = paySend;
		this.payPrice = payPrice;
		this.reqDate = reqDate;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getReqName() {
		return reqName;
	}

	public void setReqName(String reqName) {
		this.reqName = reqName;
	}

	public String getReqPhone() {
		return reqPhone;
	}

	public void setReqPhone(String reqPhone) {
		this.reqPhone = reqPhone;
	}

	public String getBsTitle() {
		return bsTitle;
	}

	public void setBsTitle(String bsTitle) {
		this.bsTitle = bsTitle;
	}

	public String getPaySend() {
		return paySend;
	}

	public void setPaySend(String paySend) {
		this.paySend = paySend;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public Date getReqDate() {
		return reqDate;
	}

	public void setReqDate(Date reqDate) {
		this.reqDate = reqDate;
	}

	@Override
	public String toString() {
		return "AdminRequest [rno=" + rno + ", proName=" + proName + ", catName=" + catName + ", userId=" + userId
				+ ", reqName=" + reqName + ", reqPhone=" + reqPhone + ", bsTitle=" + bsTitle + ", paySend=" + paySend
				+ ", payPrice=" + payPrice + ", reqDate=" + reqDate + "]";
	}
	
}
