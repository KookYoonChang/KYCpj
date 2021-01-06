package com.kh.thil.admin.files.model.vo;

import java.sql.Date;

public class AdminFiles {
	private String fno;
	private String fileType;
	private String fileOriginName;
	private String fileChangeName;
	private String fileRoute;
	private Date fileDate;
	private String fileLevel;
	private String fileStatus;
	
	public AdminFiles() {}

	public AdminFiles(String fno, String fileType, String fileOriginName, String fileChangeName, String fileRoute,
			Date fileDate, String fileLevel, String fileStatus) {
		super();
		this.fno = fno;
		this.fileType = fileType;
		this.fileOriginName = fileOriginName;
		this.fileChangeName = fileChangeName;
		this.fileRoute = fileRoute;
		this.fileDate = fileDate;
		this.fileLevel = fileLevel;
		this.fileStatus = fileStatus;
	}

	public String getFno() {
		return fno;
	}

	public void setFno(String fno) {
		this.fno = fno;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getFileOriginName() {
		return fileOriginName;
	}

	public void setFileOriginName(String fileOriginName) {
		this.fileOriginName = fileOriginName;
	}

	public String getFileChangeName() {
		return fileChangeName;
	}

	public void setFileChangeName(String fileChangeName) {
		this.fileChangeName = fileChangeName;
	}

	public String getFileRoute() {
		return fileRoute;
	}

	public void setFileRoute(String fileRoute) {
		this.fileRoute = fileRoute;
	}

	public Date getFileDate() {
		return fileDate;
	}

	public void setFileDate(Date fileDate) {
		this.fileDate = fileDate;
	}

	public String getFileLevel() {
		return fileLevel;
	}

	public void setFileLevel(String fileLevel) {
		this.fileLevel = fileLevel;
	}

	public String getFileStatus() {
		return fileStatus;
	}

	public void setFileStatus(String fileStatus) {
		this.fileStatus = fileStatus;
	}

	@Override
	public String toString() {
		return "AdminFiles [fno=" + fno + ", fileType=" + fileType + ", fileOriginName=" + fileOriginName
				+ ", fileChangeName=" + fileChangeName + ", fileRoute=" + fileRoute + ", fileDate=" + fileDate
				+ ", fileLevel=" + fileLevel + ", fileStatus=" + fileStatus + "]";
	}

}
