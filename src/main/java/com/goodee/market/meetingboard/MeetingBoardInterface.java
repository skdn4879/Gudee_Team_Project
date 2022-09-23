package com.goodee.market.meetingboard;

import java.util.List;

import com.goodee.market.meetingboard.util.MeetingBoardPager;

public interface MeetingBoardInterface {

	public List<MeetingBoardDTO> getMeetingBoardList(MeetingBoardPager pager) throws Exception;
	
	public int setMeetingBoardAdd(MeetingBoardDTO meetingBoardDTO) throws Exception;
	
	public int setMeetingBoardThumnailAdd(MeetingBoardImageDTO meetingBoardImageDTO) throws Exception;
	
	public Long getCount(MeetingBoardPager pager) throws Exception;
	
}
