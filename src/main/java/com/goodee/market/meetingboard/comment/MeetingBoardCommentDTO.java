package com.goodee.market.meetingboard.comment;

import com.goodee.market.member.MemberDTO;
import com.goodee.market.util.CommentDTO;

public class MeetingBoardCommentDTO extends CommentDTO {

	private Long meetingBoardNum;
	private MemberDTO memberDTO;

	public Long getMeetingBoardNum() {
		return meetingBoardNum;
	}

	public void setMeetingBoardNum(Long meetingBoardNum) {
		this.meetingBoardNum = meetingBoardNum;
	}

	public MemberDTO getMemberDTO() {
		return memberDTO;
	}

	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	
}
