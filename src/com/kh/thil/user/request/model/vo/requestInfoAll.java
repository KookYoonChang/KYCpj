package com.kh.thil.user.request.model.vo;

public class requestInfoAll {
	private String rno;//의뢰코드
	private String optNo;//옵션코드
	private int optEaNum;//수량
	private String optEaVar;//기타
	
	public requestInfoAll() {}

	public requestInfoAll(String rno, String optNo, int optEaNum, String optEaVar) {
		super();
		this.rno = rno;
		this.optNo = optNo;
		this.optEaNum = optEaNum;
		this.optEaVar = optEaVar;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getOptNo() {
		return optNo;
	}

	public void setOptNo(String optNo) {
		this.optNo = optNo;
	}

	public int getOptEaNum() {
		return optEaNum;
	}

	public void setOptEaNum(int optEaNum) {
		this.optEaNum = optEaNum;
	}

	public String getOptEaVar() {
		return optEaVar;
	}

	public void setOptEaVar(String optEaVar) {
		this.optEaVar = optEaVar;
	}

	@Override
	public String toString() {
		return "requestInfoAll [rno=" + rno + ", optNo=" + optNo + ", optEaNum=" + optEaNum + ", optEaVar=" + optEaVar
				+ "]";
	}
	
	
}
