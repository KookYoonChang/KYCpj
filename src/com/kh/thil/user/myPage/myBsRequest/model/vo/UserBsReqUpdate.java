package com.kh.thil.user.myPage.myBsRequest.model.vo;

public class UserBsReqUpdate {
	private String rno;
	private String reqBuildDate;
	private String reqPrice;
	
	public UserBsReqUpdate() {}

	public UserBsReqUpdate(String rno, String reqBuildDate, String reqPrice) {
		super();
		this.rno = rno;
		this.reqBuildDate = reqBuildDate;
		this.reqPrice = reqPrice;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getReqBuildDate() {
		return reqBuildDate;
	}

	public void setReqBuildDate(String reqBuildDate) {
		this.reqBuildDate = reqBuildDate;
	}

	public String getReqPrice() {
		return reqPrice;
	}

	public void setReqPrice(String reqPrice) {
		this.reqPrice = reqPrice;
	}

	@Override
	public String toString() {
		return "UserBsReqUpdate [rno=" + rno + ", reqBuildDate=" + reqBuildDate + ", reqPrice=" + reqPrice + "]";
	}
	
}
