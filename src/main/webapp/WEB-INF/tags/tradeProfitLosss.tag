<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<div class="row">
<div class=" border-end border-info border-2 col-xs-6 col-lg-6">
<p class="fw-bold border-bottom border-dark border-1 pt-3">Trading Entries</p>
<span id="tradeEntries"></span>
</div>


<div class="col-xs-6 col-lg-6">
		<div class="table-responsive">
		<table class="table table-hover  float-end" id="buyDetailsTable">
		  	<thead>
		      <tr>
		        <th class="th-xs-3">Profit & Loss</th>
		        <th class="th-xs-3">Amount</th>
		      </tr>
		    </thead>
		  	<tbody>
		  		<tr>
		  			<td class="fw-bold">Investment Amount</td>
		  			<td id="investedAmountCell" class="profit-loss-cell"></td>
		  		</tr>
		  		<tr>
		  			<td class="fw-bold">Possible Loss</td>
		  			<td id="possibleLossCell" class="profit-loss-cell"></td>
		  		</tr>
		  		<tr>
		  			<td class="fw-bold">Profit Amount</td>
		  			<td id="totalProfitCell" class="profit-loss-cell"></td>
		  		</tr>
		  		<tr>
		  			<td class="fw-bold">Possible Profit</td>
		  			<td id="possibleProfitCell" class="profit-loss-cell"></td>
		  		</tr>
		  		<tr>
		  			<td class="fw-bold">ROI %</td>
		  			<td id="roiCell" class="profit-loss-cell"></td>
		  		</tr>
		  	</tbody>
		  </table>
		</div>
  
</div>  

</div>