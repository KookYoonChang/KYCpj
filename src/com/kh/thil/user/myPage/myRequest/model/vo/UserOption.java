package com.kh.thil.user.myPage.myRequest.model.vo;

public class UserOption {
	private String optName;
	private String optOption;
	
	public UserOption() {}

	public UserOption(String optName, String optOption) {
		super();
		this.optName = optName;
		this.optOption = optOption;
	}

	public String getOptName() {
		return optName;
	}

	public void setOptName(String optName) {
		this.optName = optName;
	}

	public String getOptOption() {
		return optOption;
	}

	public void setOptOption(String optOption) {
		this.optOption = optOption;
	}

	@Override
	public String toString() {
		return "UserOption [optName=" + optName + ", optOption=" + optOption + "]";
	}
	
	

}
