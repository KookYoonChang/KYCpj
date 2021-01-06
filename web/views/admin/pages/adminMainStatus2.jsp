<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/views/admin/adcommon/adminMenuBar.jsp"></c:import>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
body {
	font-family: "NanumGothic";
	font-weight: bolder;
}

.section {
	width: 1290px;
	height: 870px;
	position: absolute;
	margin-left: 155px;
	margin-top: 75px;
	float: left;
	border: none;
}

.dash {
	width: 1290px;
	height: 120px;
}

.dashBoard {
	width: 1290px;
	height: 80px;
	font-size: 32px;
}

.boardArea {
	width: 1290px;
	height: 700px;
}

.boardList1 {
	width: 1290px;
	height: 350px;
}

.boardList2 {
	width: 1290px;
	height: 350px;
}

.table1 {
	float: left;
	width: 630px;
	height: 350px;
}

.tableTemp {
	float: left;
	width: 30px;
	height: 350px;
}

.table2 {
	float: left;
	width: 630px;
	height: 350px;
}

.table3 {
	float: left;
	width: 630px;
	height: 350px;
}

.tableTemp {
	float: left;
	width: 30px;
	height: 350px;
}

.table4 {
	float: left;
	width: 630px;
	height: 350px;
}

.refreshBtn {
	width: 120px;
	height: 30px;
	background: #012E41;
	color: white;
	font-weight: bolder;
	font-size: 15px;
	border: none;
	outline: none;
	cursor: pointer;
}

.refreshBtn:hover {
	background: #F2784B;
	color: white;
	outline: none;
}

.tableLabel {
	width: 320px;
	height: 30px;
	background: #F2A71A;
	color: white;
	font-size: 20px;
}

.tableBtn {
	width: 100px;
	height: 30px;
	background: #012E41;
	color: white;
	float: right;
	font-size: 17px;
	border: none;
	outline: none;
	cursor: pointer;
}

.tableBtn:hover {
	background: #F2784B;
	color: white;
	outline: none;
}

.tableTitle {
	width: 155px;
	height: 30px;
	text-align: center;
	background: #EBEFF2;
	text-size: 18px;
}

.listReq, .listBs, .listQna, .listFast {
	width: 155px;
	height: 30px;
	text-align: center;
	background: #F2F2F2;
	font-size: 18px;
	cursor: pointer;
}
.listReq:hover, .listBs:hover, .listQna:hover, .listFast:hover {
	background: #C4C4C4;
}

