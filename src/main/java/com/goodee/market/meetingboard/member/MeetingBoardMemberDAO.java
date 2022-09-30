package com.goodee.market.meetingboard.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MeetingBoardMemberDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.goodee.market.meetingboard.member.MeetingBoardMemberDAO.";
	
	public int setAddMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setAddMeetingBoardMember", meetingBoardMemberDTO);
	}
	
	public int setAddOwnerMeetingBoardMember(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setAddOwnerMeetingBoardMember", meetingBoardMemberDTO);
	}
	
}
