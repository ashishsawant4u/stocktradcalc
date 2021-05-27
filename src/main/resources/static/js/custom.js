$( document ).ready(function() {
  
  	$(".trade-plan-element").on("keyup change", function(e) {
   		
   		let totalFund = $("#totalFundtext").val();
   		let nosOfTrade = $("#nosOfTradeTxt").val();
   		let maxLoss = $("#maxLossTxt").val();
   		
   		if(undefined!=totalFund && undefined!=nosOfTrade && undefined!=maxLoss)
   		{
   			let riskPerTrade = (parseFloat(maxLoss)/parseInt(nosOfTrade)).toFixed(2);
   			if(!isNaN(riskPerTrade))
   			{
   				$("#perTradeRiskGroup").removeClass("d-none");
   				$("#perTradeRiskLbl").text(riskPerTrade);
   			}
   			
   			$(".quantity-plan-element").trigger('change');
   		}
	});
	
	$(".quantity-plan-element").on("keyup change", function(e) {
		
			let stockPrice = $("#stockPriceTxt").val();
			let stopLoss = $("#stopLossTxt").val();
			let perTradeRisk = $("#perTradeRiskLbl").text();
			if(undefined != stockPrice && undefined != stopLoss && undefined != perTradeRisk)
			{
				let lossPerUnit = parseFloat(stockPrice) - parseFloat(stopLoss);
				lossPerUnit = Math.abs(lossPerUnit);
				if(!isNaN(lossPerUnit))
	   			{
	   				$("#lossPerUnitsGroup").removeClass("d-none");
	   				$("#lossPerUnitsLbl").text(lossPerUnit);
	   			}
	   			let quantity = parseFloat(perTradeRisk)/lossPerUnit;
	   			if(!isNaN(quantity))
	   			{
	   				$("#quantityUnitsGroup").removeClass("d-none");
	   				$("#quantityUnitsLbl").text(Math.round(quantity));
	   			}
	   			
	   			if($('#btnradioBuy').is(':checked'))
	   			{ 
	   				console.log("BUY Transaction");
	   				buyTransactionHandler(stockPrice,stopLoss,lossPerUnit,quantity);
	   			}
	   			else
	   			{
	   				console.log("SHORT SELL Transaction");
	   				shortSellTransactionHandler(stockPrice,stopLoss,lossPerUnit,quantity);
	   			}
	   			
			}
   	});	
	
	$(".only-numbers").on("keyup change", function(e) {
		
		this.value=this.value.replace(/[^\d]/,'');
		
     });
     
     $("#resetFormLink").on("click", function(e) {
		
			resetForm();
		
     });
     
     $(".btnradioBuySell").on("change", function(e) {
     		$(".quantity-plan-element").text("");
     		$(".quantity-plan-element").val("");
     		$(".profit-loss-cell").text("");
     		$('#tradeEntries').text("");
      });
});

function buyTransactionHandler(stockPrice,stopLoss,lossPerUnit,quantity)
{
	
		let buyPrice = parseFloat(stockPrice);
		let stopLossPrice = parseFloat(stopLoss);
		let targetPrice = buyPrice + (lossPerUnit * 2);
		let investmentAmount = buyPrice * Math.round(quantity);
		let maxInvestmentPerTrade = $("#maxInvestmentPerTradeTxt").val();
		if(investmentAmount > parseFloat(maxInvestmentPerTrade))
		{
			let tempQty = parseFloat(maxInvestmentPerTrade)/buyPrice;
			quantity = (tempQty<1) ? 0 : Math.round(tempQty);
			investmentAmount = buyPrice * Math.round(quantity);
			$("#quantityUnitsLbl").text(Math.round(quantity));
		}
		
		let possibleLoss = lossPerUnit * Math.round(quantity);
		let totalProfit =  targetPrice * Math.round(quantity);
		let possibleProfit = totalProfit - investmentAmount;
		let roi = ((possibleProfit/investmentAmount)*100).toFixed(2);
		let ruppeSymbol = "<span class='fw-bold'>&#8377;</span>";
		if(!isNaN(targetPrice))
		{
			$("#targetGroup").removeClass("d-none");
			$("#targetLbl").text(Math.round(targetPrice));
		}
		
		if(!isNaN(investmentAmount) && !isNaN(possibleLoss) && !isNaN(totalProfit) && !isNaN(possibleProfit) && !isNaN(roi))
		{
			$("#investedAmountCell").html(ruppeSymbol+investmentAmount);
			$("#possibleLossCell").html(ruppeSymbol+possibleLoss);
			$("#totalProfitCell").html(ruppeSymbol+totalProfit);
			$("#possibleProfitCell").html(ruppeSymbol+possibleProfit);
			$("#roiCell").text(roi+"%");
			
			let entries = "1. BUY "+Math.round(quantity)+" units at price "+ruppeSymbol+buyPrice + "<br>"+
					  "2. Put STOP LOSS for "+Math.round(quantity)+" units at price "+stopLossPrice + "<br>"+
					  "3. SELL "+Math.round(quantity)+" units at price "+ruppeSymbol+targetPrice;
					  
			$('#tradeEntries').html(entries);
			summaryTable(buyPrice,quantity,stopLossPrice,lossPerUnit,targetPrice,investmentAmount,possibleLoss,totalProfit,possibleProfit,roi,entries);		
		}	
		
		if(quantity===0)
		{
			$(".profit-loss-cell").text("");
			$('#tradeEntries').html("<span class='text-danger'>Insufficiant Investment per trade to buy this share</span>");	
		}  
}

