package com.goodee.market.item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/item/*")
public class ItemController {

	@Autowired
	private ItemService itemService;
	
	@RequestMapping("list")
	public ModelAndView getItem(ItemDTO itemDTO) throws Exception {
		ModelAndView mv =new ModelAndView();
		mv.setViewName("item/list");
		return mv;
	}
			
		
	}
	
	
