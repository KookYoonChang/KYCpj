package com.kh.thil.admin.qna.model.vo;

import java.sql.Date;

public class AdminQna {
	
	private String uno;
	private String qno;
	private String qkName;
	private String rno;
	private String qnaNote;
	private String qnaAns;
	private Date qnaDate;
	private Date qnaAnsDate;
	private String qnaAnsYn;
	private String qnaStatus;

	public AdminQna() {}

	public AdminQna(String uno, String qno, String qkName, String rno, String qnaNote, String qnaAns, Date qnaDate,
			Date qnaAnsDate, String qnaAnsYn, String qnaStatus) {
		super();
		this.uno = uno;
		this.qno = qno;
		this.qkName = qkName;
		this.rno = rno;
		this.qnaNote = qnaNote;
		this.qnaAns = qnaAns;
		this.qnaDate = qnaDate;
		this.qnaAnsDate = qnaAnsDate;
		this.qnaAnsYn = qnaAnsYn;
		this.qnaStatus = qnaStatus;
	}

	public String getUno() {
		return uno;
	}

	public void setUno(String uno) {
		this.uno = uno;
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

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getQnaNote() {
		return qnaNote;
	}

	public void setQnaNote(String qnaNote) {
		this.qnaNote = qnaNote;
	}

	public String getQnaAns() {
		return qnaAns;
	}

	public void setQnaAns(String qnaAns) {
		this.qnaAns = qnaAns;
	}

	public Date getQnaDate() {
		return qnaDate;
	}

	public void setQnaDate(Date qnaDate) {
		this.qnaDate = qnaDate;
	}

	public Date getQnaAnsDate() {
		return qnaAnsDate;
	}

	public void setQnaAnsDate(Date qnaAnsDate) {
		this.qnaAnsDate = qnaAnsDate;
	}

	public String getQnaAnsYn() {
		return qnaAnsYn;
	}

	public void setQnaAnsYn(String qnaAnsYn) {
		this.qnaAnsYn = qnaAnsYn;
	}

	public String getQnaStatus() {
		return qnaStatus;
	}

	public void setQnaStatus(String qnaStatus) {
		this.qnaStatus = qnaStatus;
	}

	@Override
	public String toString() {
		return "Qna [uno=" + uno + ", qno=" + qno + ", qkName=" + qkName + ", rno=" + rno + ", qnaNote=" + qnaNote
				+ ", qnaAns=" + qnaAns + ", qnaDate=" + qnaDate + ", qnaAnsDate=" + qnaAnsDate + ", qnaAnsYn="
				+ qnaAnsYn + ", qnaStatus=" + qnaStatus + "]";
	}

	
}
