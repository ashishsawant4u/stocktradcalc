<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<div id="tradeCalculatorSection" class="card">

<div class="card-header fw-bold">
    Trade Calculator
</div>
<div class="card-body">

<div class="row  g-2 pb-3">
	<div class=" col-xs-6 col-lg-6">
		<label class="pe-2">Transaction Type<span class="text-danger">*</span></label>
		<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
		  <input type="radio" class="btn-check btnradioBuySell" name="btnradioBuySell" id="btnradioBuy" autocomplete="off" checked>
		  <label class="btn btn-outline-success cursor-pointer" for="btnradioBuy">BUY</label>
		
		  <input type="radio" class="btn-check btnradioBuySell" name="btnradioBuySell" id="btnradioShortSell" autocomplete="off">
		  <label class="btn btn-outline-danger cursor-pointer" for="btnradioShortSell">SHORT SELL</label>
		</div>
	</div>
	
	<div class="col-xs-6 col-lg-6">
		<div class="input-group mb-3">
			 <span class="input-group-text">Company/Stock Name</span>
			 <input type="text" class="form-control fw-bold quantity-plan-element" id="companyNameTxt">
		</div>
	</div>
</div> 	  		 
   	
  <form id="quantityPlannerForm">
  		<div class="row bg-info p-2">
  			 <div class="col-xs-3 col-lg-3">
		      <label>Stock Price/Limit Price</label><span class="text-danger">*</span>
		      <div class="input-group mb-3">	
	      			<span class="input-group-text">&#8377;</span>	
		      		<input type="text" class="form-control quantity-plan-element only-numbers" placeholder="Stock Entry Price" id="stockPriceTxt">
		      </div>
		    </div>
		    <div class="col-xs-3 col-lg-3">
		      <label>Stop Loss</label><span class="text-danger">*</span>
		      <div class="input-group mb-3">	
	      		<span class="input-group-text">&#8377;</span>	
		      	<input type="text" class="form-control quantity-plan-element only-numbers" placeholder="Stop Loss Price" id="stopLossTxt">
		      </div>
		    </div>
		    <div class="col-xs-2 col-lg-2 bg-light p-2">
		      <label class="fw-bold">Loss Per Unit</label>
		      <div class="input-group mb-3 d-none" id="lossPerUnitsGroup">	
	      		<span class="input-group-text">&#8377;</span>	
		        <span id="lossPerUnitsLbl" class="fw-bold form-control quantity-plan-element"></span>
		      </div>
		    </div>
		    <div class="col-xs-2 col-lg-2 bg-light p-2">
		      <label class="fw-bold">Target/Exit Price</label>
		      <div class="input-group mb-3 d-none" id="targetGroup">	
	      		<span class="input-group-text">&#8377;</span>		
		        <span id="targetLbl" class="fw-bold form-control quantity-plan-element"></span>
		      </div>
		    </div>
		    <div class="col-xs-2 col-lg-2 bg-light p-2">
		      <label class="fw-bold">Quantity can be purchased</label>	
		      <div class="input-group mb-3 d-none" id="quantityUnitsGroup">
		     	<span class="input-group-text">
	                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
					  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
					</svg>
	            </span>
		     	 <span id="quantityUnitsLbl" class="fw-bold form-control quantity-plan-element"></span>
		      </div>
		    </div>
  		</div>
  </form>
 
</div>  
</div>  