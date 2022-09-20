package com.goodee.market.meetingboard;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.goodee.market.member.MemberDTO;

@Controller
@RequestMapping(value = "/mb/*")
public class MeetingBoardController {
	
	@Autowired
	private MeetingBoardService meetingBoardService;
	
	@GetMapping("test")
	public String getTest() throws Exception {
		return "meetingboard/test";
	}
	
	@GetMapping("home")
	public String getMeetingHome() throws Exception {
		return "meetingboard/home";
	}
	
	@GetMapping("list")
	public ModelAndView getMeetingBoardList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("meetingBoardList", meetingBoardService.getMeetingBoardList());
		mv.setViewName("meetingboard/list");
		return mv;
	}
	
	@GetMapping("add")
	public String getAddPage(HttpSession session) throws Exception {
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		String viewString = "meetingboard/add";
		if(memberDTO == null) {
			viewString = "redirect:/member/login";
		}
		
		return viewString;
	}
	
	@PostMapping("add")
	public String setAddPage(MeetingBoardDTO meetingBoardDTO) throws Exception {
		System.out.println(meetingBoardDTO.getMeetingBoardWriter());
		System.out.println(meetingBoardDTO.getMeetingBoardTitle());
		System.out.println(meetingBoardDTO.getMeetingBoardContents());
		System.out.println("------------------------------------------------");
		//System.out.println(meetingBoardDTO.getMeetingBoardDueDate());
		System.out.println(meetingBoardDTO.getMeetingBoardDueDatePre());
		System.out.println("------------------------------------------------");
		System.out.println(meetingBoardDTO.getMeetingBoardTotalCost());
		System.out.println(meetingBoardDTO.getMeetingBoardLocation());
		System.out.println(meetingBoardDTO.getMeetingBoardCategory());
		System.out.println(meetingBoardDTO.getMeetingBoardMaxMember());
		System.out.println(meetingBoardDTO.getMeetingBoardHostDemand());
		return "redirect:/";
	}

}