</style>
</head>
<body>
	<div class="section">
		<div class="dash">
			<table>
				<tr class="dashBoard">
					<th><label>&nbsp;&nbsp;&nbsp;&nbsp;DashBoard</label></th>
				</tr>
				<tr>
					<th><button class="refreshBtn">새로고침</button></th>
				</tr>
			</table>
		</div>
		<div class="boardArea">
			<div class="boardList1">
				<div class="table1">
					<table>
						<tr>
							<td colspan="2" class="tableLabel">&nbsp;&nbsp;의뢰완료 송금 관리</td>
							<td colspan="2">
								<button class="tableBtn" onclick="goReq();">바로가기</button>
							</td>
						</tr>
						<tr>
							<th class="tableTitle">의뢰코드</th>
							<th class="tableTitle">진행단계</th>
							<th class="tableTitle">시공완료일</th>
							<th class="tableTitle">송금여부</th>
						</tr>
					<c:forEach var="req" items="${ requestScope.listReq }">
						<tr class="listReq">
						 	<td><c:out value="${ req.rno }"/></td>
						 	<td><c:out value="${ req.proName }"/></td>
						 	<td><c:out value="${ req.reqBuildEnd }"/></td>
						 	<td><c:out value="${ req.paySend }"/></td>	
						</tr>
					</c:forEach>
					</table>
				</div>
				<div class="tableTemp">
				</div>
				<div class="table2">
					<table>
						<tr>
							<td colspan="2" class="tableLabel">&nbsp;&nbsp;사업자 전환 신청</td>
							<td colspan="2">
								<button class="tableBtn" onclick="goBs();" >바로가기</button>
							</td>
						</tr>
						<tr>
							<th class="tableTitle">사업자코드</th>
							<th class="tableTitle">사업자번호</th>
							<th class="tableTitle">상호명</th>
							<th class="tableTitle">사업자상태</th>
						</tr>
					<c:forEach var="bs" items="${ requestScope.listBs }">
						<tr class="listBs">
						 	<td><c:out value="${ bs.bno }"/></td>
						 	<td><c:out value="${ bs.bsNum }"/></td>
						 	<td><c:out value="${ bs.bsTitle }"/></td>
						 	<td><c:out value="${ bs.bsMember }"/></td>	
						</tr>
					</c:forEach>
					</table>
				</div>
			</div>
			<div class="boardList2">
				<div class="table1">
					<table>
						<tr>
							<td colspan="2" class="tableLabel">&nbsp;&nbsp;1:1 문의</td>
							<td colspan="2">
								<button class="tableBtn" onclick="goQna();">바로가기</button>
							</td>
						</tr>
						<tr>
							<th class="tableTitle">문의코드</th>
							<th class="tableTitle">문의유형</th>
							<th class="tableTitle">등록일</th>
							<th class="tableTitle">처리현황</th>
						</tr>
					<c:forEach var="qna" items="${ requestScope.listQna }">
						<tr class="listQna">
						 	<td><c:out value="${ qna.qno }"/></td>
						 	<td><c:out value="${ qna.qkName }"/></td>
						 	<td><c:out value="${ qna.qnaDate }"/></td>
						 	<td><c:out value="${ qna.qnaAnsYn }"/></td>	
						</tr>
					</c:forEach>
					</table>
				</div>
				<div class="tableTemp">
				</div>
				<div class="table2">
					<table>
						<tr>
							<td colspan="2" class="tableLabel">&nbsp;&nbsp;빠른 상담 문의</td>
							<td colspan="2">
								<button class="tableBtn" onclick="goFast();">바로가기</button>
							</td>
						</tr>
						<tr>
							<th class="tableTitle">빠른의뢰코드</th>
							<th class="tableTitle">의뢰업종</th>
							<th class="tableTitle">빠른의뢰일</th>
							<th class="tableTitle">빠른답변여부</th>
						</tr>
					<c:forEach var="fast" items="${ requestScope.listFast }">
						<tr class="listFast">
						 	<td><c:out value="${ fast.fastno }"/></td>
						 	<td><c:out value="${ fast.catName }"/></td>
						 	<td><c:out value="${ fast.fastDate }"/></td>
						 	<td><c:out value="${ fast.fastAnsYn }"/></td>	
						</tr>
					</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			$(".listReq").click(function() {
 				var num = $(this).children().eq(0).text();
 				window.open('${applicationScope.contextPath}/UserSelectReqDetailOne.user?num=' + num, '내가 사는 그 집','width=545, height=940, location=no, status=no, scrollbars=no');
			});
		});
	</script>
 	<script>
		$(function() {
			$(".listBs").click(function() {
 				var num = $(this).children().eq(0).text();
 				window.open('${applicationScope.contextPath}/?num=' + num, '내가 사는 그 집','width=545, height=940, location=no, status=no, scrollbars=no');
			});
		});
	</script>
	<script>
		$(function() {
			$(".listQna").click(function() {
 				var num = $(this).children().eq(0).text();
 				window.open('${applicationScope.contextPath}/?num=' + num, '내가 사는 그 집','width=545, height=940, location=no, status=no, scrollbars=no');
			});
		});
	</script>
	<script>
		$(function() {
			$(".listFast").click(function() {
 				var num = $(this).children().eq(0).text();
 				window.open('${applicationScope.contextPath}/?num=' + num, '내가 사는 그 집','width=545, height=940, location=no, status=no, scrollbars=no');
			});
		});
	</script>
