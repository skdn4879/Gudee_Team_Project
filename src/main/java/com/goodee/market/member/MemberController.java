package com.goodee.market.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	//로그인
	@GetMapping("login")
	public void getLogin()throws Exception{
		System.out.println("GET 로그인 실행");
	}
	
	@PostMapping("login")
	public ModelAndView login(MemberDTO memberDTO, HttpSession session)throws Exception{
		System.out.println("POST 로그인 실행");
		
		ModelAndView mv = new ModelAndView();
		memberDTO = memberService.getLogin(memberDTO);
		session.setAttribute("member", memberDTO);
		
		String message = "로그인 실패";
		String url = "login";
		if(memberDTO != null) {
			message = "로그인 성공";
			url = "../";
		}
		mv.addObject("message", message);
		mv.addObject("url", url);
		mv.setViewName("common/result");
		return mv;
		
	}
	
	//약관동의
	@GetMapping("agree")
	public void agree()throws Exception{
		System.out.println("약관동의 실행");
	}
	
	//회원가입
	@GetMapping("join")
	public void join()throws Exception{
		System.out.println("GET 회원가입 실행");
	}
	
	@PostMapping("join")
	public ModelAndView join(MemberDTO memberDTO, HttpSession session, MultipartFile [] files)throws Exception{
		ModelAndView mv = new ModelAndView();		
		int result = memberService.setJoin(memberDTO, files, session.getServletContext() );
		mv.setViewName("redirect: login");
		return mv;
		
	}

}
