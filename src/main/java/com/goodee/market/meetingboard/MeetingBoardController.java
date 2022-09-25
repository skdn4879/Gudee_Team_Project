package com.goodee.market.meetingboard;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.goodee.market.meetingboard.util.MeetingBoardPager;
import com.goodee.market.member.MemberDTO;

@Controller
@RequestMapping(value = "/mb/*", produces = "text/plain;charset=UTF-8")
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
	public ModelAndView getMeetingBoardList(MeetingBoardPager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MeetingBoardDTO> meetingBoardList = meetingBoardService.getMeetingBoardList(pager);
		mv.addObject("meetingBoardList", meetingBoardList);
		mv.addObject("pager", pager);
		mv.setViewName("meetingboard/list");
		
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView getMeetingBoardDetail(Long num) throws Exception {
		MeetingBoardDTO meetingBoardDTO = new MeetingBoardDTO();
		meetingBoardDTO.setMeetingBoardNum(num);
		meetingBoardDTO = meetingBoardService.getMeetingBoardDetail(meetingBoardDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("meetingBoardDetail", meetingBoardDTO);
		mv.setViewName("meetingboard/detail");
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
	public String setAddPage(MeetingBoardDTO meetingBoardDTO, MultipartFile meetingBoardThumnail, HttpSession session) throws Exception {
		
		meetingBoardService.setMeetingBoardAdd(meetingBoardDTO, meetingBoardThumnail, session.getServletContext());
		
		return "redirect:./list";
	}

}
