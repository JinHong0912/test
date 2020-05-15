package com.greenart.sample.model;

public class CommentVO {

	private int cid;
	private int aid;
	private String comment;
	private String who;
	private String regdate;
	private String boardCode;// DB에 없고 따로 입력 해주었음, 저장하는것 보다 그냥 불러 오는 부분
	private String cnt;
	
	public String getCnt() {
		return cnt;
	}
	public void setCnt(String cnt) {
		this.cnt = cnt;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getWho() {
		return who;
	}
	public void setWho(String who) {
		this.who = who;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(String boardCode) {
		this.boardCode = boardCode;
	}
	
	
}
