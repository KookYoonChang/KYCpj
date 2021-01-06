package com.kh.thil.admin.member.adminUserInfo.model.vo;

import java.sql.Date;

public class AdminUserInfo {
	private String uno;
	private String userId;
	private String userNick;
	private String userName;
	private String userPhone;
	private Date userDate;
	private String bno;
	
	public AdminUserInfo() {}

	public AdminUserInfo(String uno, String userId, String userNick, String userName, String userPhone, Date userDate,
			String bno) {
		super();
		this.uno = uno;
		this.userId = userId;
		this.userNick = userNick;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userDate = userDate;
		this.bno = bno;
	}

	public String getUno() {
		return uno;
	}

	public void setUno(String uno) {
		this.uno = uno;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public Date getUserDate() {
		return userDate;
	}

	public void setUserDate(Date userDate) {
		this.userDate = userDate;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
	}

	@Override
	public String toString() {
		return "AdminUserInfo [uno=" + uno + ", userId=" + userId + ", userNick=" + userNick + ", userName=" + userName
				+ ", userPhone=" + userPhone + ", userDate=" + userDate + ", bno=" + bno + "]";
	}
	
}
