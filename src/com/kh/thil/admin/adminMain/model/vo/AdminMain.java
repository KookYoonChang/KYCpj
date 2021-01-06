package com.kh.thil.admin.adminMain.model.vo;

import java.sql.Date;

public class AdminMain {
	private String rno;
	private String proName;
	private String reqBuildEnd;
	private String paySend;
	
	private String bno;
	private String bsNum;
	private String bsTitle;
	private String bsMember;
	
	private String qno;
	private String qkName;
	private Date qnaDate;
	private String qnaAnsYn;
	
	private String fastno;
	private String catName;
	private Date fastDate;
	private String fastAnsYn;
	
	public AdminMain() {}

	public AdminMain(String rno, String proName, String reqBuildEnd, String paySend, String bno, String bsNum,
			String bsTitle, String bsMember, String qno, String qkName, Date qnaDate, String qnaAnsYn, String fastno,
			String catName, Date fastDate, String fastAnsYn) {
		super();
		this.rno = rno;
		this.proName = proName;
		this.reqBuildEnd = reqBuildEnd;
		this.paySend = paySend;
		this.bno = bno;
		this.bsNum = bsNum;
		this.bsTitle = bsTitle;
		this.bsMember = bsMember;
		this.qno = qno;
		this.qkName = qkName;
		this.qnaDate = qnaDate;
		this.qnaAnsYn = qnaAnsYn;
		this.fastno = fastno;
		this.catName = catName;
		this.fastDate = fastDate;
		this.fastAnsYn = fastAnsYn;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getReqBuildEnd() {
		return reqBuildEnd;
	}

	public void setReqBuildEnd(String reqBuildEnd) {
		this.reqBuildEnd = reqBuildEnd;
	}

	public String getPaySend() {
		return paySend;
	}

	public void setPaySend(String paySend) {
		this.paySend = paySend;
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

	public String getBsTitle() {
		return bsTitle;
	}

	public void setBsTitle(String bsTitle) {
		this.bsTitle = bsTitle;
	}

	public String getBsMember() {
		return bsMember;
	}

	public void setBsMember(String bsMember) {
		this.bsMember = bsMember;
	}

	public String getQno() {
		return qno;
	}

	public void setQno(String qno) {
		this.qno = qno;
	}

	public String getQkName() {
		return qkName;
	}

	public void setQkName(String qkName) {
		this.qkName = qkName;
	}

	public Date getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}

	public String getQnaAnsYn() {
		return qnaAnsYn;
	}

	public void setQnaAnsYn(String qnaAnsYn) {
		this.qnaAnsYn = qnaAnsYn;
	}

	public String getFastno() {
		return fastno;
	}

	public void setFastno(String fastno) {
		this.fastno = fastno;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public Date getFastDate() {
		return fastDate;
	}

	public void setFastDate(Date fastDate) {
		this.fastDate = fastDate;
	}

	public String getFastAnsYn() {
		return fastAnsYn;
	}

	public void setFastAnsYn(String fastAnsYn) {
		this.fastAnsYn = fastAnsYn;
	}

	@Override
	public String toString() {
		return "AdminMain [rno=" + rno + ", proName=" + proName + ", reqBuildEnd=" + reqBuildEnd + ", paySend="
				+ paySend + ", bno=" + bno + ", bsNum=" + bsNum + ", bsTitle=" + bsTitle + ", bsMember=" + bsMember
				+ ", qno=" + qno + ", qkName=" + qkName + ", qnaDate=" + qnaDate + ", qnaAnsYn=" + qnaAnsYn
				+ ", fastno=" + fastno + ", catName=" + catName + ", fastDate=" + fastDate + ", fastAnsYn=" + fastAnsYn
				+ "]";
	}
	
}
