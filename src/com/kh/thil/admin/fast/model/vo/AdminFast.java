package com.kh.thil.admin.fast.model.vo;

import java.sql.Date;

public class AdminFast {
	private String fastNo;
	private String catName;
	private String fastArea;
	private String fastAdd;
	private String fastHopeDate;
	private String fastName;
	private String fastPhone;
	private String fastNote;
	private String fastAnsYn;
	private Date fastDate;
	private String fastStatus;
	private Date fastAnsDate;

	public AdminFast() {}

	public AdminFast(String fastNo, String catName, String fastArea, String fastAdd, String fastHopeDate,
			String fastName, String fastPhone, String fastNote, String fastAnsYn, Date fastDate, String fastStatus,
			Date fastAnsDate) {
		super();
		this.fastNo = fastNo;
		this.catName = catName;
		this.fastArea = fastArea;
		this.fastAdd = fastAdd;
		this.fastHopeDate = fastHopeDate;
		this.fastName = fastName;
		this.fastPhone = fastPhone;
		this.fastNote = fastNote;
		this.fastAnsYn = fastAnsYn;
		this.fastDate = fastDate;
		this.fastStatus = fastStatus;
		this.fastAnsDate = fastAnsDate;
	}

	public String getFastNo() {
		return fastNo;
	}

	public void setFastNo(String fastNo) {
		this.fastNo = fastNo;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public String getFastArea() {
		return fastArea;
	}

	public void setFastArea(String fastArea) {
		this.fastArea = fastArea;
	}

	public String getFastAdd() {
		return fastAdd;
	}

	public void setFastAdd(String fastAdd) {
		this.fastAdd = fastAdd;
	}

	public String getFastHopeDate() {
		return fastHopeDate;
	}

	public void setFastHopeDate(String fastHopeDate) {
		this.fastHopeDate = fastHopeDate;
	}

	public String getFastName() {
		return fastName;
	}

	public void setFastName(String fastName) {
		this.fastName = fastName;
	}

	public String getFastPhone() {
		return fastPhone;
	}

	public void setFastPhone(String fastPhone) {
		this.fastPhone = fastPhone;
	}

	public String getFastNote() {
		return fastNote;
	}

	public void setFastNote(String fastNote) {
		this.fastNote = fastNote;
	}

	public String getFastAnsYn() {
		return fastAnsYn;
	}

	public void setFastAnsYn(String fastAnsYn) {
		this.fastAnsYn = fastAnsYn;
	}

	public Date getFastDate() {
		return fastDate;
	}

	public void setFastDate(Date fastDate) {
		this.fastDate = fastDate;
	}

	public String getFastStatus() {
		return fastStatus;
	}

	public void setFastStatus(String fastStatus) {
		this.fastStatus = fastStatus;
	}

	public Date getFastAnsDate() {
		return fastAnsDate;
	}

	public void setFastAnsDate(Date fastAnsDate) {
		this.fastAnsDate = fastAnsDate;
	}

	@Override
	public String toString() {
		return "AdminFast [fastNo=" + fastNo + ", catName=" + catName + ", fastArea=" + fastArea + ", fastAdd="
				+ fastAdd + ", fastHopeDate=" + fastHopeDate + ", fastName=" + fastName + ", fastPhone=" + fastPhone
				+ ", fastNote=" + fastNote + ", fastAnsYn=" + fastAnsYn + ", fastDate=" + fastDate + ", fastStatus="
				+ fastStatus + ", fastAnsDate=" + fastAnsDate + "]";
	}

}
