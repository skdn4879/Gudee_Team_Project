package com.goodee.market.member;

import com.goodee.market.util.CommentDTO;

public class InquiryDTO extends CommentDTO {
	
	private String title;
	private Long ref;
	private Long step;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Long getRef() {
		return ref;
	}
	public void setRef(Long ref) {
		this.ref = ref;
	}
	public Long getStep() {
		return step;
	}
	public void setStep(Long step) {
		this.step = step;
	}

}
