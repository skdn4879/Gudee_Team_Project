package com.goodee.market.meetingboard.member;

public class MeetingBoardMemberDTO {

	private Long mbmNum;
	private Long hostMemberNum;
	private Long meetingBoardNum;
	private Long requestMemberNum;
	private Integer approvalStatus;
	private String approvalContents;
	
	public Long getMbmNum() {
		return mbmNum;
	}
	public void setMbmNum(Long mbmNum) {
		this.mbmNum = mbmNum;
	}
	public Long getHostMemberNum() {
		return hostMemberNum;
	}
	public void setHostMemberNum(Long hostMemberNum) {
		this.hostMemberNum = hostMemberNum;
	}
	public Long getMeetingBoardNum() {
		return meetingBoardNum;
	}
	public void setMeetingBoardNum(Long meetingBoardNum) {
		this.meetingBoardNum = meetingBoardNum;
	}
	public Long getRequestMemberNum() {
		return requestMemberNum;
	}
	public void setRequestMemberNum(Long requestMemberNum) {
		this.requestMemberNum = requestMemberNum;
	}
	public Integer getApprovalStatus() {
		return approvalStatus;
	}
	public void setApprovalStatus(Integer approvalStatus) {
		this.approvalStatus = approvalStatus;
	}
	public String getApprovalContents() {
		return approvalContents;
	}
	public void setApprovalContents(String approvalContents) {
		this.approvalContents = approvalContents;
	}
	
}
