package com.kh.thil.user.myPage.myBsRequest.model.vo;

import java.sql.Date;

public class UserBsRequest {
	private String rno;
	private Date reqDate;
	private String reqName;
	private String reqAdd;
	private int reqPrice;
	private String proName;
	
	public UserBsRequest() {}

	public UserBsRequest(String rno, Date reqDate, String reqName, String reqAdd, int reqPrice, String proName) {
		super();
		this.rno = rno;
		this.reqDate = reqDate;
		this.reqName = reqName;
		this.reqAdd = reqAdd;
		this.reqPrice = reqPrice;
		this.proName = proName;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public Date getReqDate() {
		return reqDate;
	}

	public void setReqDate(Date reqDate) {
		this.reqDate = reqDate;
	}

	public String getReqName() {
		return reqName;
	}

	public void setReqName(String reqName) {
		this.reqName = reqName;
	}

	public String getReqAdd() {
		return reqAdd;
	}

	public void setReqAdd(String reqAdd) {
		this.reqAdd = reqAdd;
	}

	public int getReqPrice() {
		return reqPrice;
	}

	public void setReqPrice(int reqPrice) {
		this.reqPrice = reqPrice;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	@Override
	public String toString() {
		return "UserBsRequest [rno=" + rno + ", reqName=" + reqName + ", reqAdd=" + reqAdd + ", reqPrice=" + reqPrice
				+ ", proName=" + proName + "]";
	}

}
