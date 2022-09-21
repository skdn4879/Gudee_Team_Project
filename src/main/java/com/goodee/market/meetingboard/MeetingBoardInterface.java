package com.goodee.market.meetingboard;

import java.util.List;

public interface MeetingBoardInterface {

	public List<MeetingBoardDTO> getMeetingBoardList() throws Exception;
	
	public int setMeetingBoardAdd(MeetingBoardDTO meetingBoardDTO) throws Exception;
	
	public int setMeetingBoardThumnailAdd(MeetingBoardImageDTO meetingBoardImageDTO) throws Exception;
	
}
