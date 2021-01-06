<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/thil/resources/css/jquery.bxslider.css">
<script src="/thil/resources/js/jquery.bxslider.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
   font-family: "NanumGothic";
   font-weight: bolder;
   font-size: 20px;
}

	.top{
		width:900px;
		height:900px;
		border-style:solid;
		border-color: gray;
		border-width:2px;
		margin:0 auto;
	
	}
	.outer{
	  width:800px;
      height:700px;
      margin-left:auto;
      margin-right:auto;
      margin-top:50px;
	}
	.title{
		background:#EBEFF2;
		color:012E41;
	}
	.rivew-photo {
		width:800px;
		height:400px;
		margin:0 auto;
		
	}
	.rivew-slider {
		float:left;
		margin:0 auto;
		cursor:pointer;
	}
	.portArea{
		width:800px;
		height:300px;
		border-style:solid;
		border-color: gray;
		border-width:5px;
		margin-top:40px;
	}
	.bold{
		font-weight:bold;
	}

</style>
</head>
<body>
	<div class="top">
	<div class="outer">
		<div class="title">
			<h3 align="center"><c:out value="${requestScope.portfolio.bsTitle }"/>님의 포트폴리오</h3>
		</div>
		 <div class="rivew-photo">
    		<ul class="rivew-slider">
    		<li><img src="${applicationScope.contextPath }/resources/upLoadFiles/portfolio/<c:out value="${ requestScope.files[0].changeName}"/>" width="800px" height="400px"></li>
			<li><img src="${applicationScope.contextPath }/resources/upLoadFiles/portfolio/<c:out value="${ requestScope.files[1].changeName}"/>"width="800px" height="400px"></li>
			<li><img src="${applicationScope.contextPath }/resources/upLoadFiles/portfolio/<c:out value="${ requestScope.files[2].changeName}"/>"width="800px" height="400px"></li>
    		</ul>
		</div>
		<div class="portArea">
			<p><span style="color:orange; font-weight:bold"><c:out value="${requestScope.portfolio.bsTitle }"/></span></p>
			<p class="bold"><c:out value="${requestScope.portfolio.portAdd }"/></p>
			<p class="bold"><c:out value="${requestScope.portfolio.catName }"/> 시공</p>
			<p class="bold"><c:out value="${requestScope.portfolio.portPrice }"/>만원</p>
			<p><c:out value="${requestScope.portfolio.portNote }"/></p>
		</div>
	</div>
	</div>
	<div class = "hiddenArea" align="right">
	<br>
		<c:if test="${requestScope.portfolio.bno == sessionScope.bsUser.bno }">
			<button>수정하기</button>
			<button onclick="delete1();">삭제하기</button>
		</c:if>
	</div>
	<script>
  $(function(){
	    $('.rivew-slider').bxSlider({
			auto:false,
			pager:true
			
		});
	});
  
  function delete1(){
	  var check = window.confirm("글을 지우시겠습니까?");
      
      if(check) {
         location.href="${applicationScope.contextPath }/reviewDelete.rd";
      }
  }
	</script>
</body>
</html>