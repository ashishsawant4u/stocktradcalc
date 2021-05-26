<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<div class="row">
<div class="w-50 border-end border-info border-2">
<p class="fw-bold border-bottom border-dark border-1 pt-3">Trading Entries</p>
<span id="tradeEntries"></span>
</div>

<table class="table table-hover w-50 float-end" id="buyDetailsTable">
  	<thead>
      <tr>
        <th>Profit & Loss</th>
        <th>Amount</th>
      </tr>
    </thead>
  	<tbody>
  		<tr>
  			<td class="fw-bold">Invested Amount</td>
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