<!-- 	<script>
		$(function() {
			$.ajax({
				url: "${applicationScope.contextPath}/tableBsList.ad",
				type: "post",
				success: function(data) {
					var $tableBs = $("#tableBs tbody");
					
					$tableBs.html('');
					
					for(var key in data) {
						
						var $tr = $("<tr>");
						var $bnoTd = $("<td class='tableResult1'>").text(data[key].bno);
						var $bsNumTd = $("<td class='tableResult2'>").text(data[key].bsNum);
						var $bsTitleTd = $("<td class='tableResult1'>").text(data[key].bsTitle);
						var $bsMemberTd = $("<td class='tableResult2'>").text(data[key].bsMember);
					
						$tr.append($bnoTd);
						$tr.append($bsNumTd);
						$tr.append($bsTitleTd);
						$tr.append($bsMemberTd);
						
						$tableBs.append($tr);
					}
				},
				error: function(err) {
					console.log("사업자 간편 조회 실패!");
				}
			});
		});
	</script>
	<script>
		$(function(){
			$("tableBs tbody").click(function(){
 				var num = $(this).children().text();
 				
 				console(num);
 	/* 			window.open('${applicationScope.contextPath}/adminBsChangePopup1?num=' + num, '내가 사는 그 집','width=545, height=940, location=no, status=no, scrollbars=no'); */
 				});
		});
	</script>	
	<script>
		$(function() {
			$.ajax({
				url: "${applicationScope.contextPath}/tableQnaList.ad",
				type: "post",
				success: function(data) {
					var $tableQna = $("#tableQna tbody");
					$tableQna.html('');
					
					for(var key in data) {
						var $tr = $("<tr>");
						var $qnoTd = $("<td class='tableResult1'>").text(data[key].qno);
						var $qkNameTd = $("<td class='tableResult2'>").text(data[key].qkName);
						var $qnaDateTd = $("<td class='tableResult1'>").text(data[key].qnaDate);
						var $qnaAnsYnTd = $("<td class='tableResult2'>").text(data[key].qnaAnsYn);
						
						$tr.append($qnoTd);
						$tr.append($qkNameTd);
						$tr.append($qnaDateTd);
						$tr.append($qnaAnsYnTd);
						
						$tableQna.append($tr);
					}
				},
				error: function(err) {
					console.log("문의 간편 조회 실패!");
				}
			});
		});
	</script>
	<script>
		$(function() {
			$.ajax({
				url: "${applicationScope.contextPath}/tableFastList.ad",
				type: "post",
				success: function(data) {
					var $tableFast = $("#tableFast tbody");
					$tableFast.html('');
					
					for(var key in data) {
						var $tr = $("<tr>");
						var $fastnoTd = $("<td class='tableResult1'>").text(data[key].fastno);
						var $catNameTd = $("<td class='tableResult2'>").text(data[key].catName);
						var $fastDateTd = $("<td class='tableResult1'>").text(data[key].fastDate);
						var $fastAnsYnTd = $("<td class='tableResult2'>").text(data[key].fastAnsYn);
						
						$tr.append($fastnoTd);
						$tr.append($catNameTd);
						$tr.append($fastDateTd);
						$tr.append($fastAnsYnTd);
						
						$tableFast.append($tr);
					}
				},
				error: function(err) {
					console.log("빠른 문의 간편 조회 실패!");
				}
			});
		});
	</script> -->
	<script>
		function goReq() {
			location.href = "${ applicationScope.contextPath }/adminReqManage.ad";
		}
	</script>
	<script>
		function goBs() {
			location.href = "${ applicationScope.contextPath }/adminBsManage.ad";
    	}
	</script>
	<script>
		function goQna() {
			location.href = "${ applicationScope.contextPath }/adminQnaManage.ad";
    	}
	</script>
	<script>
		function goFast() {
			location.href = "${ applicationScope.contextPath }/adminFastManage.ad";
    	}
	</script>
</body>
</html>