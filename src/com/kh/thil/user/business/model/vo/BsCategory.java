package com.kh.thil.user.business.model.vo;

public class BsCategory {
	private String cno; //카테고리번호
	private String bno; //사업자번호
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getBno() {
		return bno;
	}
	public void setBno(String bno) {
		this.bno = bno;
	}
	public BsCategory(String cno, String bno) {
		super();
		this.cno = cno;
		this.bno = bno;
	}
	@Override
	public String toString() {
		return "BsCategory [cno=" + cno + ", bno=" + bno + "]";
	}
	
	
}
