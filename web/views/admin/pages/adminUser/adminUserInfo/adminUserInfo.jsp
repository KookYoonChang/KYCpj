<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
body {
	font-family: "NanumGothic";
	font-weight: bold;
	text-align: center;
}

.newsize {
	width: 525px;
	height: 5px;
}

.outer {
	width: 600px;
	height: 775px;
}

.inner {
	margin-top: 12.5px;
	margin-left: 10px;
	margin-right: 10px;
	width: 575px;
	height: 725px;
	border: 2px solid #C4C4C4;
	border-radius: 2px;
}

.innerMore {
	margin-top: 12.5px;
	margin-left: 15px;
	margin-right: 10px;
	width: 540px;
	height: 675px;
}

.tnumber {
	width: 600px;
	height: 25px;
	background: #012E41;
	color: white;
	font-size: 12px;
}

.tstatus {
	width: 540px;
	height: 20px;
	background: #012E41;
	color: white;
	font-size: 12px;
	border-radius: 2px;
}

.tLabel1 {
	width: 50px;
	height: 25px;
	font-size: 12px;
}

.tInput1 {
	margin-top: 2.5px;
	width: 100px;
	height: 20px;
	border: 2px solid #C4C4C4;
	outline: none;
	background: #EBEFF2;
	border-radius: 2px;
	font-weight: normal;
}

.modify {
	border: 2px solid #EBEFF2;
}

.modify1 {
	width: 90px;
	height: 20px;
	float: right;
	background: #012E41;
	color: white;
	outline: none;
	cursor: pointer;
	font-size: 10px;
}

.val {
	width: 60px;
	height: 25px;
	background: #F2F2F2;
	font-size: 12px;
}

.valResult {
	width: 60px;
	height: 25px;
	font-weight: normal;
	font-size: 12px;
}

.infoList {
	width: 540px;
	height: 250px;
}

.qnaList {
	width: 540px;
	height: 250px;
}

.val2 {
	width: 100px;
	height: 25px;
	background: #F2F2F2;
	font-size: 12px;
}

.val3 {
	width: 200px;
	height: 25px;
	background: #F2F2F2;
	font-size: 12px;
}

.val2Result {
	height: 40px;
	font-size: 12px;
	font-weight: normal;
}
</style>
</head>
<body>
	<div class="outer">
		<table>
			<tr class="close">
				<th class="tnumber">님 정보</th>
			</tr>
		</table>
		<div class="inner">
			<div class="innerMore">
			<form id="updateInfo" action="${ applicationScope.contextPath }/AdminUserInfoServlet.ad" method="post">
				<table>
					<tr>
						<td colspan="10" class="tstatus">회원정보</td>
					</tr>
					<tr class="newsize">
					</tr>
					<tr>
						<td class="tLabel1">회원코드</td>
						<td colspan="2"><input type="text" id="uno" value="" class="tInput1" readonly></td>
						<td class="tLabel1">아이디</td>
						<td colspan="2"><input type="text" value="" class="tInput1" readonly></td>
						<td class="tLabel1">닉네임</td>
						<td colspan="2"><input type="text" value="" class="tInput1"></td>
						<td></td>
					</tr>
					<tr>
						<td class="tLabel1">이름</td>
						<td colspan="2"><input type="text" value="" class="tInput1"></td>
						<td class="tLabel1">연락처</td>
						<td colspan="2"><input type="text" value="" class="tInput1"></td>
						<td class="tLabel1">등록일</td>
						<td colspan="2"><input type="text" value="" class="tInput1" readonly></td>
						<td></td>
					</tr>
					<tr>
						<td class="tLabel1">사업자</td>
						<td colspan="2"><input type="text" value="" class="tInput1"></td>
						<td class="tLabel1"></td>
						<td><td>
						<td class="tLabel1"></td>
						<td colspan="2"></td>
						<td></td>
					</tr>
					<tr class="newsize">
					</tr>
					<tr>
						<td colspan="10" class="modify"><button class="modify1" onclick="updateInfo();">회원 정보 수정</button></td>
					</tr>
					<tr>
						<td colspan="10"></td>
					</tr>
					<tr class="newsize">
					</tr>
					<tr class="newsize">
					</tr>
				</table>
			</form>
				<div class="infoList">
					<table>
						<tr>
							<td colspan="10" class="tstatus">회원의뢰내역</td>
						</tr>
						<tr>
							<td class="val">의뢰코드</td>
							<td class="val">진행상태</td>
							<td class="val">의뢰업종</td>
							<td class="val">의뢰시작일</td>
							<td class="val">의뢰종료일</td>
							<td class="val">견적가</td>
						</tr>
						<tr class="valResult">
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
					</table>
				</div>
				<div class="qnaList">
					<table>
						<tr>
							<td colspan="10" class="tstatus">고객 상담 내역</td>
						</tr>
						<tr>
							<td colspan="2" class="val2">문의코드</td>
							<td colspan="4" class="val3">문의유형</td>
							<td colspan="2" class="val2">등록일</td>
							<td colspan="2" class="val2">답변여부</td>
						</tr>
						<tr class="val2Result">
							<td colspan="2">0</td>
							<td colspan="4">0</td>
							<td colspan="2">0</td>
							<td colspan="2">0</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
<script>
	$(function() {
		var unoOne = document.location.href.split("=");
		$.ajax({
			url: "${applicationScope.contextPath}/AdminUserInfoBeforeServlet.ad",
			data: { unoOne : unoOne[1] },
			type: "post",
			success: function(data) {
				console.log(data);
					
				for(key in data) {
					$("#uno").val(data[key].uno);
				}
			}
		});
	});
</script>
<script>
	function updateInfo() {
		$("#updateInfo").submit();
	}
</script>
</body>
</html>