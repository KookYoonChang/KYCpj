package com.kh.thil.admin.business.model.vo;

import java.sql.Date;

public class AdminBusiness {
	private String bno;
	private String bsNum;
	private Date bsNumDate;
	private String bsTitle;
	private String bsAdd;
	private String bsName;
	private String bsPhone;
	private String bsBank;
	private String bsAct;
	private String bsNote;
	private String bsBlack;
	private Date bsDate;
	private String bsStatus;
	private String bsMember;
	
	public AdminBusiness() {}

	public AdminBusiness(String bno, String bsNum, Date bsNumDate, String bsTitle, String bsAdd, String bsName,
			String bsPhone, String bsBank, String bsAct, String bsNote, String bsBlack, Date bsDate, String bsStatus,
			String bsMember) {
		super();
		this.bno = bno;
		this.bsNum = bsNum;
		this.bsNumDate = bsNumDate;
		this.bsTitle = bsTitle;
		this.bsAdd = bsAdd;
		this.bsName = bsName;
		this.bsPhone = bsPhone;
		this.bsBank = bsBank;
		this.bsAct = bsAct;
		this.bsNote = bsNote;
		this.bsBlack = bsBlack;
		this.bsDate = bsDate;
		this.bsStatus = bsStatus;
		this.bsMember = bsMember;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
	}

	public String getBsNum() {
		return bsNum;
	}

	public void setBsNum(String bsNum) {
		this.bsNum = bsNum;
	}

	public Date getBsNumDate() {
		return bsNumDate;
	}

	public void setBsNumDate(Date bsNumDate) {
		this.bsNumDate = bsNumDate;
	}

	public String getBsTitle() {
		return bsTitle;
	}

	public void setBsTitle(String bsTitle) {
		this.bsTitle = bsTitle;
	}

	public String getBsAdd() {
		return bsAdd;
	}

	public void setBsAdd(String bsAdd) {
		this.bsAdd = bsAdd;
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

	public String getBsNote() {
		return bsNote;
	}

	public void setBsNote(String bsNote) {
		this.bsNote = bsNote;
	}

	public String getBsBlack() {
		return bsBlack;
	}

	public void setBsBlack(String bsBlack) {
		this.bsBlack = bsBlack;
	}

	public Date getBsDate() {
		return bsDate;
	}

	public void setBsDate(Date bsDate) {
		this.bsDate = bsDate;
	}

	public String getBsStatus() {
		return bsStatus;
	}

	public void setBsStatus(String bsStatus) {
		this.bsStatus = bsStatus;
	}

	public String getBsMember() {
		return bsMember;
	}

	public void setBsMember(String bsMember) {
		this.bsMember = bsMember;
	}

	@Override
	public String toString() {
		return "Business [bno=" + bno + ", bsNum=" + bsNum + ", bsNumDate=" + bsNumDate + ", bsTitle=" + bsTitle
				+ ", bsAdd=" + bsAdd + ", bsName=" + bsName + ", bsPhone=" + bsPhone + ", bsBank=" + bsBank + ", bsAct="
				+ bsAct + ", bsNote=" + bsNote + ", bsBlack=" + bsBlack + ", bsDate=" + bsDate + ", bsStatus="
				+ bsStatus + ", bsMember=" + bsMember + "]";
	}

	
	
}
