package com.goodee.market.meetingboard.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MeetingBoardCommentService {
	
	@Autowired
	private MeetingBoardCommentDAO meetingBoardCommentDAO;

	public int commentAdd(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		return meetingBoardCommentDAO.commentAdd(meetingBoardCommentDTO);
	}
	
	public List<MeetingBoardCommentDTO> getCommentList(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		return meetingBoardCommentDAO.getCommentList(meetingBoardCommentDTO);
	}
	
	public int setCommentDelete(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		return meetingBoardCommentDAO.setCommentDelete(meetingBoardCommentDTO);
	}
	
}
