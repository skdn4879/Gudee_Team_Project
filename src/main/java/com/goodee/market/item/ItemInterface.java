package com.goodee.market.item;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.web.multipart.MultipartFile;

import com.goodee.market.util.Pager;

public interface ItemInterface {
	
	
  
	public int setAddFile(ItemImageDTO itemImageDTO)throws Exception;
	
	public Long getCount(Pager pager) throws Exception;

	public List<ItemDTO>getList(Pager pager)throws Exception;
	
	public ItemDTO getDetail(ItemDTO itemDTO) throws Exception;
	
	public int setAdd(ItemDTO itemDTO, MultipartFile[] files, ServletContext servletContext)throws Exception;
	
	public int setUpdate(ItemDTO itemDTO) throws Exception;
	
	public int setDelete(ItemDTO itemDTO) throws Exception;
}
