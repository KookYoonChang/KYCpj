package com.kh.thil.admin.pay.model.vo;

import java.sql.Date;

public class AdminPay {
	private String payno;
	private String rno;
	private String reqName;
	private String bsTitle;
	private String catName;
	private int payPrice;
	private int payFee;
	private String payType;
	private Date payDate;
	private String paySend;
	
	public AdminPay() {}

	public AdminPay(String payno, String rno, String reqName, String bsTitle, String catName, int payPrice, int payFee,
			String payType, Date payDate, String paySend) {
		super();
		this.payno = payno;
		this.rno = rno;
		this.reqName = reqName;
		this.bsTitle = bsTitle;
		this.catName = catName;
		this.payPrice = payPrice;
		this.payFee = payFee;
		this.payType = payType;
		this.payDate = payDate;
		this.paySend = paySend;
	}

	public String getPayno() {
		return payno;
	}

	public void setPayno(String payno) {
		this.payno = payno;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getReqName() {
		return reqName;
	}

	public void setReqName(String reqName) {
		this.reqName = reqName;
	}

	public String getBsTitle() {
		return bsTitle;
	}

	public void setBsTitle(String bsTitle) {
		this.bsTitle = bsTitle;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public int getPayFee() {
		return payFee;
	}

	public void setPayFee(int payFee) {
		this.payFee = payFee;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getPaySend() {
		return paySend;
	}

	public void setPaySend(String paySend) {
		this.paySend = paySend;
	}

	@Override
	public String toString() {
		return "AdminPay [payno=" + payno + ", rno=" + rno + ", reqName=" + reqName + ", bsTitle=" + bsTitle
				+ ", catName=" + catName + ", payPrice=" + payPrice + ", payFee=" + payFee + ", payType=" + payType
				+ ", payDate=" + payDate + ", paySend=" + paySend + "]";
	}
	
}
