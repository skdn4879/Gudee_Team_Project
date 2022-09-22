package com.goodee.market.trade.myPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller  //return 값은 내부 파일명
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
	//@RequestMapping(value = "sellitemlist.goodee", method = RequestMethod.GET)
	// 두개 같은 의미 | ↑ 줄이면 ↓
	@GetMapping(value = "sellitemlist")
	public ModelAndView getSellItemList () throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("중고 마이페이지 - sell List 접속");
		
		mv.addObject("getSellItemList", myPageService.getSellItemList());
		mv.setViewName("mypage/sellitemlist");
		return mv;
	}
	
	
	@GetMapping(value = "buyitemlist")
	public ModelAndView getBuyItemList () throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("중고 마이페이지 - buy List 접속");
		
		mv.addObject("getBuyItemList", myPageService.getBuyItemList());
		mv.setViewName("mypage/buyitemlist");
		return mv;
	}
	
	
	public ModelAndView getReviewList () throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("중고 마이페이지 리뷰 접속");
		
		mv.addObject("getReviewList", myPageService.getReviewList());
		mv.setViewName("mypage/reviewlist");
		return mv;
	}

}
