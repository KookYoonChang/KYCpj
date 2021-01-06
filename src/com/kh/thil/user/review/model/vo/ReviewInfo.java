package com.kh.thil.user.review.model.vo;

public class ReviewInfo {
	//합쳐서 만듦, 의뢰번호와 시공주소는 Request, bno, bstitle은 Business, 유저번호 유저닉네임은 MEMBER (session값)
	// catName은 Category payFee는 pay 컬럼에서 가지고온다
	private String rno; //의뢰 번호
	private String reqAdd; //시공 주소
	
	private String bsTitle; //업체명
	private String bno; // 사업자번호
	
	private String uno; // 유저번호
	private String userNick; //유저 닉네임
	
	private String catName; // 카테고리명
	
	private String payPrice; //견적가
	
	public ReviewInfo () {}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getReqAdd() {
		return reqAdd;
	}

	public void setReqAdd(String reqAdd) {
		this.reqAdd = reqAdd;
	}

	public String getBsTitle() {
		return bsTitle;
	}

	public void setBsTitle(String bsTitle) {
		this.bsTitle = bsTitle;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
		this.bno = bno;
	}

	public String getUno() {
		return uno;
	}

	public void setUno(String uno) {
		this.uno = uno;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public String getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(String payPrice) {
		this.payPrice = payPrice;
	}

	public ReviewInfo(String rno, String reqAdd, String bsTitle, String bno, String uno, String userNick,
			String catName, String payPrice) {
		super();
		this.rno = rno;
		this.reqAdd = reqAdd;
		this.bsTitle = bsTitle;
		this.bno = bno;
		this.uno = uno;
		this.userNick = userNick;
		this.catName = catName;
		this.payPrice = payPrice;
	}

	@Override
	public String toString() {
		return "ReviewInfo [rno=" + rno + ", reqAdd=" + reqAdd + ", bsTitle=" + bsTitle + ", bno=" + bno + ", uno="
				+ uno + ", userNick=" + userNick + ", catName=" + catName + ", payPrice=" + payPrice + "]";
	}
	
	
	
	
}
