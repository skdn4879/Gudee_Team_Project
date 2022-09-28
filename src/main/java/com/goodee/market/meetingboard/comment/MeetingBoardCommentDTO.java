package com.goodee.market.meetingboard.comment;

import com.goodee.market.util.CommentDTO;

public class MeetingBoardCommentDTO extends CommentDTO {

	private Long meetingBoardNum;

	public Long getMeetingBoardNum() {
		return meetingBoardNum;
	}

	public void setMeetingBoardNum(Long meetingBoardNum) {
		this.meetingBoardNum = meetingBoardNum;
	}
	
}
