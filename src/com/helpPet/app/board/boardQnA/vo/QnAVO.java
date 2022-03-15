package com.helpPet.app.board.boardQnA.vo;

public class QnAVO {
	private String userName;
	private String userEmail;
	private String userTitle;
	private String userContent;
	
	public QnAVO() {;}
	
	public String getuserName() {
		return userName;
	}
	public void setuserName(String userName) {
		this.userName = userName;
	}
	public String getuserEmail() {
		return userEmail;
	}
	public void setuserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getuserTitle() {
		return userTitle;
	}
	public void setuserTitle(String userTitle) {
		this.userTitle = userTitle;
	}
	public String getuserContent() {
		return userContent;
	}
	public void setuserContent(String userContent) {
		this.userContent = userContent;
	}

	
		
}
