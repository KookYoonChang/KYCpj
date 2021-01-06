<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>내가 사는 그 집</title>
<style>
body {
	font-family: "NanumGothic";
	font-weight: bolder;
}

.inner {
	display: flex;
	justify-content: center;
	text-align: center;
}

.article {
	width: 1000px;
	height: 1223px;
	background-color: #EBEFF2;
}

.title {
	height: 100px;
	font-size: 30px;
	font-weight: bolder;
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
	height: 40px;
	background: white;
	cursor: pointer;
	border-radius: 5px;
}

.listButton {
	height: 40px;
	background: white;
}

.reqButton {
	font-family: "NanumGothic";
	font-weight: normal;
	font-size: 15px;
	margin-top: 3px;
	width: 110px;
	height: 30px;
	color: white;
	border: none;
	outline: none;
	cursor: pointer;
}

	.reqYes, .reqCancel, .reqDoc, .reqInput, .reqComplete {
	font-family: "NanumGothic";
	font-weight: normal;
	font-size: 15px;
	margin-top: 3px;
	width: 110px;
	height: 30px;
	background: #F2A71A;
	color: white;
	border: none;
	outline: none;
	cursor: pointer;
}

.reqButton:hover, .reqYes:hover, .reqCancel:hover, .reqDoc:hover, .reqInput:hover, .reqComplete:hover {
	background: #012E41;
	color: white;
}

.reqButton:disabled, .reqYes:disabled, .reqCancel:disabled, .reqDoc:disabled, .reqInput:disabled , .reqComplete:disabled {
	background: lightgrey;
	color: white;
	cursor: default;
}

body {
	font-family: "NanumGothic";
	font-weight: bolder;
}

.sidebar {
	width: 200px;
	height: 1123px;
}

.sidebutton {
	width: 200px;
	height: 100px;
	font-size: 25px;
	font-weight: bold;
	background: #EBEFF2;
}

.sidebutton:hover {
	background: #012E41;
	color: white;
}

#btn_group2 button {
	border: 0;
	outline: 0;
	font-size: 20px;
	font-weight: bold;
	color: white;
	border-radius: 15px;
}

.logout:hover {
	background: #012E41;
	color: white;
}

.bsChange {
	margin-top: 400px;
	margin-left: 20px;
	width: 150px;
	height: 80px;

}

.logout {
	margin-top: 50px;
	margin-left: 20px;
	width: 150px;
	height: 80px;
	background: #BFAE56;
	border-radius: 5px;
}

.paging-area {
	border-radius: 5px;
}

