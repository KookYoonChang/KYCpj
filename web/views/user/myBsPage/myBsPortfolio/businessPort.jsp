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
}

.inner {
	display: flex;
	justify-content: center;
	
}

header {
	margin: 0 auto;
	width: 1200px;
	height: 70px;
	}
	
	.information{
	margin: auto;
	width: 1200px;
	height: 225px;

	}
.section {
	width: 200px;
	height: 1123px;
}


.article {
	text-align: center;
	width: 1000px;
	height: 100%;
	background: #EBEFF2;
}
footer{

	width:1200px;
	height:200px;
	margin:auto;
}
.portCreate{
	text-align:center;
	margin-top:600px;
	width:1000px;
	height:100px;
	bottom:80px;
	background:orange;
	font-size:35px; 
	color:white;
	cursor: pointer;
	

}

.title {
	height: 100px;
	font-size: 30px;
	font-weight: bolder;
}
.val2 {
	font-size: 18px;
	width: 600px;
	height: 40px;
	background: #012E41;
	color: white;
	border-radius: 5px;
}
.val {
	font-size: 18px;
	width: 150px;
	height: 40px;
	background: #012E41;
	color: white;
	border-radius: 5px;
}

.listResult {
	height: 150px;
	background: white;
}

.listButton {
	height: 40px;
	background: white;
}

.reqButton {
	font-family: "NanumGothic";
	font-weight: normal;
	font-size: 15px;
	margin-right: 10px;
	width: 80px;
	height: 30px;
	background: #F2A71A;
	color: white;
	border: none;
	outline: none;
	cursor: pointer;
}

.reqButton:hover {
	background: #012E41;
	color: white;
}



</style>
</head>
<body>
	<header>
	<jsp:include page="../../common/menubar.jsp"/> 
	</header>
	<jsp:include page="../../common/searchQenq.jsp"/> 
	<div class="information">
	<jsp:include page="../../common/bsPagebar.jsp"/> 
	</div>
		<div class="inner">
			<div class="section">
			<jsp:include page="../../common/bsSidebar.jsp"/> 
			</div>
			<div class="article">
				<div class="table-area">
					<table align="center">
						<tr>
							<th colspan="6" align="center" class="title">포트폴리오 관리</th>
						</tr>
						<tr class="listName">
							<th class="val">시공업종</th>
							<th class="val2" colspan="4">게시글 본문</th>
							<th class="val">작성일</th>
						</tr>
						<c:forEach var="p" items="${requestScope.list }">
						<tr class="listResult">
							<input type="hidden" value="<c:out value="${p.pfno }"/>">
							<td><c:out value="${p.catName }"/></td>
							<td colspan="4"><c:out value="${p.portNote }"/></td>
							<td><c:out value="${p.date }"/></td>
						</tr>
						</c:forEach>
					</table>
				</div>
				<div class="portCreate" onclick="portCreate()">
					<p style="margin:0px; padding-top:30px">포트폴리오 작성하기</p>
				</div>
				
				
			</div>
		</div>
	<footer>
		<jsp:include page="../../common/footer.jsp"/> 
	</footer>
	<script>
	
	function portCreate(){
		window.open("views/user/portfolio/portfolioPopup.jsp", "port", "resizable=yes, left=200, top=100, width:600, height:500");

	}
	$(function(){
		$(".listResult").click(function(){
		var num = $(this).find("input").val();	
		window.open("${applicationScope.contextPath}/portselectOne.tn?num=" + num, "port", "resizable=yes, left=200, top=100, width:600, height:500");
		});
	})
	
	</script>
</body>
</html>