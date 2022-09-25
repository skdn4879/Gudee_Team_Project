package com.goodee.market.meetingboard;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.goodee.market.meetingboard.util.MeetingBoardPager;

@Service
public class MeetingBoardService {

	@Autowired
	private MeetingBoardDAO meetingBoardDAO;
	
	@Autowired
	private MeetingBoardFileManager meetingBoardFileManager;
	
	public MeetingBoardDTO getMeetingBoardDetail(MeetingBoardDTO meetingBoardDTO) throws Exception {
		return meetingBoardDAO.getMeetingBoardDetail(meetingBoardDTO);
	}
	
	public List<MeetingBoardDTO> getMeetingBoardList(MeetingBoardPager pager) throws Exception {
		Long totalCount = meetingBoardDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		return meetingBoardDAO.getMeetingBoardList(pager);
	}
	
	public int setMeetingBoardAdd(MeetingBoardDTO meetingBoardDTO, MultipartFile meetingBoardThumnail, ServletContext servletContext) throws Exception{
		
		int result = meetingBoardDAO.setMeetingBoardAdd(meetingBoardDTO);
		String path = "resources/upload/meetingboard";
		
		if(!meetingBoardThumnail.isEmpty()) {
			String fileName = meetingBoardFileManager.saveFile(servletContext, path, meetingBoardThumnail);
			
			MeetingBoardImageDTO meetingBoardImageDTO = new MeetingBoardImageDTO();
			meetingBoardImageDTO.setFileName(fileName);
			meetingBoardImageDTO.setOriName(meetingBoardThumnail.getOriginalFilename());
			meetingBoardImageDTO.setMeetingBoardNum(meetingBoardDTO.getMeetingBoardNum());
			meetingBoardDAO.setMeetingBoardThumnailAdd(meetingBoardImageDTO);
		}
		
		return result;
	}
	
}
