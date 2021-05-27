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



<div class="container-fluid">
  <tags:siteHeader/>
  <tags:subHeader/>
  
  <tags:tradePlanner />
  <br>
  <tags:tradeCalculator/>
  <tags:tradeProfitLosss/>
  <tags:summary/>
  	  

  <tags:help/>  
</div>

<tags:scripts/>
</body>
</html>