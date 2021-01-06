package com.kh.thil.user.portfolio.model.vo;

import java.sql.Date;

public class Portfolio {
	
	private String pfno; //포트폴리오 번호
	private String bno; //사업자번호
	private String cno; //업종코드
	private String portAdd; //포트폴리오 주소
	private int portPrice; //포트폴리오 계약금
	private String portNote; //포트폴리오 본문
	private String bsName; //사업자테이블에서 대표자명
	private String bsTitle; // 사업자테이블에서상호명
	private String catName; // 카테고리에서 Cno의 값을 이름으로 가지고옴
	private Date date; //포트폴리오 등록 날짜
	private String portStatus; //포트폴리오 상태
	
	public Portfolio() {}

	public String getPfno() {
		return pfno;
	}

	public void setPfno(String pfno) {
		this.pfno = pfno;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
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

	public String getBsName() {
		return bsName;
	}

	public void setBsName(String bsName) {
		this.bsName = bsName;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getPortStatus() {
		return portStatus;
	}

	public void setPortStatus(String portStatus) {
		this.portStatus = portStatus;
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

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public String getBsTitle() {
		return bsTitle;
	}

	public void setBsTitle(String bsTitle) {
		this.bsTitle = bsTitle;
	}

	@Override
	public String toString() {
		return "Portfolio [pfno=" + pfno + ", bno=" + bno + ", cno=" + cno + ", portAdd=" + portAdd + ", portPrice="
				+ portPrice + ", portNote=" + portNote + ", bsName=" + bsName + ", bsTitle=" + bsTitle + ", catName="
				+ catName + ", date=" + date + ", portStatus=" + portStatus + "]";
	}

	public Portfolio(String pfno, String bno, String cno, String portAdd, int portPrice, String portNote, String bsName,
			String bsTitle, String catName, Date date, String portStatus) {
		super();
		this.pfno = pfno;
		this.bno = bno;
		this.cno = cno;
		this.portAdd = portAdd;
		this.portPrice = portPrice;
		this.portNote = portNote;
		this.bsName = bsName;
		this.bsTitle = bsTitle;
		this.catName = catName;
		this.date = date;
		this.portStatus = portStatus;
	}


	
	


	
	
	
	
	
	
	
}
