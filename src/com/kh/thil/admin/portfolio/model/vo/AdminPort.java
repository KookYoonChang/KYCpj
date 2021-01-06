package com.kh.thil.admin.portfolio.model.vo;

import java.sql.Date;

public class AdminPort {
	private String pfNo;
	private String bsTitle;
	private String catName;
	private String portAdd;
	private int portPrice;
	private String portNote;
	private Date portDate;
	
	public AdminPort() {}

	public AdminPort(String pfNo, String bsTitle, String catName, String portAdd, int portPrice, String portNote,
			Date portDate) {
		super();
		this.pfNo = pfNo;
		this.bsTitle = bsTitle;
		this.catName = catName;
		this.portAdd = portAdd;
		this.portPrice = portPrice;
		this.portNote = portNote;
		this.portDate = portDate;
	}

	public String getPfNo() {
		return pfNo;
	}

	public void setPfNo(String pfNo) {
		this.pfNo = pfNo;
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

	public String getPortAdd() {
		return portAdd;
	}

	public void setPortAdd(String portAdd) {
		this.portAdd = portAdd;
	}

	public int getPortPrice() {
		return portPrice;
	}

	public void setPortPrice(int portPrice) {
		this.portPrice = portPrice;
	}

	public String getPortNote() {
		return portNote;
	}

	public void setPortNote(String portNote) {
		this.portNote = portNote;
	}

	public Date getPortDate() {
		return portDate;
	}

	public void setPortDate(Date portDate) {
		this.portDate = portDate;
	}

	@Override
	public String toString() {
		return "AdminPort [pfNo=" + pfNo + ", bsTitle=" + bsTitle + ", catName=" + catName + ", portAdd=" + portAdd
				+ ", portPrice=" + portPrice + ", portNote=" + portNote + ", portDate=" + portDate + "]";
	}
}
