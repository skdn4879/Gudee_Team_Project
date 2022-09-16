package com.goodee.market.item;

import java.sql.Date;

public class ItemDTO {

	
	private Long itemNum;
	private Long memberNum; 
	private	String itemTitle;
	private	String itemContents;
	private	String itemCategory;
	private	Integer itemPrice;
	private	Date itemDuedate;
	private	Integer field;
	
	
	public Long getItemNum() {
		return itemNum;
	}
	public void setItemNum(Long itemNum) {
		this.itemNum = itemNum;
	}
	public Long getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(Long memberNum) {
		this.memberNum = memberNum;
	}
	public String getItemTitle() {
		return itemTitle;
	}
	public void setItemTitle(String itemTitle) {
		this.itemTitle = itemTitle;
	}
	public String getItemContents() {
		return itemContents;
	}
	public void setItemContents(String itemContents) {
		this.itemContents = itemContents;
	}
	public String getItemCategory() {
		return itemCategory;
	}
	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}
	public Integer getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(Integer itemPrice) {
		this.itemPrice = itemPrice;
	}
	public Date getItemDuedate() {
		return itemDuedate;
	}
	public void setItemDuedate(Date itemDuedate) {
		this.itemDuedate = itemDuedate;
	}
	public Integer getField() {
		return field;
	}
	public void setField(Integer field) {
		this.field = field;
	}
	
	
	
			
}
