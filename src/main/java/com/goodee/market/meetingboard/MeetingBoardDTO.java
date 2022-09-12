package com.goodee.market.meetingboard;

import java.sql.Date;

public class MeetingBoardDTO {

	private Long meetingBoardNum;
	private Long meetingBoardWriter;
	private String meetingBoardTitle;
	private String meetingBoardContents;
	private Date meetingBoardRegDate;
	private Date meetingBoardDueDate;
	private Long meetingBoardTotalCost;
	private String meetingBoardLocation;
	private Integer meetingBoardCurrentMember;
	private Integer meetingBoardMaxMember;
	private String meetingBoardCategory;
	
	public Long getMeetingBoardNum() {
		return meetingBoardNum;
	}
	public void setMeetingBoardNum(Long meetingBoardNum) {
		this.meetingBoardNum = meetingBoardNum;
	}
	public Long getMeetingBoardWriter() {
		return meetingBoardWriter;
	}
	public void setMeetingBoardWriter(Long meetingBoardWriter) {
		this.meetingBoardWriter = meetingBoardWriter;
	}
	public String getMeetingBoardTitle() {
		return meetingBoardTitle;
	}
	public void setMeetingBoardTitle(String meetingBoardTitle) {
		this.meetingBoardTitle = meetingBoardTitle;
	}
	public String getMeetingBoardContents() {
		return meetingBoardContents;
	}
	public void setMeetingBoardContents(String meetingBoardContents) {
		this.meetingBoardContents = meetingBoardContents;
	}
	public Date getMeetingBoardRegDate() {
		return meetingBoardRegDate;
	}
	public void setMeetingBoardRegDate(Date meetingBoardRegDate) {
		this.meetingBoardRegDate = meetingBoardRegDate;
	}
	public Date getMeetingBoardDueDate() {
		return meetingBoardDueDate;
	}
	public void setMeetingBoardDueDate(Date meetingBoardDueDate) {
		this.meetingBoardDueDate = meetingBoardDueDate;
	}
	public Long getMeetingBoardTotalCost() {
		return meetingBoardTotalCost;
	}
	public void setMeetingBoardTotalCost(Long meetingBoardTotalCost) {
		this.meetingBoardTotalCost = meetingBoardTotalCost;
	}
	public String getMeetingBoardLocation() {
		return meetingBoardLocation;
	}
	public void setMeetingBoardLocation(String meetingBoardLocation) {
		this.meetingBoardLocation = meetingBoardLocation;
	}
	public Integer getMeetingBoardCurrentMember() {
		return meetingBoardCurrentMember;
	}
	public void setMeetingBoardCurrentMember(Integer meetingBoardCurrentMember) {
		this.meetingBoardCurrentMember = meetingBoardCurrentMember;
	}
	public Integer getMeetingBoardMaxMember() {
		return meetingBoardMaxMember;
	}
	public void setMeetingBoardMaxMember(Integer meetingBoardMaxMember) {
		this.meetingBoardMaxMember = meetingBoardMaxMember;
	}
	public String getMeetingBoardCategory() {
		return meetingBoardCategory;
	}
	public void setMeetingBoardCategory(String meetingBoardCategory) {
		this.meetingBoardCategory = meetingBoardCategory;
	}
	
}