package com.kh.thil.admin.review.model.vo;

import java.sql.Date;

public class AdminReviewDetail {
	private String revNo;
	private String rno;
	private String userId;
	private String userNick;
	private String bsTitle;
	private String reqAdd;
	private String catName;
	private int payPrice;
	private int revPoint;
	private String revNote;
	private Date revDate;

	public AdminReviewDetail() {}

	public AdminReviewDetail(String revNo, String rno, String userId, String userNick, String bsTitle, String reqAdd,
			String catName, int payPrice, int revPoint, String revNote, Date revDate) {
		super();
		this.revNo = revNo;
		this.rno = rno;
		this.userId = userId;
		this.userNick = userNick;
		this.bsTitle = bsTitle;
		this.reqAdd = reqAdd;
		this.catName = catName;
		this.payPrice = payPrice;
		this.revPoint = revPoint;
		this.revNote = revNote;
		this.revDate = revDate;
	}

	public String getRevNo() {
		return revNo;
	}

	public void setRevNo(String revNo) {
		this.revNo = revNo;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public String getBsTitle() {
		return bsTitle;
	}

	public void setBsTitle(String bsTitle) {
		this.bsTitle = bsTitle;
	}

	public String getReqAdd() {
		return reqAdd;
	}

	public void setReqAdd(String reqAdd) {
		this.reqAdd = reqAdd;
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

	public int getRevPoint() {
		return revPoint;
	}

	public void setRevPoint(int revPoint) {
		this.revPoint = revPoint;
	}

	public String getRevNote() {
		return revNote;
	}

	public void setRevNote(String revNote) {
		this.revNote = revNote;
	}

	public Date getRevDate() {
		return revDate;
	}

	public void setRevDate(Date revDate) {
		this.revDate = revDate;
	}

	@Override
	public String toString() {
		return "AdminReviewDetail [revNo=" + revNo + ", rno=" + rno + ", userId=" + userId + ", userNick=" + userNick
				+ ", bsTitle=" + bsTitle + ", reqAdd=" + reqAdd + ", catName=" + catName + ", payPrice=" + payPrice
				+ ", revPoint=" + revPoint + ", revNote=" + revNote + ", revDate=" + revDate + "]";
	}

	
}
