<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/views/admin/adcommon/adminMenuBar.jsp"></c:import>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: "NanumGothic";
}
section {
	position: absolute;
	margin-left: 155px;
	margin-top:74px;
	float: left;
	width: 1290px;
	height: 870px;
	border: none;
}

.val {
	height: 40px;
	width: 120px;
	background: lightgrey;
	font-size: 18px;
	border:2px solid lightgrey;
}

.title {
	height: 30px;
	border:2px solid lightgrey;
}

.titleBar { 
	height: 40px;
	font-size: 20px;
}

.searchBox {
	width: 250px;
	height: 40px;
	background: white;
	border: 2px solid lightgrey;
	outline: none;
	
}

.searchTag {
	border:1px solid white;
	width: 170px;
	height: 40px;
	background: #232526;
	background: -webkit-linear-gradient(to left, #414345, #232526);
	background: linear-gradient(to left, #414345, #232526);
	color: white;
	font-size: 18px;
}

.searchline {
	border:2px solid lightgrey;
}

.searchResult {
	margin-top: 10px;
	height: 40px;
	border: none;
}

#submit {
	background: #012E41;
	color: white;
	border: none;
}

#submit:hover {
	background: #F2774B;
	color: white;
}

#reset {
	margin-right: 2px;
	background: white;
	color: #012E41;
	border: 2px solid #012E41;
}

#reset:hover {
	background: #BFAE56;
	color: white;
	border: 2px solid #BFAE56;

}

#submit, #reset {
	width: 90px;
	height: 40px;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;

}

table {
	text-align: center;
}

#result {
	background: #F2F2F2;
	font-size: 13px;
	font-weight: normal;
	height: 40px;
}

#paging {
	margin-top: 40px;
	background: #F2F2F2;
	width: 60px;
	height: 30px;
	border: 2px solid lightgrey;
	cursor: pointer;
}

#paging:hover {
	background: #012E41;
	color: white;	
	border: 2px solid #012E41;
}
</style>
</head>
<body>
	<section>
		<div class="table-area">
			<table align="left" id="searchArea">
			<tr class="title">
				<th colspan="5" align="left">리뷰 관리</th>
				<th colspan="5" align="right">
						<button type="submit" id="submit">검색하기</button>&nbsp;&nbsp;
						<button type="reset" id="reset">초기화</button>
				</th>
			</tr>
			<tr>
				<th class="searchTag">리뷰코드</th><td colspan="2"><input type="text" class="searchBox"></td>
				<th class="searchTag">의뢰코드</th><td colspan="2"><input type="text" class="searchBox"></td>
				<th class="searchTag">아이디</th><td colspan="2"><input type="text" class="searchBox"></td>
			</tr>
			<tr>
				<th class="searchTag">닉네임</th><td colspan="2"><input type="text" class="searchBox"></td>
				<th class="searchTag">상호명</th><td colspan="2"><input type="text" class="searchBox"></td>
				<th class="searchTag">의뢰업종</th><td colspan="2"><input type="text" class="searchBox"></td>
			</tr>
			<tr>
				<th class="searchTag">리뷰점수</th><td colspan="2"><input type="text" class="searchBox"></td>
				<th class="searchTag"></th><td colspan="2"><input type="text" class="searchBox"></td>
				<th class="searchTag"></th><td colspan="2"><input type="text" class="searchBox"></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>	
			<tr>
				<th align="left" class="searchResult">총  / <c:out value="${ requestScope.pi.listCount }"/>건</th>
			</tr>
		</table>
		<table align="left" id="listArea">
			<tr>
				<th class="val">리뷰코드</th>
				<th class="val">의뢰코드</th>
				<th class="val">아이디</th>
				<th class="val">닉네임</th>
				<th class="val">상호명</th>
				<th class="val">의뢰업종</th>
				<th class="val">의뢰주소</th>
				<th class="val">견적가</th>
				<th class="val">리뷰점수</th>
				<th class="val">리뷰등록일</th>
			</tr>
 			<c:forEach var="review" items="${ requestScope.list }">
			<tr id="result">
				<td><c:out value="${ review.revNo }"/></td>
				<td><c:out value="${ review.rno }"/></td>
				<td><c:out value="${ review.userId }"/></td>
				<td><c:out value="${ review.userNick }"/></td>
				<td><c:out value="${ review.bsTitle }"/></td>
				<td><c:out value="${ review.catName }"/></td>
				<td><c:out value="${ review.reqAdd }"/></td>
				<td><c:out value="${ review.payPrice }"/></td>
				<td><c:out value="${ review.revPoint }"/></td>
				<td><c:out value="${ review.revDate }"/></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<div class="paging-area" align="center">
		<button id="paging" onclick="location.href='${applicationScope.contextPath}/adminReviewManage.ad?currentPage=1'"><<</button>
			
			<c:if test="${ requestScope.pi.currentPage <= 1 }">
				<button id="paging" disabled><</button>
			</c:if>
			
			<c:if test="${ requestScope.pi.currentPage > 1 }">
				<button id="paging" onclick="location.href='${applicationScope.contextPath}/adminReviewManage.ad?currentPage=<c:out value="${ requestScope.pi.currentPage - 1 }"/>'"><</button>
			</c:if>
		
			
			<c:forEach var="p" begin="${ requestScope.pi.startPage }" end="${ requestScope.pi.endPage }" step="1">
				<c:if test="${ requestScope.pi.currentPage eq p }">
					<button id="paging" disabled><c:out value="${ p }"/></button>
				</c:if>
				<c:if test="${ requestScope.pi.currentPage ne p }">
					<button id="paging" onclick="location.href='${applicationScope.contextPath}/adminReviewManage.ad?currentPage=<c:out value="${ p }"/>'"><c:out value="${ p }"/></button>
				</c:if>
			</c:forEach>
			
			
			<c:if test="${ requestScope.pi.currentPage >= requestScope.pi.maxPage }">
				<button id="paging" disabled>></button>
			</c:if>
			
			<c:if test="${ requestScope.pi.currentPage < requestScope.pi.maxPage }">
				<button id="paging" onclick="location.href='${applicationScope.contextPath}/adminReviewManage.ad?currentPage=<c:out value="${ requestScope.pi.currentPage + 1 }"/>'">></button>
			</c:if>
			
			<button id="paging" onclick="location.href='${applicationScope.contextPath}/adminReviewManage.ad?currentPage=<c:out value="${ requestScope.pi.maxPage }"/>'">>></button>
	</div>
	</section>
</body>
</html>