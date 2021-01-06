package com.kh.thil.user.business.model.vo;

import java.sql.Date;

public class Business {
	private String bno; //사업자코드
	private String bsNum; //사업자번호
	private String bsNumDate; //참고하세요 DEFAULT값이 아니라서 전환할때 스트링받고 쿼리문에서 처리할예정임. 원래는 DATE유형.
	private String bsTitle; //상호명
	private String bsAdd; //사업자주소
	private String bsName; //대표자명
	private String bsPhone; //대표번호
	private String bsBank; //대표은행
	private String bsAct; //대표계좌번호
	private String bsNote; //대표소개글 
	private String bsBlack; //블랙리스트
	private String bsDate; //이것도 마찬가지임, sysdate쓰는부분이라 쿼리문에서만 샤용, 값 가지고올땐 String이 편하다.
	private String bsStatus; //등록여부
	private String bsMember; //사업자상태
	private String bsYear; //사업자경력
	private String bsCorp; //법인여부
	private String bsAs; // A/S여부
	private int bsDepo; //계약금
	
	
	public Business() {}


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


	public String getBsNumDate() {
		return bsNumDate;
	}


	public void setBsNumDate(String bsNumDate) {
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


	public String getBsDate() {
		return bsDate;
	}


	public void setBsDate(String bsDate) {
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


	public String getBsYear() {
		return bsYear;
	}


	public void setBsYear(String bsYear) {
		this.bsYear = bsYear;
	}


	public String getBsCorp() {
		return bsCorp;
	}


	public void setBsCorp(String bsCorp) {
		this.bsCorp = bsCorp;
	}


	public String getBsAs() {
		return bsAs;
	}


	public void setBsAs(String bsAs) {
		this.bsAs = bsAs;
	}


	public int getBsDepo() {
		return bsDepo;
	}


	public void setBsDepo(int bsDepo) {
		this.bsDepo = bsDepo;
	}


	public Business(String bno, String bsNum, String bsNumDate, String bsTitle, String bsAdd, String bsName,
			String bsPhone, String bsBank, String bsAct, String bsNote, String bsBlack, String bsDate, String bsStatus,
			String bsMember, String bsYear, String bsCorp, String bsAs, int bsDepo) {
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
		this.bsYear = bsYear;
		this.bsCorp = bsCorp;
		this.bsAs = bsAs;
		this.bsDepo = bsDepo;
	}


	@Override
	public String toString() {
		return "Business [bno=" + bno + ", bsNum=" + bsNum + ", bsNumDate=" + bsNumDate + ", bsTitle=" + bsTitle
				+ ", bsAdd=" + bsAdd + ", bsName=" + bsName + ", bsPhone=" + bsPhone + ", bsBank=" + bsBank + ", bsAct="
				+ bsAct + ", bsNote=" + bsNote + ", bsBlack=" + bsBlack + ", bsDate=" + bsDate + ", bsStatus="
				+ bsStatus + ", bsMember=" + bsMember + ", bsYear=" + bsYear + ", bsCorp=" + bsCorp + ", bsAs=" + bsAs
				+ ", bsDepo=" + bsDepo + "]";
	}

	
	
	
	
}
