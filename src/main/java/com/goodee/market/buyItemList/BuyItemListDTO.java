package com.goodee.market.buyItemList;

import com.goodee.market.tradingItem.TradingItemDTO;

public class BuyItemListDTO extends TradingItemDTO{

	//realBuyer
	//memberNum
	//itemNum
	
	private Long buyItemNum;

	public Long getBuyItemNum() {
		return buyItemNum;
	}

	public void setBuyItemNum(Long buyItemNum) {
		this.buyItemNum = buyItemNum;
	}
	
	
	
}
