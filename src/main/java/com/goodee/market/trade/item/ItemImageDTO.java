package com.goodee.market.trade.item;

import com.goodee.market.util.FileDTO;

public class ItemImageDTO extends FileDTO {
	
	 private Long itemNum;
	 
	 private Long fileNum;

	 
	 
	public Long getFileNum() {
		return fileNum;
	}

	public void setFileNum(Long fileNum) {
		this.fileNum = fileNum;
	}

	public Long getItemNum() {
		return itemNum;
	}

	public void setItemNum(Long itemNum) {
		this.itemNum = itemNum;
	}

	 
	 
}
