package com.goodee.market.meetingboard.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodee.market.meetingboard.MeetingBoardDTO;
import com.goodee.market.meetingboard.util.MeetingBoardMemberPager;
import com.goodee.market.meetingboard.util.MeetingBoardPager;

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
	
	public List<MeetingBoardDTO> getMyList(MeetingBoardMemberPager pager) throws Exception {
		
		Long totalCount = meetingBoardMemberDAO.getMyListCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		return meetingBoardMemberDAO.getMyList(pager);
	}
	
}
