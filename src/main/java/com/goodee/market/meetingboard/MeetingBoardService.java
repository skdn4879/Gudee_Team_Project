package com.goodee.market.meetingboard;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class MeetingBoardService {

	@Autowired
	private MeetingBoardDAO meetingBoardDAO;
	
	@Autowired
	private MeetingBoardFileManager meetingBoardFileManager;
	
	public List<MeetingBoardDTO> getMeetingBoardList() throws Exception {
		return meetingBoardDAO.getMeetingBoardList();
	}
	
	public int setMeetingBoardAdd(MeetingBoardDTO meetingBoardDTO, MultipartFile meetingBoardThumnail, ServletContext servletContext) throws Exception{
		
		int result = meetingBoardDAO.setMeetingBoardAdd(meetingBoardDTO);
		String path = "resources/upload/meetingboard";
		
		if(!meetingBoardThumnail.isEmpty()) {
			String fileName = meetingBoardFileManager.saveFile(servletContext, path, meetingBoardThumnail);
			
			MeetingBoardImageDTO meetingBoardImageDTO = new MeetingBoardImageDTO();
			meetingBoardImageDTO.setFileName(fileName);
			meetingBoardImageDTO.setOriName(meetingBoardThumnail.getOriginalFilename());
			meetingBoardImageDTO.setFileNum(meetingBoardDTO.getMeetingBoardNum());
			meetingBoardDAO.setMeetingBoardThumnailAdd(meetingBoardImageDTO);
		}
		
		return result;
	}
	
}
