package com.goodee.market.meetingboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MeetingBoardService {

	@Autowired
	private MeetingBoardDAO meetingBoardDAO;
	
	public List<MeetingBoardDTO> getMeetingBoardList() throws Exception {
		return meetingBoardDAO.getMeetingBoardList();
	}
	
}
