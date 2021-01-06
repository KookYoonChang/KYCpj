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
	height: 1123px;
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

.reqButton:disabled {
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

.bsChange:hover, .logout:hover {
	background: #012E41;
	color: white;
}

.bsChange {
	margin-top: 400px;
	margin-left: 20px;
	width: 150px;
	height: 80px;
	background: #F2774B;
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
	<jsp:include page="../../common/bsPagebar.jsp" />
	<div class="outer">
		<div class="inner">
			<div class="section">
				<div class="sidebar">
				
					<jsp:include page="../../common/bsSidebar.jsp" />

				
				</div>
			</div>
			<div class="article">
				<div class="table-area">
					<table align="center" class="tableSpace">
						<tr>
							<th colspan="6" align="center" class="title">시공 의뢰 내역</th>
						</tr>
						<c:forEach var="um" items="${ requestScope.list }">
							<tr class="listName">
								<th class="val">의뢰번호</th>
								<th class="val">의뢰일</th>
								<th class="val">의뢰업종</th>
								<th class="val">상호명</th>
								<th class="val">견적가</th>
								<th class="val">의뢰현황</th>
							</tr>
							<tr class="listResult">
								<td><c:out value="${ um.rno }" /></td>
								<td><c:out value="${ um.reqDate }" /></td>
								<td><c:out value="${ um.catName }" /></td>
								<td><c:out value="${ um.bsTitle }" /></td>
								<td><c:out value="${ um.payPrice }" /></td>
								<td><c:out value="${ um.proName }" /></td>
							</tr>
							<tr>	
								<th colspan ="6" align="right" class="listButton">
								<button class="reqButton">수락하기</button>
								<button class="reqButton">취소</button>
								<button class="reqButton2">계약서 업로드</button>
								<button class="reqButton2">시공 정보 입력</button>
								<button class="reqButton">시공 완료</button>
								</th>
							</tr>
						</c:forEach>

					</table>
					<div class="paging-area" align="center">
						<button id="paging"
							onclick="location.href='${applicationScope.contextPath}/UserSelectReqManageServlet.user?currentPage=1'"><<</button>

						<c:if test="${ requestScope.pi.currentPage <= 1 }">
							<button id="paging" disabled><</button>
						</c:if>

						<c:if test="${ requestScope.pi.currentPage > 1 }">
							<button id="paging"
								onclick="location.href='${applicationScope.contextPath}/UserSelectReqManageServlet.user?currentPage=<c:out value="${ requestScope.pi.currentPage - 1 }"/>'"><</button>
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
									onclick="location.href='${applicationScope.contextPath}/UserSelectReqManageServlet.user?currentPage=<c:out value="${ p }"/>'">
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
								onclick="location.href='${applicationScope.contextPath}/UserSelectReqManageServlet.user?currentPage=<c:out value="${ requestScope.pi.currentPage + 1 }"/>'">></button>
						</c:if>

						<button id="paging"
							onclick="location.href='${applicationScope.contextPath}/UserSelectReqManageServlet.user?currentPage=<c:out value="${ requestScope.pi.maxPage }"/>'">>></button>
					</div>
				</div>
			</div>
		</div>
		<div class="foot">
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</div>
	<script>
		function goMyPage() {
	         location.href = "${ applicationScope.contextPath }/UserSelectReqManageServlet.user";
	       }
	</script>
	<script>
		function review() {
			var num = $("table.tableSpace tr.listResult").children().eq(0).text();
        	location.href = "${ applicationScope.contextPath }/rvInsertInfo.rv?num=" + num;
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
		function payment() {
			var popupWidth = 730;
			var popupHeight = 520;
			var popupX = (window.screen.width / 2) - (popupWidth / 2);
			var popupY= (window.screen.height / 2) - (popupHeight / 2);
			var num = $("#payment").val();
			/* window.open('${ applicationScope.contextPath }/UserReqPayment.user?num=' + num, '결제하기', 'width=500, height=500, location=no, status=no, scrollbars=no'); */
			window.open('${ applicationScope.contextPath }/views/user/myPage/myRequest/payment/payStep1.jsp?num=' + num, '','status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
		};
	</script>
	<script>
		function complete() {
			var popupWidth = 420;
			var popupHeight = 320;
			var popupX = (window.screen.width / 2) - (popupWidth / 2);
			var popupY= (window.screen.height / 2) - (popupHeight / 2);
			var num = $("#complete").val();
			window.open('${ applicationScope.contextPath }/views/user/myPage/myRequest/complete/complete1.jsp?num=' + num, '', 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
		};
	</script>
</body>
</html>









