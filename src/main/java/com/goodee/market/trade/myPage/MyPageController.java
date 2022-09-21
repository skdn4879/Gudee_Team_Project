package com.goodee.market.trade.myPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/mypage/*")
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	
	@GetMapping(value = "main")
	public String getMypage () throws Exception{
		System.out.println("중고 마이페이지");
		return "mypage/main";
	}
	
	
	//--------------------------------
	@RequestMapping(value = "sellitemlist.goodee", method = RequestMethod.GET)
	public ModelAndView getSellItemList () throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("중고 마이페이지 - sell List 접속");
		
		mv.addObject("getSellItemList", myPageService.getSellItemList());
		mv.setViewName("mypage/sellitemlist");
		return mv;
	}

}
