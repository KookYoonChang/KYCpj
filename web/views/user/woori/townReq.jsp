<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer {
		width:1000px;
		height:1200px;
		background:lightgray;
		font-weight:bold; 
      	margin-left:auto;
     	margin-right:auto;
      	margin-top:50px;
	}
	.bsNav {
		width:950px;
		height:1100px;
		background:white;
		margin:0 auto;
	}
	.title {
		width:950px;
		height:50px;
		background:#012E40;
      	color:white;
      	text-align:center;
		float:left;
	}

	.bsinfoarea {
		width:900px;
		hegith:290px;
		margin:0 auto;
		overflow:hidden;
	}
	.bsPhoto, #bsphoto {
		width:450px;
		hegith:290px;
		float:left;
	}
	#bsphoto {
		width:400px;
		hegith:290px;
	}
	.bsinfo {
		width:450px;
		height:290px;
		padding-top:auto;
		float:left;
		position: relative;
		bottom:30px;
	}
	#reqbtn {
		width:350px;
		height:60px;
		font-size:20px;
		background:orangered;
		color:white;
		border-radius: 5px;
		border: 2px solid orangered;
	}
	.bsinfo-Note {
		width:900px;
		height:200px;
	}
	.bsinfo-port {
		width:900px;
		height:200px;
		margin:10px;
	}
	.user-rivew {
		width:900px;
		height:200px;
	}
</style>
</head>
<body>
	<div class="outer">
		<div class="title" >
			<h3><c:out value="${ requestScope.town.catName }"/> 의뢰</h3>
		</div>
		
		
		<div class="bsNav">
		<form class="bsinfoarea">
		<div class="bsPhoto">
		<img 
		src="${ applicationScope.contextPath }/resources/upLoadFiles/portfolio/<c:out value="${ requestScope.fileList[0].changeName }"/>"
			width="400px" height="290px">
			
		</div>
		<div class="bsinfo">
			<p style="color:orangered; font-size:30px;">
				<c:out value="${ requestScope.town.bsTitle }"/>
			</p>
			<p>
				<span>
				경력 : <c:out value="${ requestScope.town.bsYear }"/> 
				</span>
				<span>
				A/S 여부 : <c:out value="${ requestScope.town.bsAs }"/>
				</span>
				
			</p>
			<p>
				<span>대표 : </span><span><c:out value="${ requestScope.town.bsName }"/></span>
			</p>
			<p>
				<span>전화 : </span><span><c:out value="${ requestScope.town.bsPhone }"/></span>
			</p>
			<p>
				<span>주소 : </span><span><c:out value="${ requestScope.town.bsAdd }"/></span>
			</p>
			<input type=button id="reqbtn" name="의뢰하기" value="의뢰 하기" onclick="goRequest()">
		</div>
		</form>
		<h3>홈 리모델링 전문가 소개</h3>
		<div class="bsinfo-Note">
			
			<p>
				<span>
				<c:out value="${ requestScope.town.portNote }"/>
				</span>
			</p>
		</div>
		<h3>포트폴리오</h3>
		<div class="bsinfo-port">
			<img 
		src="${ applicationScope.contextPath }/resources/upLoadFiles/portfolio/<c:out value="${ requestScope.fileList[0].changeName }"/>"
			width="250px" height="200px">
			<img 
		src="${ applicationScope.contextPath }/resources/upLoadFiles/portfolio/<c:out value="${ requestScope.fileList[1].changeName }"/>"
			width="250px" height="200px">
			<img 
		src="${ applicationScope.contextPath }/resources/upLoadFiles/portfolio/<c:out value="${ requestScope.fileList[2].changeName }"/>"
			width="250px" height="200px">
		</div>
		<h3>고객 리뷰</h3>
		<div class="user-rivew">
			<img 
		src="${ applicationScope.contextPath }/resources/upLoadFiles/review/<c:out value="${ requestScope.fileList[0].changeName }"/>"
			width="250px" height="200px">
			<img 
		src="${ applicationScope.contextPath }/resources/upLoadFiles/reivew/<c:out value="${ requestScope.fileList[1].changeName }"/>"
			width="250px" height="200px">
			<img 
		src="${ applicationScope.contextPath }/resources/upLoadFiles/reivew/<c:out value="${ requestScope.fileList[2].changeName }"/>"
			width="250px" height="200px">
			<div class="user-rivew-note"></div>
		</div>
		</div>
	</div>
	
	<script>
	 function goRequest() {
         location.href = "${ applicationScope.contextPath }/views/user/request/dobae.jsp ";
		}
	</script>
</body>
</html>