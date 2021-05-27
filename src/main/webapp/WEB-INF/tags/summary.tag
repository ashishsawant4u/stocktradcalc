<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<div id="summarySection" class="d-none">
<p class="fw-bold border-bottom border-dark border-1 pt-3">
	Summary
	<tags:copySummary/>
</p>	
<div class="table-responsive">
<table class="table table-bordered  float-end" id="summaryDetailsTable">
		  	<thead>
		      <tr>
		        <th class="th-xs-3">Stock</th>
		        <th class="th-xs-3">Transaction Type</th>
		        <th class="th-xs-3">Entry Price</th>
		        <th class="th-xs-3">Quantity</th>
		        <th class="th-xs-3">Stop Loss</th>
		        <th class="th-xs-3">Loss Per Unit</th>
		        <th class="th-xs-3">Target Price/Exit</th>
		        <th class="th-xs-3">Investment Amount</th>
		        <th class="th-xs-3">Possible Loss</th>
		        <th class="th-xs-3">Profit Amount</th>
		        <th class="th-xs-3">Possible Profit</th>
		        <th class="th-xs-3">ROI %</th>
		        <th class="th-xs-3">Entries</th>
		      </tr>
		    </thead>
		  	<tbody>
		  		<tr>
		  			<td id="summaryStockCell" class="summary-table-cell"></td>
		  			<td id="summaryTransactionTypeCell" class="summary-table-cell"></td>
		  			<td id="summaryEntryPriceCell" class="summary-table-cell"></td>
		  			<td id="summaryQuantityCell" class="summary-table-cell"></td>
		  			<td id="summaryStopLossCell" class="summary-table-cell"></td>
		  			<td id="summaryLossPerUnitCell" class="summary-table-cell"></td>
		  			<td id="summaryTargetPriceCell" class="summary-table-cell"></td>
		  			<td id="summaryInvestedAmountCell" class="summary-table-cell"></td>
		  			<td id="summaryPossibleLossCell" class="summary-table-cell"></td>
		  			<td id="summaryProfitAmountCell" class="summary-table-cell"></td>
		  			<td id="summaryPossibleProfitCell" class="summary-table-cell"></td>
		  			<td id="summaryROICell" class="summary-table-cell"></td>
		  			<td id="summaryEntriesCell" class="summary-table-cell"></td>
		  		</tr>
		  	</tbody>
		  </table>
</div>		  
</div>		  