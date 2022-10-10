package com.goodee.market.trade.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.goodee.market.util.Pager;

@Controller
@RequestMapping("/trade/*")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	
	//리뷰 메인
	@GetMapping(value = "review")
	public ModelAndView getReviewMain(Pager pager)throws Exception {
		System.out.println("review");
		ModelAndView mv = new ModelAndView();
		List<ReviewDTO> ar = reviewService.getReviewMain(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("trade/review");
		return mv;
	}

}
