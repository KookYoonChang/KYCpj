package com.kh.thil.user.request.model.vo;


public class RequestDobae implements java.io.Serializable{
	private String part;
	private int broom;
	private int room;
	private int size;
	private String wall;
	private String ceil;
	private String molding;
	private String balco;
	
	public RequestDobae() {}

	public RequestDobae(String part, int broom, int room, int size, String wall, String ceil, String molding,
			String balco) {
		super();
		this.part = part;
		this.broom = broom;
		this.room = room;
		this.size = size;
		this.wall = wall;
		this.ceil = ceil;
		this.molding = molding;
		this.balco = balco;
	}

	public String getPart() {
		return part;
	}

	public void setPart(String part) {
		this.part = part;
	}

	public int getBroom() {
		return broom;
	}

	public void setBroom(int broom) {
		this.broom = broom;
	}

	public int getRoom() {
		return room;
	}

	public void setRoom(int room) {
		this.room = room;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public String getWall() {
		return wall;
	}

	public void setWall(String wall) {
		this.wall = wall;
	}

	public String getCeil() {
		return ceil;
	}

	public void setCeil(String ceil) {
		this.ceil = ceil;
	}

	public String getMolding() {
		return molding;
	}
	public void setMolding(String molding) {
		this.molding = molding;
	}

	public String getBalco() {
		return balco;
	}

	public void setBalco(String balco) {
		this.balco = balco;
	}

	@Override
	public String toString() {
		return "RequestDobae [part=" + part + ", broom=" + broom + ", room=" + room + ", size=" + size + ", wall="
				+ wall + ", ceil=" + ceil + ", molding=" + molding + ", balco=" + balco + "]";
	}



	
	
	
}