#paging {
	margin-top: 40px;
	background: #F2F2F2;
	width: 60px;
	height: 30px;
	border: 2px solid lightgrey;
	border-radius: 5px;
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
	<jsp:include page="../../common/menubar.jsp" />
	<jsp:include page="../../common/searchQenq.jsp" />
	<jsp:include page="../../common/bsPagebar1.jsp" />
	<div class="outer">
		<div class="inner">
			<div class="section">
				<div class="sidebar">
					<div id="btn_group">
						<button class="sidebutton"
							onclick="goMyPage();">의뢰관리</button>
						<button class="sidebutton" onclick="location.href='${applicationScope.contextPath}/views/user/myPage/qnaStatus/qnaNote.jsp'">문의내역</button>
						<button class="sidebutton" onclick="location.href='${applicationScope.contextPath}/views/user/myPage/revManage/myReview.jsp'">리뷰관리</button>
						<button class="sidebutton" onclick="location.href='${applicationScope.contextPath}/views/user/myPage/memberModify/memberModify.jsp'">정보수정</button>
						<button class="sidebutton" onclick="location.href='${applicationScope.contextPath}/views/user/myPage/memberModify/memberModify.jsp'">사업자정보수정</button>
						<button class="sidebutton" onclick="location.href='${applicationScope.contextPath}/views/user/myBsPage/myBsPortfolio/businessPort.jsp'">포트폴리오관리</button>
					</div>

					<div id="btn_group2">
						<div class="bsChange"></div>
						<button class="logout" onclick="location.href='<%= request.getContextPath() %>/logout'">로그아웃</button>
					</div>
				</div>
			</div>
			<div class="article">
				<div class="table-area">
					<table align="center" class="tableSpace">
						<tr>
							<th colspan="11" align="center" class="title">의뢰 관리</th>
						</tr>
						<c:forEach var="bm" items="${ requestScope.list }">
							<tr class="listName">
								<th class="val">의뢰코드</th>
								<th class="val">의뢰일</th>
								<th class="val">의뢰인</th>
								<th class="val">의뢰주소</th>
								<th class="val">예상견적</th>
								<th class="val">진행상태</th>
								<th class="val">의뢰관리</th>	
							</tr>
							<tr class="listResult">
								<td><c:out value="${ bm.rno }" /></td>
								<td><c:out value="${ bm.reqDate }" /></td>
								<td><c:out value="${ bm.reqName }" /></td>
								<td><c:out value="${ bm.reqAdd }" /></td>
								<td><c:out value="${ bm.reqPrice }" /></td>
								<td><c:out value="${ bm.proName }" /></td>
								<td>
								<c:if test="${ bm.proName == '의뢰대기' }">
									<button class="reqYes">의뢰수락</button>
								</c:if>
								<c:if test="${ bm.proName != '의뢰대기' }">
									<button class="reqButton" disabled>의뢰수락</button>
								</c:if>
								<c:if test="${ bm.proName == '의뢰대기' || bm.proName == '방문견적' }">
									<button class="reqCancel" >취소</button>
								</c:if>
								<c:if test="${ bm.proName != '의뢰대기'}">
									<c:if test="${ bm.proName != '방문견적'}">
										<button class="reqButton" disabled>취소</button>
									</c:if>
								</c:if>
								<c:if test="${ bm.proName == '의뢰수락' || bm.proName == '방문견적' }">
									<button class="reqInput">의뢰정보등록</button>
								</c:if>
								<c:if test="${ bm.proName != '방문견적' }">
									<button class="reqButton" disabled>의뢰정보등록</button>
								</c:if>	
								<c:if test="${ bm.proName == '시공대기' || bm.proName == '시공중' }">
									<button class="reqComplete">시공완료</button>
								</c:if>
								<c:if test="${ bm.proName != '시공중' }">
									<button class="reqButton" disabled>시공완료</button>
								</c:if>	
								</td>
							</tr>
							<tr style="height: 20px;">
							</tr>
						</c:forEach>

					</table>
					<div class="paging-area" align="center">
						<button id="paging"
							onclick="location.href='${applicationScope.contextPath}/UserBsSelectReqManageServlet.user?currentPage=1'"><<</button>

						<c:if test="${ requestScope.pi.currentPage <= 1 }">
							<button id="paging" disabled><</button>
						</c:if>

						<c:if test="${ requestScope.pi.currentPage > 1 }">
							<button id="paging"
								onclick="location.href='${applicationScope.contextPath}/UserBsSelectReqManageServlet.user?currentPage=<c:out value="${ requestScope.pi.currentPage - 1 }"/>'"><</button>
						</c:if>


						<c:forEach var="p" begin="${ requestScope.pi.startPage }"
							end="${ requestScope.pi.endPage }" step="1">
							<c:if test="${ requestScope.pi.currentPage eq p }">
								<button id="paging" disabled>
									<c:out value="${ p }" />
								</button>
							</c:if>
							<c:if test="${ requestScope.pi.currentPage ne p }">
								<button id="paging"
									onclick="location.href='${applicationScope.contextPath}/UserBsSelectReqManageServlet.user?currentPage=<c:out value="${ p }"/>'">
									<c:out value="${ p }" />
								</button>
							</c:if>
						</c:forEach>


						<c:if
							test="${ requestScope.pi.currentPage >= requestScope.pi.maxPage }">
							<button id="paging" disabled>></button>
						</c:if>

						<c:if
							test="${ requestScope.pi.currentPage < requestScope.pi.maxPage }">
							<button id="paging"
								onclick="location.href='${applicationScope.contextPath}/UserBsSelectReqManageServlet.user?currentPage=<c:out value="${ requestScope.pi.currentPage + 1 }"/>'">></button>
						</c:if>

						<button id="paging"
							onclick="location.href='${applicationScope.contextPath}/UserBsSelectReqManageServlet.user?currentPage=<c:out value="${ requestScope.pi.maxPage }"/>'">>></button>
					</div>
				</div>
			</div>
		</div>
		<div class="foot">
			<jsp:include page="../../common/footer1.jsp" />
		</div>
	</div>
	<script>
		function goMyPage() {
	         location.href = "${ applicationScope.contextPath }/UserBsSelectReqManageServlet.user";
	       }
	</script>
	<script>
		$(function() {
			$(".listResult").click(function() {
 				var num = $(this).children().eq(0).text();
/* 				window.open('${applicationScope.contextPath}/views/user/myPage/myRequest/myRequestDetail.jsp?num=' + num,'내가 사는 그 집','width=545, height=920, location=no, status=no, scrollbars=no'); */
 				window.open('${applicationScope.contextPath}/UserSelectReqDetailOne.user?num=' + num, '내가 사는 그 집','width=545, height=940, location=no, status=no, scrollbars=no');
			});
		});
	</script>
	<script>
		$(".reqYes").click(function(e) {
			e.stopPropagation();
			var str = ""
			var tdArr = new Array();
			var reqYes = $(this);
			var tr = reqYes.parent().parent();
			var td = tr.children();
			var num = td.eq(0).text();
			var popupWidth = 420;
			var popupHeight = 320;
			var popupX = (window.screen.width / 2) - (popupWidth / 2);
			var popupY= (window.screen.height / 2) - (popupHeight / 2);

			window.open('${ applicationScope.contextPath }/views/user/myBsPage/myBsRequest/reqYes/reqYes1.jsp?num='+ num, '','status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
		});
	</script>
	<script>
		$(".reqCancel").click(function(e) {
			e.stopPropagation();
			var str = ""
			var tdArr = new Array();
			var reqCancel = $(this);
			var tr = reqCancel.parent().parent();
			var td = tr.children();
			var num = td.eq(0).text();
			var popupWidth = 420;
			var popupHeight = 520;
			var popupX = (window.screen.width / 2) - (popupWidth / 2);
			var popupY= (window.screen.height / 2) - (popupHeight / 2);

			window.open('${ applicationScope.contextPath }/views/user/myBsPage/myBsRequest/reqCancel/reqCancel1.jsp?num='+ num, '','status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
		});
	</script>
	<script>
		$(".reqInput").click(function(e) {
		e.stopPropagation();
		var str = ""
		var tdArr = new Array();
		var reqInput = $(this);
		var tr = reqInput.parent().parent();
		var td = tr.children();
		var num = td.eq(0).text();
		var popupWidth = 440;
		var popupHeight = 690;
		var popupX = (window.screen.width / 2) - (popupWidth / 2);
		var popupY= (window.screen.height / 2) - (popupHeight / 2);

		window.open('${ applicationScope.contextPath }/views/user/myBsPage/myBsRequest/reqInput/reqInput1.jsp?num='+ num, '','status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
	});
	</script>
</body>
</html>









