package com.goodee.market.meetingboard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MeetingBoardDAO implements MeetingBoardInterface {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.goodee.market.meetingboard.MeetingBoardDAO.";
	
	@Override
	public List<MeetingBoardDTO> getMeetingBoardList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getMeetingBoardList");
	}
	
	@Override
	public int setMeetingBoardAdd(MeetingBoardDTO meetingBoardDTO) throws Exception {
		
		return sqlSession.insert(NAMESPACE + "setMeetingBoardAdd", meetingBoardDTO);
	}
	
	@Override
	public int setMeetingBoardThumnailAdd(MeetingBoardImageDTO meetingBoardImageDTO) throws Exception {
		
		return sqlSession.insert(NAMESPACE + "setMeetingBoardThumnailAdd", meetingBoardImageDTO);
	}
}
