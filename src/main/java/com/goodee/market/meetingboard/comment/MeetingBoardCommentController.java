package com.goodee.market.meetingboard.comment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/mbc/*")
public class MeetingBoardCommentController {
	
	@Autowired
	private MeetingBoardCommentService meetingBoardCommentService;
	
	@PostMapping("add")
	@ResponseBody
	public String commentAdd(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		int result = meetingBoardCommentService.commentAdd(meetingBoardCommentDTO);
		
		if(result == 0) {
			System.out.println("댓글 작성 실패");
		}
		
		String jsonResult = "{\"result\" : \"" + result + "\"}";
		
		return jsonResult;
	}
	
	@GetMapping("list")
	@ResponseBody
	public Map<String, Object> getCommentList(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<MeetingBoardCommentDTO> commentList = meetingBoardCommentService.getCommentList(meetingBoardCommentDTO);
		
		map.put("commentList", commentList);
		
		return map;
		
	}
	
	@PostMapping("delete")
	@ResponseBody
	public int setCommentDelete(MeetingBoardCommentDTO meetingBoardCommentDTO) throws Exception {
		int result = meetingBoardCommentService.setCommentDelete(meetingBoardCommentDTO);
		
		return result;
	}

}
