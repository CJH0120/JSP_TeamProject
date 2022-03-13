package com.helpPet.app.member.vo;

public class MemberVO {
	
	private int userNum;
	private String userId;
	private String userName;
	private String userPw;
	private String userRePw;
	private String userNickName;
	private String userEmail;
	private String userHandPhone;
	private String userAnimalType;
	
	public MemberVO() {;}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserRePw() {
		return userRePw;
	}

	public void setUserRePw(String userRePw) {
		this.userRePw = userRePw;
	}

	public String getUserNickName() {
		return userNickName;
	}

	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	
	public String getUserHandPhone() {
		return userHandPhone;
	}

	public void setUserHandPhone(String string) {
		this.userHandPhone = string;
	}

	public String getUserAnimalType() {
		return userAnimalType;
	}

	public void setUserAnimalType(String userAnimalType) {
		this.userAnimalType = userAnimalType;
	}
	
	@Override
	public String toString() {
		String str = "userNum : " + userNum + "\n";
		str += "userId : " + userId + "\n";
		str += "userPw : " + userPw + "\n";
		str += "userName : " + userName + "\n";
		str += "userNickName : " + userNickName + "\n";
		str += "userEmail : " + userEmail + "\n";
		str += "userHandPhone : " + userHandPhone + "\n";
		str += "userAnimalType : " + userAnimalType + "\n";
	
		return str;
	}
	
	
	
	
	
	
}
