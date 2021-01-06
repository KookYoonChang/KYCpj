<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>의뢰/결제</title>
<Style>
body {
	font-family: "NanumGothic";
}
.outer {
	width: 700px;
	height: 440px;
}

.tableTop {
	width: 700px;
	height: 50px;
	background: #232526;
	background: -webkit-linear-gradient(to left, #414345, #232526);
	background: linear-gradient(to left, #414345, #232526);
	color: white;
}

.left {
	float: left;
	width: 550px;
	height: 440px;
}

.right {
	float: left;
	width: 150px;
	height: 440px;
	background: #EBEFF2;
}

.pngIcon2 {
	width: 40px;
	height: 40px;
}

.title1 {
	width: 100px;
	height: 40px;
	font-size: 20px;
	font-weight: bolder;
	
}

.title2 {
	width: 450px;
	height: 40px;
	text-align: center;
	font-size: 22px;
	font-weight: bolder;
}


#titleBtn {
	width: 100px;
	height: 30px;
	outline: none;
	border: none;
	background: white;
	font-size: 15px;
	font-weight: bolder;
	cursor: pointer;
}

.titleBtn:hover {
	background: #F2A71A;
}


.table1 {
	width: 420px;
	height: 30px;
	font-size: 17px;
	font-weight: bolder;
}

.table1-1 {
	width: 110px;
	height: 30px;
	font-size: 17px;
	font-weight: bolder;
}

.table2 {
	width: 420px;
	height: 30px;
	font-size: 19px;
	font-weight: bolder;
}

.table2-1 {
	width: 110px;
	height: 30px;
	font-size: 19px;
	font-weight: bolder;
}
.groupBox {
	width: 530px;
	height: 30px;
}

.textBox {
	width: 510px;
	height: 60px;
	resize: none;
	border: 2px solid lightgrey;
	outline: none;
	cursor: default;
}

.nextBtn {
	width: 517px;
	height: 50px;
	border: none;
	outline: none;
	cursor: pointer;
	background: #F2A71A;
	font-size: 20px;
	font-weight: bolder;
}

.nextBtn:hover {
	background: #012E41;
	color: white;
}

.step {
	height: 30px;
	font-size: 16px;
}

.stepNow {
	height: 30px;
	font-size: 16px;
	font-weight: bold;
}

</Style>
</head>
<body>
	<div class="outer">
		<div class="tableTop">
			<table>
				<tr>
					<td>&nbsp;&nbsp;<img
						src="<%=request.getContextPath() %>/resources/admin/logo/logo_symbol.png"
						class="pngIcon2">
					</td>
					<td><label class="title1">전자결제</label></td>
					<td class="title2">카드결제</td>
					<td><button id="titleBtn">뒤로가기</button></td>
				<tr>
			</table>
		</div>
		<div class="left">
			<table>
				<tr>
					<td class="table2">&nbsp;&nbsp;이용 약관 안내</td>
					<td class="table2-1"><input type="checkbox" id="checkall">전체동의<td>
				</tr>
				<tr class="groupBox">
					<td class="table1">&nbsp;&nbsp;전자금융거래 기본 약관</td>
					<td><input type="checkbox" name="chk">동의합니다</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;<textarea class="textBox" readonly></textarea></td>
				</tr>				
				<tr>
					<td class="table1">&nbsp;&nbsp;개인정보 수집 및 이용 동의</td>
					<td><input type="checkbox" name="chk">동의합니다</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;<textarea class="textBox" readonly></textarea></td>
				</tr>
				<tr>
					<td class="table1">&nbsp;&nbsp;개인정보제공 및 위탁 동의</td>
					<td><input type="checkbox" name="chk">동의합니다</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;<textarea class="textBox" readonly></textarea></td>
				</tr>
				<tr style="height: 30px;">
				</tr>
				<tr>
					<td colspan="2">
						&nbsp;<button class="nextBtn" onclick="nextBtn();">다음</button>
					</td>
				</tr>
			</table>
		
		
		</div>
		<div class="right">
			<table>
				<tr style="height: 10px;">
				</tr>
				<tr>
					<td class="step">&nbsp;&nbsp;&nbsp;&nbsp;결제 수단 선택</td>
				</tr>
				<tr>
					<td class="stepNow">&nbsp;&nbsp;>>&nbsp;&nbsp;약관 동의</td>
				</tr>
				<tr>
					<td class="step">&nbsp;&nbsp;&nbsp;&nbsp;카드 정보 입력</td>
				</tr>
				<tr>
					<td class="step">&nbsp;&nbsp;&nbsp;&nbsp;결제 확인</td>
				</tr>
			</table>
		</div>
	</div>
	<script>
	$(document).ready(function() {

	    $("#checkall").click(function() {

	    	if($("#checkall").prop("checked")) {
	    		$("input[name=chk]").prop("checked",true);
	        
	    	} else {
	    		$("input[name=chk]").prop("checked",false);
	        }
	    });
	});
	$(document).ready(function(){

		$("#titleBtn").click(function(){

			window.history.back();

		});

	});
	</script>
	<script>
	function nextBtn() {
		location.href="${ applicationScope.contextPath }/views/user/myPage/myRequest/payment/payStep3_card.jsp";
	}
	</script>
</body>
</html>