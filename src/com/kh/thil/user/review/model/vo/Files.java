package com.kh.thil.user.review.model.vo;

import java.sql.Date;

public class Files {
	
	private String fno; //파일코드
	private String filetype; ///파일구분
	private String originName; //파일원래이름
	private String changeName; //파일바뀐이름
	private String fileRoute; //파일경로
	private Date date; //파일작성일
	private String fileLevel; //파일레벨(포트폴리오는1 리뷰는0)
	private String fileStatus; //파일상태 (Y)
	
	public Files() {}
	public String getFno() {
		return fno;
	}
	public void setFno(String fno) {
		this.fno = fno;
	}
	public String getFiletype() {
		return filetype;
	}
	public void setFiletype(String filetype) {
		this.filetype = filetype;
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
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
	public Files(String fno, String filetype, String originName, String changeName, String fileRoute, Date date,
			String fileLevel, String fileStatus) {
		super();
		this.fno = fno;
		this.filetype = filetype;
		this.originName = originName;
		this.changeName = changeName;
		this.fileRoute = fileRoute;
		this.date = date;
		this.fileLevel = fileLevel;
		this.fileStatus = fileStatus;
	}
	@Override
	public String toString() {
		return "File [fno=" + fno + ", filetype=" + filetype + ", originName=" + originName + ", changeName="
				+ changeName + ", fileRoute=" + fileRoute + ", date=" + date + ", fileLevel=" + fileLevel
				+ ", fileStatus=" + fileStatus + "]";
	}
	
	
}
