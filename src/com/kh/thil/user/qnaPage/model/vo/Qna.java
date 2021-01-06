package com.kh.thil.user.qnaPage.model.vo;

import java.sql.Date;

public class Qna {
	private String uno;      // 회원코드 
	private String qno;      // 문의 코드
	private String qkno;     // 문의 유형 코드
	private String rno;      // 의뢰번호
	private String qnaNote;  // 문의 내용
	private String qnaAns;   // 답변작성
	private Date qnaDate;    // 등록일
	private Date qnaAnsDate; //답변일
	private String qnaAnsYn;  //처리현황
	private String qnaStatus;  //문의상태
	
	public Qna() {
		
	}

	public Qna(String uno, String qno, String qkno, String rno, String qnaNote, String qnaAns, Date qnaDate,
			Date qnaAnsDate, String qnaAnsYn, String qnaStatus) {
		super();
		this.uno = uno;
		this.qno = qno;
		this.qkno = qkno;
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

	public void setQno(String qnn) {
		this.qno = qno;
	}

	public String getQkno() {
		return qkno;
	}

	public void setQkno(String qkno) {
		this.qkno = qkno;
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
		return "Qna [uno=" + uno + ", qno=" + qno + ", qkno=" + qkno + ", rno=" + rno + ", qnaNote=" + qnaNote
				+ ", qnaAns=" + qnaAns + ", qnaDate=" + qnaDate + ", qnaAnsDate=" + qnaAnsDate + ", qnaAnsYn="
				+ qnaAnsYn + ", qnaStatus=" + qnaStatus + "]";
	}
	
	
	
	
	

}
