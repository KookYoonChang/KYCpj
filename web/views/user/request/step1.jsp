<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
	body{
		margin:0 auto;
		width:1000px;
		height:1800px;
		border:1px solid gray;
	}
	
	#cancel{
		float:right;
	}
	.menuBtn{
		margin-top:0px;
		width:20%;
		height:97.2%;
		float:left;
		margin-top:-4px;
	}
	.aboutList{
		width:80%;
		height:97.2%;
		float:left;
		font-weight:bolder;
		background-color:#EBEFF2;
		margin-top:-4px;
	}
	#onTheList{
		width:750px;
		height:80%;
		background-color:white;
		margin-top:20px;
		border:2px solid gray;
		border-radius:20px;
	}
	#next{
		margin-top:80px;
	
	}
</style>
</head>
<body>
	<div class="wrap" align="center">
		<img src="resources/requestBar.png" id="requestBar">
		<img src="resources/cancel.png" id="cancel"/>
	</div>
	<div class="menuBtn">
		  	<div>
		  		<a href="#"><img src="resources/step1.png"></a>
		  	</div>
		  	<div>
		  		<a href="#"><img src="resources/step2.png"></a>
		  	</div>
		  	<div>
		  		<a href="#"><img src="resources/step3.png"></a>
		  	</div>
	</div>
	<div class="aboutList" align="center">
 			<div id="onTheList" align="center"></div>
 			<div id="next" align="center">
 				<a href="#"><img src="resources/next.png" /></a>
 			</div>
 	</div>
 	
</body>
</html>