package com.goodee.market.meetingboard.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/mbm/*")
public class MeetingBoardMemberController {

	@Autowired
	private MeetingBoardMemberService meetingBoardMemberService;
	
	@PostMapping("add")
	public void setAddApproval(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		
	}
	
	@PostMapping("addOwner")
	public void setAddOwnerApperoval(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		
	}
	
}
