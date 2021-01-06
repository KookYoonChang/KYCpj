package com.kh.thil.user.myPage.memberModify.model.vo;

import java.sql.Date;

public class Modify implements java.io.Serializable {
		private String uno;
		private String userId;
		private String userPwd;
		private String userNick;
		private String userName;
		private String userPhone;
		private String userBank;
		private String userAct;
		private Date userDate;
		private String userStatus;
		private String bno;

		public Modify() {}

		public Modify(String uno, String userId, String userPwd, String userNick, String userName, String userPhone,
				 String userBank, String userAct, Date userDate, String userStatus, String bno) {
			super();
			this.uno = uno;
			this.userId = userId;
			this.userPwd = userPwd;
			this.userNick = userNick;
			this.userName = userName;
			this.userPhone = userPhone;
			this.userBank = userBank;
			this.userAct = userAct;
			this.userDate = userDate;
			this.userStatus = userStatus;
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

		public String getUserPwd() {
			return userPwd;
		}

		public void setUserPwd(String userPwd) {
			this.userPwd = userPwd;
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

		public String getUserBank() {
			return userBank;
		}

		public void setUserBank(String userBank) {
			this.userBank = userBank;
		}

		public String getUserAct() {
			return userAct;
		}

		public void setUserAct(String userAct) {
			this.userAct = userAct;
		}

		public Date getUserDate() {
			return userDate;
		}

		public void setUserDate(Date userDate) {
			this.userDate = userDate;
		}

		public String getUserStatus() {
			return userStatus;
		}

		public void setUserStatus(String userStatus) {
			this.userStatus = userStatus;
		}

		public String getBno() {
			return bno;
		}

		public void setBno(String bno) {
			this.bno = bno;
		}

		@Override
		public String toString() {
			return "User [uno=" + uno + ", userId=" + userId + ", userPwd=" + userPwd + ", userNick=" + userNick
					+ ", userName=" + userName + ", userPhone=" + userPhone + ", userBank="
					+ userBank + ", userAct=" + userAct + ", userDate=" + userDate + ", userStatus=" + userStatus
					+ ", bno=" + bno + "]";
		}

		
}
