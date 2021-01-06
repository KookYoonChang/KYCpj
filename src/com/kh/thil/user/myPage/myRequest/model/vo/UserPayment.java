package com.kh.thil.user.myPage.myRequest.model.vo;

import java.sql.Date;

public class UserPayment {
	private String payNo;
	private String bsName;
	private String bsTitle;
	private String catName;
	private String reqBuildStart;
	private String reqBuildEnd;
	private int payPrice;
	private String payType;
	private String payBank;
	private String payAct;
	private String userName;
	private String payCReceipts;
	private Date payDate;
	private String payEmail;
	
	public UserPayment() {}

	public UserPayment(String payNo, String bsName, String bsTitle, String catName, String reqBuildStart,
			String reqBuildEnd, int payPrice, String payType, String payBank, String payAct, String userName,
			String payCReceipts, Date payDate, String payEmail) {
		super();
		this.payNo = payNo;
		this.bsName = bsName;
		this.bsTitle = bsTitle;
		this.catName = catName;
		this.reqBuildStart = reqBuildStart;
		this.reqBuildEnd = reqBuildEnd;
		this.payPrice = payPrice;
		this.payType = payType;
		this.payBank = payBank;
		this.payAct = payAct;
		this.userName = userName;
		this.payCReceipts = payCReceipts;
		this.payDate = payDate;
		this.payEmail = payEmail;
	}

	public String getPayNo() {
		return payNo;
	}

	public void setPayNo(String payNo) {
		this.payNo = payNo;
	}

	public String getBsName() {
		return bsName;
	}

	public void setBsName(String bsName) {
		this.bsName = bsName;
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

	public String getReqBuildStart() {
		return reqBuildStart;
	}

	public void setReqBuildStart(String reqBuildStart) {
		this.reqBuildStart = reqBuildStart;
	}

	public String getReqBuildEnd() {
		return reqBuildEnd;
	}

	public void setReqBuildEnd(String reqBuildEnd) {
		this.reqBuildEnd = reqBuildEnd;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public String getPayBank() {
		return payBank;
	}

	public void setPayBank(String payBank) {
		this.payBank = payBank;
	}

	public String getPayAct() {
		return payAct;
	}

	public void setPayAct(String payAct) {
		this.payAct = payAct;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPayCReceipts() {
		return payCReceipts;
	}

	public void setPayCReceipts(String payCReceipts) {
		this.payCReceipts = payCReceipts;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getPayEmail() {
		return payEmail;
	}

	public void setPayEmail(String payEmail) {
		this.payEmail = payEmail;
	}

	@Override
	public String toString() {
		return "UserPayment [payNo=" + payNo + ", bsName=" + bsName + ", bsTitle=" + bsTitle + ", catName=" + catName
				+ ", reqBuildStart=" + reqBuildStart + ", reqBuildEnd=" + reqBuildEnd + ", payPrice=" + payPrice
				+ ", payType=" + payType + ", payBank=" + payBank + ", payAct=" + payAct + ", userName=" + userName
				+ ", payCReceipts=" + payCReceipts + ", payDate=" + payDate + ", payEmail=" + payEmail + "]";
	}

	
}

