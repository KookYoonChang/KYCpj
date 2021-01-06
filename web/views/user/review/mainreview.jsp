<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
body {
	font-family: "NanumGothic";
	font-weight: bolder;
	margin: 0 auto;
}

header {
	margin: auto;
	width: 1200px;
	height: 60px;
}
.title{
	margin:auto;
	width:1200px;
	height:50px;
	padding-bottom:20px;
	}
.category{
	margin:auto;
	width:1200px;
	height:400px;
}
#detail{
	float:right;
	margin-right:20px;
	border:0;
	outline:0;
	font-size:20px;
	font-weight:bold;
	background:orange;
	color:white;
	border-radius:15px;
	cursor:pointer;
}
.reviewzone{
display:flex;
}
.reviewSide{
	margin: auto;
	width:1200px;
	background:#EBEFF2;

}
.reviewBoard{

	height:300px;
	width:658px;
	background:white;
	float:left;
}

.reviewPhoto{
	height:300px;
	width:430px;
	background:blue;
	float:left;
	margin-left:30px;

}
.list {
	margin: 0;
}
li{
	height:350px;
	list-style:none;
}


</style>
</head>
<body>
	<header>
	<jsp:include page="../common/menubar.jsp"/> 
	</header>
	<jsp:include page="../common/searchQenq.jsp"/> 
	<div class="category">
		<jsp:include page="../common/Kategorie.jsp"/> 
	</div>
	<div class="title">
	<h3>사용자 리뷰</h3>
	</div>
	<div class="reviewSide">
		<div class="reviewzone">
			<ul class="list">
				<c:forEach var="re" items="${requestScope.review }" varStatus="status">
				<li>
				<br>
				<div class="reviewBoard">
					<input type ="hidden" value="<c:out value="${re.revno }"/>">
					<p><c:out value="${re.nickName}"/> x <c:out value="${re.bsTitle }"/><button id="detail">자세히보기</button>
					<br><c:out value="${re.reqAdd}"/>
					<br><c:out value="${re.catName}"/>
					<br><c:out value="${re.payPrice}"/>
					</p>
					<p><c:out value="${re.revNote}"/></p>
				</div>
				<div class="reviewPhoto">
					<img src="${applicationScope.contextPath }/resources/upLoadFiles/review/<c:out value="${ requestScope.files[status.index].changeName}"/>" width="430px" height="300px">
				</div>
				</li>
				</c:forEach>
				<li>
				<br>
			</ul>
		</div>
			<div class="paging-area" align="center">
			<button onclick="location.href='${applicationScope.contextPath}/selectReviewList.rl?currentPage=1'"><<</button>
			
			<c:if test="${ requestScope.pi.currentPage <= 1 }">
				<button disabled><</button>
			</c:if>
			<c:if test="${ requestScope.pi.currentPage > 1 }">
				<button onclick="location.href='${applicationScope.contextPath}/selectReviewList.rl?currentPage=<c:out value="${ requestScope.pi.currentPage - 1 }"/>'"><</button>
			</c:if>
			
			<c:forEach var="p" begin="${requestScope.pi.startPage }" end="${requestScope.pi.endPage }" step="1">
				<c:if test="${requestScope.pi.currentPage eq p }">
					<button disabled><c:out value="${ p }"/></button>
				</c:if>
				<c:if test="${requestScope.pi.currentPage ne p }">
						<button onclick="location.href='${applicationScope.contextPath}/selectReviewList.rl?currentPage=<c:out value="${ p }"/>'"><c:out value="${ p }"/></button>
				</c:if>
			</c:forEach>
			
			
			<c:if test="${ requestScope.pi.currentPage >= requestScope.pi.maxPage }">
				<button disabled>></button>
			</c:if>
			<c:if test="${ requestScope.pi.currentPage < requestScope.pi.maxPage }">
				<button onclick="location.href='${applicationScope.contextPath}/selectReviewList.rl?currentPage=<c:out value="${ requestScope.pi.currentPage + 1 }"/>'">></button>
			</c:if>
			
			<button onclick="location.href='${applicationScope.contextPath}/selectReviewList.rl?currentPage=<c:out value="${ requestScope.pi.maxPage }"/>'">>></button>
		</div>
	</div>
	<script>
	$(function(){
		$(".reviewBoard").click(function(){
			var num = $(this).find("input").val();
			
			window.open("${applicationScope.contextPath}/reviewOne.ro?num=" + num, "review", "resizable=yes, left=200, top=100, width:600, height:500");
		});
	});
	</script>
</body>
</html>