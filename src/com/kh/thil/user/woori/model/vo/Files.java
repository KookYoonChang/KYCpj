package com.kh.thil.user.woori.model.vo;

public class Files {
	private String fno;
	private String fileType;
	private String originName;
	private String changeName;
	private String fileRoute;
	private String fileDate;
	private String fileLevel;
	private String fileStatus;
	
	public Files() {}

	public Files(String fno, String fileType, String originName, String changeName, String fileRoute, String fileDate,
			String fileLevel, String fileStatus) {
		super();
		this.fno = fno;
		this.fileType = fileType;
		this.originName = originName;
		this.changeName = changeName;
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

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getFileRoute() {
		return fileRoute;
	}

	public void setFileRoute(String fileRoute) {
		this.fileRoute = fileRoute;
	}

	public String getFileDate() {
		return fileDate;
	}

	public void setFileDate(String fileDate) {
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
		return "Files [fno=" + fno + ", fileType=" + fileType + ", originName=" + originName + ", changeName="
				+ changeName + ", fileRoute=" + fileRoute + ", fileDate=" + fileDate + ", fileLevel=" + fileLevel
				+ ", fileStatus=" + fileStatus + "]";
	}
	
	
}
