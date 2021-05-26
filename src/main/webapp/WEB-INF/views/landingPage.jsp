<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Trade</title>

<link href="/webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/custom.css"  rel="stylesheet">

</head>
<body>

<tags:siteHeader/> 

<div class="container">

  <div class="row">
  	<a  id="resetFormLink" href="#" class="text-decoration-none w-50 cursor-pointer">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-clockwise" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2v1z"></path>
				  <path d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466z"></path>
				</svg>
				Reset
     </a>
  	<div class="text-danger text-end w-50">*All Fields are mandatory</div>
  </div>
  
  <tags:tradePlanner />
  <br>
  <tags:tradeCalculator/>
  <tags:tradeProfitLosss/>
  
  	  

  <tags:help/>  
</div>

<tags:scripts/>
</body>
</html>