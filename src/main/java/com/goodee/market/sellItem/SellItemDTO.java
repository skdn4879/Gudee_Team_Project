package com.goodee.market.sellItem;

import com.goodee.market.tradingItem.TradingItemDTO;

public class SellItemDTO extends TradingItemDTO{

	private Long sellItemNum;

	public Long getSellItemNum() {
		return sellItemNum;
	}

	public void setSellItemNum(Long sellItemNum) {
		this.sellItemNum = sellItemNum;
	}
	
	
}
