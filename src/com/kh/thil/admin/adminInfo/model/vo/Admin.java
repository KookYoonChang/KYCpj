package com.kh.thil.admin.adminInfo.model.vo;

import java.sql.Date;

public class Admin implements java.io.Serializable {
		private String ano;
		private String adminId;
		private String adminPwd;
		private String adminName;
		private Date enrollDate;
		private String status;
	
		public Admin() {}

		public Admin(String ano, String adminId, String adminPwd, String adminName, Date enrollDate, String status) {
			super();
			this.ano = ano;
			this.adminId = adminId;
			this.adminPwd = adminPwd;
			this.adminName = adminName;
			this.enrollDate = enrollDate;
			this.status = status;
		}

		public String getAno() {
			return ano;
		}

		public void setAno(String ano) {
			this.ano = ano;
		}

		public String getAdminId() {
			return adminId;
		}

		public void setAdminId(String adminId) {
			this.adminId = adminId;
		}

		public String getAdminPwd() {
			return adminPwd;
		}

		public void setAdminPwd(String adminPwd) {
			this.adminPwd = adminPwd;
		}

		public String getAdminName() {
			return adminName;
		}

		public void setAdminName(String adminName) {
			this.adminName = adminName;
		}

		public Date getEnrollDate() {
			return enrollDate;
		}

		public void setEnrollDate(Date enrollDate) {
			this.enrollDate = enrollDate;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		@Override
		public String toString() {
			return "Admin [ano=" + ano + ", adminId=" + adminId + ", adminPwd=" + adminPwd + ", adminName=" + adminName
					+ ", enrollDate=" + enrollDate + ", status=" + status + "]";
		}

		
}
