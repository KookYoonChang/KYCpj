<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	height: 60px;
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

	width: 1000px;
	height: 1123px;
	text-align: center;
	background: #EBEFF2;
}
footer{

	width:1200px;
	height:200px;
	margin:auto;
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
	height: 120px;
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
							<th colspan="6" align="center" class="title">문의 내역</th>
						</tr>
						<tr class="listName">
							<th class="val">처리현황</th>
							<th class="val2" colspan="4">문의 내용</th>
							<th class="val">작성일</th>
						</tr>
						<tr class="listResult">
						<!-- 이부분에 함수 넣어서 출력해야됨   -->
							<td>처리중</td>
							<td colspan="4">이편지는 영국에서  최초로 시작되어 일년에 한 바퀴 돌면서 받는 사람에게 행운을 주었고 지금은  </td>
							<td>2020-08-12</td>
						</tr>
						<tr class="listResult">
						<!-- 이부분에 함수 넣어서 출력해야됨   -->
							<td>처리중</td>
							<td colspan="4">이편지는 영국에서  최초로 시작되어 일년에 한 바퀴 돌면서 받는 사람에게 행운을 주었고 지금은  </td>
							<td>2020-08-12</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	<footer>
		<jsp:include page="../../common/footer.jsp"/> 
	</footer>
</body>
</html>