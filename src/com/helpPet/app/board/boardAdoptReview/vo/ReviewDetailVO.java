package com.helpPet.app.board.boardAdoptReview.vo;

public class ReviewDetailVO {
	private int reviewBoardNum;
	private int userNum;                     
	private String userId;                   
	private String reviewTitle;              
	private String reviewContent;           
	private int reviewReadCount;             
	private String reviewDate;
	
	ReviewDetailVO(){;}

	public int getReviewBoardNum() {
		return reviewBoardNum;
	}

	public void setReviewBoardNum(int reviewBoardNum) {
		this.reviewBoardNum = reviewBoardNum;
	}

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

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public int getReviewReadCount() {
		return reviewReadCount;
	}

	public void setReviewReadCount(int reviewReadCount) {
		this.reviewReadCount = reviewReadCount;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
	
	
}
