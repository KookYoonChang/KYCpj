package com.kh.thil.user.myPage.myRequest.model.vo;

import java.sql.Date;

public class UserRequestDetail {
	//고객&결제 정보
	private String userId;
	private String userName;
	private String userPhone;
	
	private int payPrice;
	private String payBank;
	private String payType;
	private Date payDate;
	
	//사업자 정보
	private String bsNum;
	private String bsTitle;
	private String catName;
	private String bsName;
	private String bsPhone;
	private String bsAdd;
	private String bsBank;
	private String bsAct;
	
	//의뢰 정보
	private int reqPrice;
	private String reqAdd;
	private String reqName;
	private String reqPhone;
	private String reqArea;
	private String reqElv;
	private String reqHelp;
	
	//메모
	private String reqNote;
	
	//시공 희망 시작일 종료일 = reqHopeDate에서 분리해서 값 지정
	private String reqHopeStart;
	private String reqHopeEnd;
	
	//시공 시작일 시공 종료일 = reqBuildDate 에서 분리해서 값 지정
	private String reqBuildStart;
	private String reqBuildEnd;
		
	//진행상황
	private String proName;
	
	//송금여부
	private String paySend;
	
	public UserRequestDetail() {}

	public UserRequestDetail(String userId, String userName, String userPhone, int payPrice, String payBank,
			String payType, Date payDate, String bsNum, String bsTitle, String catName, String bsName, String bsPhone,
			String bsAdd, String bsBank, String bsAct, int reqPrice, String reqAdd, String reqName, String reqPhone,
			String reqArea, String reqElv, String reqHelp, String reqNote, String reqHopeStart, String reqHopeEnd,
			String reqBuildStart, String reqBuildEnd, String proName, String paySend) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPhone = userPhone;
		this.payPrice = payPrice;
		this.payBank = payBank;
		this.payType = payType;
		this.payDate = payDate;
		this.bsNum = bsNum;
		this.bsTitle = bsTitle;
		this.catName = catName;
		this.bsName = bsName;
		this.bsPhone = bsPhone;
		this.bsAdd = bsAdd;
		this.bsBank = bsBank;
		this.bsAct = bsAct;
		this.reqPrice = reqPrice;
		this.reqAdd = reqAdd;
		this.reqName = reqName;
		this.reqPhone = reqPhone;
		this.reqArea = reqArea;
		this.reqElv = reqElv;
		this.reqHelp = reqHelp;
		this.reqNote = reqNote;
		this.reqHopeStart = reqHopeStart;
		this.reqHopeEnd = reqHopeEnd;
		this.reqBuildStart = reqBuildStart;
		this.reqBuildEnd = reqBuildEnd;
		this.proName = proName;
		this.paySend = paySend;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public String getPayBank() {
		return payBank;
	}

	public void setPayBank(String payBank) {
		this.payBank = payBank;
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

	public String getBsNum() {
		return bsNum;
	}

	public void setBsNum(String bsNum) {
		this.bsNum = bsNum;
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

	public String getBsName() {
		return bsName;
	}

	public void setBsName(String bsName) {
		this.bsName = bsName;
	}

	public String getBsPhone() {
		return bsPhone;
	}

	public void setBsPhone(String bsPhone) {
		this.bsPhone = bsPhone;
	}

	public String getBsAdd() {
		return bsAdd;
	}

	public void setBsAdd(String bsAdd) {
		this.bsAdd = bsAdd;
	}

	public String getBsBank() {
		return bsBank;
	}

	public void setBsBank(String bsBank) {
		this.bsBank = bsBank;
	}

	public String getBsAct() {
		return bsAct;
	}

	public void setBsAct(String bsAct) {
		this.bsAct = bsAct;
	}

	public int getReqPrice() {
		return reqPrice;
	}

	public void setReqPrice(int reqPrice) {
		this.reqPrice = reqPrice;
	}

	public String getReqAdd() {
		return reqAdd;
	}

	public void setReqAdd(String reqAdd) {
		this.reqAdd = reqAdd;
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

	public String getReqArea() {
		return reqArea;
	}

	public void setReqArea(String reqArea) {
		this.reqArea = reqArea;
	}

	public String getReqElv() {
		return reqElv;
	}

	public void setReqElv(String reqElv) {
		this.reqElv = reqElv;
	}

	public String getReqHelp() {
		return reqHelp;
	}

	public void setReqHelp(String reqHelp) {
		this.reqHelp = reqHelp;
	}

	public String getReqNote() {
		return reqNote;
	}

	public void setReqNote(String reqNote) {
		this.reqNote = reqNote;
	}

	public String getReqHopeStart() {
		return reqHopeStart;
	}

	public void setReqHopeStart(String reqHopeStart) {
		this.reqHopeStart = reqHopeStart;
	}

	public String getReqHopeEnd() {
		return reqHopeEnd;
	}

	public void setReqHopeEnd(String reqHopeEnd) {
		this.reqHopeEnd = reqHopeEnd;
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

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getPaySend() {
		return paySend;
	}

	public void setPaySend(String paySend) {
		this.paySend = paySend;
	}

	@Override
	public String toString() {
		return "UserRequestDetail [userId=" + userId + ", userName=" + userName + ", userPhone=" + userPhone
				+ ", payPrice=" + payPrice + ", payBank=" + payBank + ", payType=" + payType + ", payDate=" + payDate
				+ ", bsNum=" + bsNum + ", bsTitle=" + bsTitle + ", catName=" + catName + ", bsName=" + bsName
				+ ", bsPhone=" + bsPhone + ", bsAdd=" + bsAdd + ", bsBank=" + bsBank + ", bsAct=" + bsAct
				+ ", reqPrice=" + reqPrice + ", reqAdd=" + reqAdd + ", reqName=" + reqName + ", reqPhone=" + reqPhone
				+ ", reqArea=" + reqArea + ", reqElv=" + reqElv + ", reqHelp=" + reqHelp + ", reqNote=" + reqNote
				+ ", reqHopeStart=" + reqHopeStart + ", reqHopeEnd=" + reqHopeEnd + ", reqBuildStart=" + reqBuildStart
				+ ", reqBuildEnd=" + reqBuildEnd + ", proName=" + proName + ", paySend=" + paySend + "]";
	}

}
