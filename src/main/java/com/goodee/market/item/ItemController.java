package com.goodee.market.item;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.goodee.market.member.MemberDTO;
import com.goodee.market.util.Pager;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/item/*")
//http://localhost/market/item/detail
public class ItemController {
	
	@Autowired
	private ItemService itemService;

	
	// 글 목록
	@GetMapping(value = "list")
	public ModelAndView getList(Pager pager)throws Exception {
		ModelAndView mv =new ModelAndView();
		List<ItemDTO> ar =itemService.getList(pager);
		for(ItemDTO a: ar) {
			System.out.println(a.getItemNum());
		}
		mv.addObject("list", ar);	
		mv.addObject("pager", pager);
		mv.setViewName("trade/category");
		return mv;
	
	}
	
	//글상세
	@GetMapping(value="detail")
	public ModelAndView getDetail(Long num, ModelAndView mv) throws Exception {
		ItemDTO itemDTO = new ItemDTO();
		itemDTO.setItemNum(num);
		System.out.println("detail 실행");
		itemDTO = itemService.getDetail(itemDTO);
		mv.addObject("dto", itemDTO);
		mv.setViewName("item/detail");
		
		return mv;
		
		
	} 
	
	//글작성
	@GetMapping(value="add")
	public String setAdd(ItemDTO itemDTO) throws Exception {
		return "item/add";
	}
	
	@PostMapping(value="add")
	public ModelAndView setAdd(ItemDTO itemDTO,MultipartFile[] files,HttpSession sessin) throws Exception {
		ModelAndView mv = new ModelAndView(); 
		int item= itemService.setAdd(itemDTO,files,sessin.getServletContext());
		mv.setViewName("redirect:./list");
		return mv;
		
	}
	
	//글수정
	@GetMapping(value="update")
	public ModelAndView setUpdate(ItemDTO itemDTO, ModelAndView mv)throws Exception {
		
		mv.setViewName("item/update");
		return mv;
	
	}
	@PostMapping(value="update")
	public String setUpdate(ItemDTO itemDTO)throws Exception {
		int result= itemService.setUpdate(itemDTO);
	return "redirect:./detail?itemNum="+itemDTO.getItemNum();
	}
	
	//글삭제
	public String setDelete(ItemDTO itemDTO)throws Exception {
	int result= itemService.setDelete(itemDTO);
	return "redirect:./list";
	}
	
}
