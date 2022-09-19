package com.goodee.market.trade.sellItem;

import com.goodee.market.trade.tradingItem.TradingItemDTO;

public class SellItemDTO extends TradingItemDTO{

	private Long sellItemNum;

	public Long getSellItemNum() {
		return sellItemNum;
	}

	public void setSellItemNum(Long sellItemNum) {
		this.sellItemNum = sellItemNum;
	}
	
	
}
