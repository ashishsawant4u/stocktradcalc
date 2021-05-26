package com.stocktrade.stocktrade;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value =  { "", "/" })
@Controller
public class StockTradeController {

	@RequestMapping(value = "/")
	public String landingPage()
	{
		return "landingPage";
	}
	
}
