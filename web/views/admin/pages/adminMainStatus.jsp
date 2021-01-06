<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/views/admin/adcommon/adminMenuBar.jsp"></c:import>
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

.tableResult1 {
	width: 155px;
	height: 30px;
	text-align: center;
	background: #F2F2F2;
	font-size: 18px;
}

.tableResult2 {
	width: 155px;
	height: 30px;
	text-align: center;
	background: #F2F2F2;
	font-size: 18px;
}

#tableReq {
	cursor: pointer;
}

#tableReq:hover {
	background: #012E41;
	border: 2px solid #012E41;
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
							<td class="tableTitle">의뢰코드</td>
							<td class="tableTitle">진행단계</td>
							<td class="tableTitle">시공완료일</td>
							<td class="tableTitle">송금여부</td>
						</tr>
					</table>
					<table id="tableReq">
						<tbody>
						</tbody>
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
							<td class="tableTitle">사업자코드</td>
							<td class="tableTitle">사업자번호</td>
							<td class="tableTitle">상호명</td>
							<td class="tableTitle">사업자상태</td>
						</tr>
					</table>
					<table class="tableResult" id ="tableBs">
						<tbody>
						</tbody>
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
							<td class="tableTitle">문의코드</td>
							<td class="tableTitle">문의유형</td>
							<td class="tableTitle">등록일</td>
							<td class="tableTitle">처리현황</td>
						</tr>
					</table>
					<table class="tableResult" id ="tableQna">
						<tbody>
						</tbody>
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
							<td class="tableTitle">빠른의뢰코드</td>
							<td class="tableTitle">의뢰업종</td>
							<td class="tableTitle">빠른의뢰일</td>
							<td class="tableTitle">빠른답변여부</td>
						</tr>
					</table>
					<table id ="tableFast">
						<tbody>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
 	<script>
		$(function() {
			$.ajax({
				url: "${applicationScope.contextPath}/tableReqList.ad",
				type: "post",
				success: function(data) {
					var $tableReq = $("#tableReq tbody");
					$tableReq.html('');
					
					for(var key in data) {
						var $tr = $("<tr>");
						var $rnoTd = $("<td class='tableResult1'>").text(data[key].rno);
						var $proNameTd = $("<td class='tableResult2'>").text(data[key].proName);
						var $reqBuildEndTd = $("<td class='tableResult1'>").text(data[key].reqBuildEnd);
						var $paySendTd = $("<td class='tableResult2'>").text(data[key].paySend);

						$tr.append($rnoTd);
						$tr.append($proNameTd);
						$tr.append($reqBuildEndTd);
						$tr.append($paySendTd);
						
						$tableReq.append($tr);
					}
				},
				error: function(err) {
					console.log("의뢰 간편 조회 실패!");
				}
			});
		});
	</script>
	<script>
		$(function(){
			$("#tableReq tbody").click(function(){
 				var num = $(this).text().substr(0,8);
 				window.open('${applicationScope.contextPath}/UserSelectReqDetailOne.user?num=' + num, '내가 사는 그 집','width=545, height=940, location=no, status=no, scrollbars=no');
 				});
		});
	</script>
	<script>
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
<!-- 	<script>
		$(function(){
			$("tableBs tbody").click(function(){
 				var num = $(this).children().text();
 				
 				console(num);
 	/* 			window.open('${applicationScope.contextPath}/adminBsChangePopup1?num=' + num, '내가 사는 그 집','width=545, height=940, location=no, status=no, scrollbars=no'); */
 				});
		});
	</script>	 -->
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
	</script>
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