package com.helpPet.app.board.boardAdoptReview.vo;

public class ReviewVO {
	private int reviewBoardNum;
	private String userId;
	private String userNum;
	private String reviewTitle;
	private int reviewLike;
	private String reviewDate;
	private String reviewContent;           
	private int reviewReadCount;
	
	public ReviewVO() {;}

	public int getReviewBoardNum() {
		return reviewBoardNum;
	}

	public void setReviewBoardNum(int reviewBoardNum) {
		this.reviewBoardNum = reviewBoardNum;
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

	public int getReviewLike() {
		return reviewLike;
	}

	public void setReviewLike(int reviewLike) {
		this.reviewLike = reviewLike;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}

	public String getUserNum() {
		return userNum;
	}

	public void setUserNum(String userNum) {
		this.userNum = userNum;
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
	
	
}