function shortSellTransactionHandler(stockPrice,stopLoss,lossPerUnit,quantity)
{
		let shortSellPrice = parseFloat(stockPrice);
		let stopLossPrice = parseFloat(stopLoss);
		let targeBuyPrice = shortSellPrice - (lossPerUnit * 2);
		let investmentAmount = targeBuyPrice * Math.round(quantity);
		let maxInvestmentPerTrade = $("#maxInvestmentPerTradeTxt").val();
		if(investmentAmount > parseFloat(maxInvestmentPerTrade))
		{
			let tempQty = parseFloat(maxInvestmentPerTrade)/targeBuyPrice;
			quantity = (tempQty<1) ? 0 : Math.round(tempQty);
			investmentAmount = targeBuyPrice * Math.round(quantity);
			$("#quantityUnitsLbl").text(Math.round(quantity));
		}
		let possibleLoss =  parseFloat(lossPerUnit) * Math.round(quantity);
		let totalProfit =  shortSellPrice * Math.round(quantity);
		let possibleProfit = totalProfit - investmentAmount;
		let roi = ((possibleProfit/investmentAmount)*100).toFixed(2);
		let ruppeSymbol = "<span class='fw-bold'>&#8377;</span>";
		
		if(!isNaN(targeBuyPrice))
		{
			$("#targetGroup").removeClass("d-none");
			$("#targetLbl").text(Math.round(targeBuyPrice));
		}
		
		
		if(!isNaN(investmentAmount) && !isNaN(possibleLoss) && !isNaN(totalProfit) && !isNaN(possibleProfit) && !isNaN(roi))
		{
			$("#investedAmountCell").html(ruppeSymbol+investmentAmount);
			$("#possibleLossCell").html(ruppeSymbol+possibleLoss);
			$("#totalProfitCell").html(ruppeSymbol+totalProfit);
			$("#possibleProfitCell").html(ruppeSymbol+possibleProfit);
			$("#roiCell").text(roi+"%");
			
			let entries = "1. SHORT SELL "+Math.round(quantity)+" units at price "+ruppeSymbol+shortSellPrice + "<br>"+
					  "2. Put STOP LOSS for "+Math.round(quantity)+" units at price "+stopLossPrice + "<br>"+
					  "3. BUY "+Math.round(quantity)+" units at price "+ruppeSymbol+targeBuyPrice;
					  
			$('#tradeEntries').html(entries);	
			summaryTable(targeBuyPrice,quantity,stopLossPrice,lossPerUnit,shortSellPrice,investmentAmount,possibleLoss,totalProfit,possibleProfit,roi,entries);
		}
		
		if(quantity===0)
		{
			$(".profit-loss-cell").text("");
			$('#tradeEntries').html("<span class='text-danger'>Insufficiant Investment per trade to buy this share</span>");	
		}
}

function resetForm()
{
	$(".trade-plan-element").text("");
	$(".trade-plan-element").val("");
	$(".quantity-plan-element").text("");
	$(".quantity-plan-element").val("");
	$('#tradeEntries').html("");	
	$("#summarySection").addClass('d-none');
}

function summaryTable(buyPrice,quantity,stopLossPrice,lossPerUnit,targetPrice,investmentAmount,possibleLoss,totalProfit,possibleProfit,roi,entries)
{
	$("#summarySection").removeClass('d-none');
	let ruppeSymbol = "<span class='fw-bold'>&#8377;</span>";
	$("#summaryStockCell").html($("#companyNameTxt").val());
	$("#summaryTransactionTypeCell").html($('#btnradioBuy').is(':checked') ? 'BUY' : 'SHORT SELL');
	$("#summaryEntryPriceCell").html(buyPrice);
	$("#summaryQuantityCell").html(quantity);
	$("#summaryStopLossCell").html(stopLossPrice);
	$("#summaryLossPerUnitCell").html(lossPerUnit);
	$("#summaryTargetPriceCell").html(Math.round(targetPrice));
	$("#summaryInvestedAmountCell").html(ruppeSymbol+investmentAmount);
	$("#summaryPossibleLossCell").html(ruppeSymbol+possibleLoss);
	$("#summaryProfitAmountCell").html(ruppeSymbol+totalProfit);
	$("#summaryPossibleProfitCell").html(ruppeSymbol+possibleProfit);
	$("#summaryROICell").html(roi+"%");
	$("#summaryEntriesCell").html(entries);
}

function copySummaryTable(el) 
{
   var body = document.body,
      range, sel;
    if (document.createRange && window.getSelection) {
      range = document.createRange();
      sel = window.getSelection();
      sel.removeAllRanges();
      range.selectNodeContents(el);
      sel.addRange(range);
    }
    document.execCommand("Copy");
}