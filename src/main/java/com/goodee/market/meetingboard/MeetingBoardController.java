package com.goodee.market.meetingboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/mb/*")
public class MeetingBoardController {
	
	@Autowired
	private MeetingBoardService meetingBoardService;
	
	@GetMapping("list")
	public ModelAndView getMeetingBoardList() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("meetingBoardList", meetingBoardService.getMeetingBoardList());
		mv.setViewName("meetingboard/list");
		return mv;
	}
	
	@GetMapping("add")
	public String getAddPage() throws Exception {
		return "meetingboard/add";
	}
	
	@PostMapping("add")
	public String setAddPage(MeetingBoardDTO meetingBoardDTO) throws Exception {
		System.out.println(meetingBoardDTO.getMeetingBoardTitle());
		System.out.println(meetingBoardDTO.getMeetingBoardHostDemand());
		return "redirect:/";
	}

}
