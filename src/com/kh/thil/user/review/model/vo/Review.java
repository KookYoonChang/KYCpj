package com.kh.thil.user.review.model.vo;

import java.sql.Date;

public class Review {
	
	private String revno; //리뷰 번호
	private String rno; //의뢰 번호
	private String uno; //유저번호 
	private String revNote; //리뷰 텍스트
	private Date revDate; //리뷰 작성 날짜
	private int revPoint; //리뷰 점수
	private String revStatus; //리뷰 상태
	private String nickName; //사용자 닉네임
	private String bsTitle; //의뢰제목
	private String catName; //카테고리
	private String reqAdd; //의뢰주소 
	private String payPrice; //가격
	
	public Review () {}

	public String getRevno() {
		return revno;
	}

	public void setRevno(String revno) {
		this.revno = revno;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getUno() {
		return uno;
	}

	public void setUno(String uno) {
		this.uno = uno;
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

	public int getRevPoint() {
		return revPoint;
	}

	public void setRevPoint(int revPoint) {
		this.revPoint = revPoint;
	}

	public String getRevStatus() {
		return revStatus;
	}

	public void setRevStatus(String revStatus) {
		this.revStatus = revStatus;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
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

	public String getReqAdd() {
		return reqAdd;
	}

	public void setReqAdd(String reqAdd) {
		this.reqAdd = reqAdd;
	}

	public String getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(String payPrice) {
		this.payPrice = payPrice;
	}

	public Review(String revno, String rno, String uno, String revNote, Date revDate, int revPoint, String revStatus,
			String nickName, String bsTitle, String catName, String reqAdd, String payPrice) {
		super();
		this.revno = revno;
		this.rno = rno;
		this.uno = uno;
		this.revNote = revNote;
		this.revDate = revDate;
		this.revPoint = revPoint;
		this.revStatus = revStatus;
		this.nickName = nickName;
		this.bsTitle = bsTitle;
		this.catName = catName;
		this.reqAdd = reqAdd;
		this.payPrice = payPrice;
	}

	@Override
	public String toString() {
		return "Review [revno=" + revno + ", rno=" + rno + ", uno=" + uno + ", revNote=" + revNote + ", revDate="
				+ revDate + ", revPoint=" + revPoint + ", revStatus=" + revStatus + ", nickName=" + nickName
				+ ", bsTitle=" + bsTitle + ", catName=" + catName + ", reqAdd=" + reqAdd + ", payPrice=" + payPrice
				+ "]";
	}

	
	
	

}
