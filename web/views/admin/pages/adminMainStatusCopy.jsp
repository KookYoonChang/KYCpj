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
	position: absolute;
	margin-left: 155px;
	margin-top: 75px;
	float: left;
	width: 1290px;
	height: 870px;
	border: none;
}

.dash {
	width: 1290px;
	height: 140px;

}

.dashBoard {
	width: 1290px;
	height: 80px;
	font-size: 32px;
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

.boardList1 {
	width: 1290px;
	height: 350px;
	background: white;
}

.boardList2 {
	width: 1290px;
	height: 350px;
	background: white;
}

.board {
	margin-left: 30px;
}

.title1 {
	width: 300px;
	height: 40px;
	text-align: left;
	background: #BFAE56;
	color: white;
	font-size: 20px;
}

.title2 {
	width: 300px;
	height: 40px;
	text-align: right;
	background: white;
	font-size: 20px;
}

.empty {
	width: 20px;
}

.shortBtn {
	width: 90px;
	height: 35px;
	background: #012E41;
	color: white;
	font-size: 17px;
	border: none;
	outline: none;
	cursor: pointer;
}

.shortBtn:hover {
	background: #F2784B;
	color: white;
	outline: none;
}

.val {
	width: 150px;
	height: 30px;
	font-size: 18px;
	text-align: center;
	background: #EBEFF2;
}

.valResult {
	height: 30px;
	background: #F2F2F2;
	font-size: 18px;
	text-align: center;
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
		<div class="boardList1">
			<table class="board">
				<tr>
					<th colspan="2" class="title1">&nbsp;&nbsp;의뢰 완료 송금 관리</th>
					<th colspan="2" class="title2"><button class="shortBtn">바로가기</button></th>
					<th class="empty"></th>
					<th colspan="2" class="title1">&nbsp;&nbsp;사업자 전환 신청</th>
					<th colspan="2" class="title2"><button class="shortBtn">바로가기</button></th>
				</tr>
				<tr>
					<td class="val">의뢰코드</td>
					<td class="val">진행단계</td>
					<td class="val">시공완료일</td>
					<td class="val">송금여부</td>
					<th class="empty"></th>
					<td class="val">사업자코드</td>
					<td class="val">사업자번호</td>
					<td class="val">상호명</td>
					<td class="val">사업자상태</td>
				</tr>
				<tr class="result">
					<td class="valResult">0</td>
					<td class="valResult">0</td>
					<td class="valResult">0</td>
					<td class="valResult">0</td>
					<th class="empty"></th>
					<td class="valResult">1</td>
					<td class="valResult">1</td>
					<td class="valResult">1</td>
					<td class="valResult">1</td>
				</tr>
			</table>
		</div>
		<div class="boardList2">
			<table class="board">
				<tr>
					<td colspan="2" class="title1">&nbsp;&nbsp;1:1문의</td>
					<th colspan="2" class="title2"><button class="shortBtn">바로가기</button></th>
					<th class="empty"></th>
					<td colspan="2" class="title1">&nbsp;&nbsp;빠른상담문의</td>
					<th colspan="2" class="title2"><button class="shortBtn">바로가기</button></th>
				</tr>
				<tr>
					<td class="val">문의코드</td>
					<td class="val">문의유형</td>
					<td class="val">등록일</td>
					<td class="val">처리현황</td>
					<th class="empty"></th>
					<td class="val">빠른의뢰코드</td>
					<td class="val">의뢰업종</td>
					<td class="val">빠른의뢰일</td>
					<td class="val">빠른답변여부</td>
				</tr>
				<tr class="result">
					<td class="valResult">0</td>
					<td class="valResult">0</td>
					<td class="valResult">0</td>
					<td class="valResult">0</td>
					<th class="empty"></th>
					<td class="valResult">2</td>
					<td class="valResult">2</td>
					<td class="valResult">2</td>
					<td class="valResult">2</td>
				</tr>
			</table>
		</div>
	</div>
	<script>
		$(function(){
			$.ajax({
				url: "${ applicationScope.contextPath }/"
			})
		})
	</script>
</body>
</html>