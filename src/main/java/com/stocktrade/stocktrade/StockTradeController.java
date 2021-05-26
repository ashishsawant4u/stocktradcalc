package com.stocktrade.stocktrade;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value = "/strade")
@Controller
public class StockTradeController {

	@RequestMapping(value = "/home")
	public String landingPage()
	{
		return "landingPage";
	}
	
}
