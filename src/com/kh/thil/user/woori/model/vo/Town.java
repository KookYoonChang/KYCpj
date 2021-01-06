package com.kh.thil.user.woori.model.vo;

import java.sql.Date;

public class Town implements java.io.Serializable{
	private String bno;
	private String bsTitle;
	private String bsAdd;
	private String bsName;
	private String bsPhone;
	private String bsNote;
	private String bsYear;
	private String bsAs;
	private String catName;
	private String pfno;
	private String cno;
	private String portAdd;
	private String portNote;
	private int portPrice;
	private Date portDate;
	private String portStatus;
	
	public Town() {}

	public Town(String bno, String bsTitle, String bsAdd, String bsName, String bsPhone, String bsNote, String bsYear,
			String bsAs, String catName, String pfno, String cno, String portAdd, String portNote, int portPrice,
			Date portDate, String portStatus) {
		super();
		this.bno = bno;
		this.bsTitle = bsTitle;
		this.bsAdd = bsAdd;
		this.bsName = bsName;
		this.bsPhone = bsPhone;
		this.bsNote = bsNote;
		this.bsYear = bsYear;
		this.bsAs = bsAs;
		this.catName = catName;
		this.pfno = pfno;
		this.cno = cno;
		this.portAdd = portAdd;
		this.portNote = portNote;
		this.portPrice = portPrice;
		this.portDate = portDate;
		this.portStatus = portStatus;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
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

	public String getBsNote() {
		return bsNote;
	}

	public void setBsNote(String bsNote) {
		this.bsNote = bsNote;
	}

	public String getBsYear() {
		return bsYear;
	}

	public void setBsYear(String bsYear) {
		this.bsYear = bsYear;
	}

	public String getBsAs() {
		return bsAs;
	}

	public void setBsAs(String bsAs) {
		this.bsAs = bsAs;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public String getPfno() {
		return pfno;
	}

	public void setPfno(String pfno) {
		this.pfno = pfno;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getPortAdd() {
		return portAdd;
	}

	public void setPortAdd(String portAdd) {
		this.portAdd = portAdd;
	}

	public String getPortNote() {
		return portNote;
	}

	public void setPortNote(String portNote) {
		this.portNote = portNote;
	}

	public int getPortPrice() {
		return portPrice;
	}

	public void setPortPrice(int portPrice) {
		this.portPrice = portPrice;
	}

	public Date getPortDate() {
		return portDate;
	}

	public void setPortDate(Date portDate) {
		this.portDate = portDate;
	}

	public String getPortStatus() {
		return portStatus;
	}

	public void setPortStatus(String portStatus) {
		this.portStatus = portStatus;
	}

	@Override
	public String toString() {
		return "Town [bno=" + bno + ", bsTitle=" + bsTitle + ", bsAdd=" + bsAdd + ", bsName=" + bsName + ", bsPhone="
				+ bsPhone + ", bsNote=" + bsNote + ", bsYear=" + bsYear + ", bsAs=" + bsAs + ", catName=" + catName
				+ ", pfno=" + pfno + ", cno=" + cno + ", portAdd=" + portAdd + ", portNote=" + portNote + ", portPrice="
				+ portPrice + ", portDate=" + portDate + ", portStatus=" + portStatus + "]";
	}

	
	}