package com.goodee.market.meetingboard.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/mbm/*")
public class MeetingBoardMemberController {

	@Autowired
	private MeetingBoardMemberService meetingBoardMemberService;
	
	@PostMapping("add")
	@ResponseBody
	public Map<String, Integer> setAddApproval(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		int result = meetingBoardMemberService.setAddMeetingBoardMember(meetingBoardMemberDTO);
		map.put("result", result);
		
		return map;
		
	}
	
	@PostMapping("addOwner")
	public void setAddOwnerApperoval(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		
	}
	
	@PostMapping("delete")
	@ResponseBody
	public Map<String, Integer> setDeleteApproval(MeetingBoardMemberDTO meetingBoardMemberDTO) throws Exception {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		int result = meetingBoardMemberService.setDeleteMeetingBoardMember(meetingBoardMemberDTO);
		map.put("result", result);
		
		return map;
		
	}
	
}
