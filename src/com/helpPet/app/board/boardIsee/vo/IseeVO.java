package com.helpPet.app.board.boardIsee.vo;

public class IseeVO {
	
	int reportBoardNum;
	private String userId;
	private String reportType;
	private String reportTitle;
	private String reportWriter; 
	private String reportDate;
	private String reportView;
	
	public IseeVO() {;}
	
	public int getReportBoardNum() {
		return reportBoardNum;
	}
	public void setReportBoardNum(int reportBoardNum) {
		this.reportBoardNum = reportBoardNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getReportType() {
		return reportType;
	}
	public void setReportType(String reportType) {
		this.reportType = reportType;
	}
	public String getReportTitle() {
		return reportTitle;
	}
	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}
	public String getReportWriter() {
		return reportWriter;
	}
	public void setReportWriter(String reportWriter) {
		this.reportWriter = reportWriter;
	}
	public String getReportDate() {
		return reportDate;
	}
	public void setReportDate(String reportDate) {
		this.reportDate = reportDate;
	}
	public String getReportView() {
		return reportView;
	}
	public void setReportView(String reportView) {
		this.reportView = reportView;
	}
}
