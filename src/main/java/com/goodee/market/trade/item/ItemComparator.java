package com.goodee.market.trade.item;

import java.util.Comparator;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/trade/*")
public class ItemComparator implements Comparator<ItemDTO>{

	//정렬
	public String order_by;

	@Override
	@GetMapping(value = "listSort")
	public int compare(ItemDTO o1, ItemDTO o2) {
		
		if(order_by.equals("Hit desc")) {
			if(o1.getItemHit() < o2.getItemHit()) {
				System.out.println("hit desc 1");
				return 1;
			}
				System.out.println("hit esc -1");
				return -1;
			
		}else if(order_by.equals("price desc")) {
			if(o1.getItemPrice() > o2.getItemPrice()) {
				System.out.println("price desc 1");
				return 1;
			}	
				System.out.println("price esc -1");
				return -1;
			
		}else if(order_by.equals("num desc")) {
			if(o1.getItemNum() > o2.getItemNum()) {
				System.out.println("num desc 1");
				return 1;
			}
				System.out.println("num esc -1");
				return -1;
		}
		System.out.println("이건 머야");
		return 1;
	}
	
	
	
}
