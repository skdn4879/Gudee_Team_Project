package com.goodee.market.meetingboard.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MeetingBoardMemberService {

	@Autowired
	private MeetingBoardMemberDAO meetingBoardMemberDAO;
	
	public int setAddMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.setAddMeetingBoardMember(meetingBoardMemberDTO);
	}
	
	public int setAddOwnerMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.setAddOwnerMeetingBoardMember(meetingBoardMemberDTO);
	}

	public boolean getJoinExist(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		Long result = meetingBoardMemberDAO.getJoinExist(meetingBoardMemberDTO);
		boolean isExist = false;
		
		if(result > 0) {
			isExist = true;
		}
		
		return isExist;
		
	}
	
	public int setDeleteMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return meetingBoardMemberDAO.setDeleteMeetingBoardMember(meetingBoardMemberDTO);
	}
	
}
