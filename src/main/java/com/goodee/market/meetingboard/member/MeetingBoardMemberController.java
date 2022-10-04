package com.goodee.market.meetingboard.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.goodee.market.meetingboard.MeetingBoardDTO;
import com.goodee.market.meetingboard.util.MeetingBoardMemberPager;

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
	
	@GetMapping("mylist")
	public ModelAndView getMyApproval(MeetingBoardMemberPager pager) throws Exception {
		List<MeetingBoardDTO> myList = meetingBoardMemberService.getMyList(pager);
		ModelAndView mv = new ModelAndView();
		mv.addObject("myList", myList);
		mv.addObject("pager", pager);
		mv.setViewName("meetingboard/myList");
		
		return mv;
	}
	
}
