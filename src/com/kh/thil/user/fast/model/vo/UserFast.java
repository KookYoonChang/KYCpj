package com.kh.thil.user.fast.model.vo;

public class UserFast {
	private String cno;
	private String fastArea;
	private String fastAdd;
	private String fastHopeDate;
	private String fastName;
	private String fastPhone;
	private String fastNote;
	
	public UserFast() {}

	public UserFast(String cno, String fastArea, String fastAdd, String fastHopeDate, String fastName,
			String fastPhone, String fastNote) {
		super();
		this.cno = cno;
		this.fastArea = fastArea;
		this.fastAdd = fastAdd;
		this.fastHopeDate = fastHopeDate;
		this.fastName = fastName;
		this.fastPhone = fastPhone;
		this.fastNote = fastNote;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getFastArea() {
		return fastArea;
	}

	public void setFastArea(String fastArea) {
		this.fastArea = fastArea;
	}

	public String getFastAdd() {
		return fastAdd;
	}

	public void setFastAdd(String fastAdd) {
		this.fastAdd = fastAdd;
	}

	public String getFastHopeDate() {
		return fastHopeDate;
	}

	public void setFastHopeDate(String fastHopeDate) {
		this.fastHopeDate = fastHopeDate;
	}

	public String getFastName() {
		return fastName;
	}

	public void setFastName(String fastName) {
		this.fastName = fastName;
	}

	public String getFastPhone() {
		return fastPhone;
	}

	public void setFastPhone(String fastPhone) {
		this.fastPhone = fastPhone;
	}

	public String getFastNote() {
		return fastNote;
	}

	public void setFastNote(String fastNote) {
		this.fastNote = fastNote;
	}

	@Override
	public String toString() {
		return "UserReqFast [cno=" + cno + ", fastArea=" + fastArea + ", fastAdd=" + fastAdd + ", fastHopeDate="
				+ fastHopeDate + ", fastName=" + fastName + ", fastPhone=" + fastPhone + ", fastNote=" + fastNote + "]";
	}
}
