<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<div id="tradePlannerSection" class="card">
<div class="card-header fw-bold">
    Trade Planner
</div>
<div class="card-body">
   <form id="tradePlannerForm">
	  <div class="row bg-info p-2">
	    <div class="col-xs-2 col-lg-2">
	      <label>Total Fund</label><span class="text-danger">*</span>
	      <div class="input-group mb-3">	
	      	<span class="input-group-text">&#8377;</span>
	      	<input type="text" class="form-control trade-plan-element only-numbers" placeholder="Total Fund" id="totalFundtext">
	      </div>	
	    </div>
	    <div class="col-xs-2 col-lg-2">
	      <label>Max Loss</label><span class="text-danger">*</span>
	      <div class="input-group mb-3">	
	      	<span class="input-group-text">&#8377;</span>	
	      	<input type="text" class="form-control trade-plan-element only-numbers" placeholder="Max Loss you can afford" id="maxLossTxt">
	      </div>
	    </div>
	    <div class="col-xs-2 col-lg-2">
	      <label>Nos. of Trade</label><span class="text-danger">*</span>
	      <input type="text" class="form-control trade-plan-element" placeholder="Nos. of Trade Can go wrong" id="nosOfTradeTxt">
	    </div>
	    <div class="col-xs-2 col-lg-2">
	     <label>Per Trade Investment</label><span class="text-danger">*</span>
	      <div class="input-group mb-3">	
	      	<span class="input-group-text">&#8377;</span>	
	      	<input type="text" class="form-control trade-plan-element only-numbers"  placeholder="Max investment/Trade" id="maxInvestmentPerTradeTxt">
	      </div>
	    </div>
	    <div class="col-xs-2 bg-light p-2 col-lg-4">
	      <label class="fw-bold">Risk Per Trade</label>	
	      <div class="input-group mb-3 d-none" id="perTradeRiskGroup">	
	      	<span class="input-group-text">&#8377;</span>
	      	<span id="perTradeRiskLbl" class="fw-bold form-control trade-plan-element"></span>
	      </div>
	    </div>
	  </div>
  </form>

  </div>
</div>  