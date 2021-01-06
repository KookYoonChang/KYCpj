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
	height: 450px;
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
	height: 450px;
}

.right {
	float: left;
	width: 150px;
	height: 450px;
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
}

.table1 {
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

#checkall {
	width: 18px;
	height: 18px;
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
					<td class="title2">계좌이체</td>
					<td><div id="titleBtn"></div></td>
				<tr>
			</table>
		</div>
		<div class="left">
		<div style="height: 397px;">
			<table>
				<tr>
					<td colspan ="2" class="table2">&nbsp;&nbsp;이용 약관 안내</td>
					<td colspan ="2" class="table2-1" align="right"><input type="checkbox" id="checkall" autofocus>&nbsp;전체동의<td>
				</tr>
				<tr class="groupBox">
					<td colspan ="2" class="table1">&nbsp;&nbsp;전자금융거래 기본 약관</td>
					<td colspan ="2" align="right"><input type="checkbox" name="chk">(필수)동의합니다</td>
				</tr>
				<tr>
					<td colspan="4">&nbsp;
<textarea class="textBox" readonly>
전자금융거래 기본약관(이용자용)
제1조(목적)
이 약관은 전자지급결제 대행서비스 및 결제대금예치서비스를 제공하는 내가 사는 그 집(이하 '회사'라 합니다)과 이용자 사이의 전자금융을 어쩌구 저쩌구 텍스트로 나중에 긁어오는 자리
</textarea></td>
				</tr>				
				<tr>
					<td colspan ="2" class="table1">&nbsp;&nbsp;개인정보 수집 및 이용 동의</td>
					<td colspan ="2" align="right"><input type="checkbox" name="chk">(필수)동의합니다</td>
				</tr>
				<tr>
					<td colspan="4">&nbsp;
<textarea class="textBox" readonly>
개인정보 수집 및 이용 동의
내가 사는 그 집(이하 '회사'라 함)은 전자금융거래법 및 동법 시행령 상의 제반 사항, 저자상거래 등에서의 소비자보호에 관한 법률 및 전자상거래 등에서의 소비자 보호 지침, 정보통신망 어쩌구 저쩌구 텍스트로 나중에 긁어노느 자리
</textarea></td>
				</tr>
				<tr>
					<td colspan ="2" class="table1">&nbsp;&nbsp;개인정보제공 및 위탁 동의</td>
					<td colspan ="2" align="right"><input type="checkbox" name="chk">(필수)동의합니다</td>
				</tr>
				<tr>
					<td colspan="4">&nbsp;
<textarea class="textBox" readonly>
개인정보 제공 및 위탁 동의
1. 주식회사 내가 사는 그 집(이하 '회사'라 합니다)는 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 개인정보보호법에 의해 통신과금/전자금융서비스 이용자(이하 "이용자"라 합니다)로부터 어쩌구 저쩌구 텍스트로 나중에 긁어오는 자리
</textarea></td>
				</tr>
			</table>
		</div>
		<div style="height: 50px;">
			<table>
				<tr>
					<td colspan="4">
						&nbsp;<button class="nextBtn" onclick="nextBtn();">다음</button>
					</td>
				</tr>
			</table>
		</div>
		
		</div>
		<div class="right">
			<table>
				<tr style="height: 10px;">
				</tr>
				<tr>
					<td class="step">&nbsp;&nbsp;&nbsp;&nbsp;결제 수단 선택</td>
				</tr>
				<tr>
					<td class="stepNow">&nbsp;&nbsp;>&nbsp;&nbsp;약관 동의</td>
				</tr>
				<tr>
					<td class="step">&nbsp;&nbsp;&nbsp;&nbsp;계좌 정보 입력</td>
				</tr>
				<tr>
					<td class="step">&nbsp;&nbsp;&nbsp;&nbsp;결제 확인</td>
				</tr>
			</table>
		</div>
	</div>
	<script>
    $(document).on("contextmenu dragstart selectstart",function(e){
        return false;
    });
	</script>
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
	</script>
	<script>
	function nextBtn() {
		if($("input:checkbox[name=chk]").is(":checked") == true) {
			location.replace("${ applicationScope.contextPath }/views/user/myPage/myRequest/payment/payStep3_book.jsp"); 
		} else {
			alert("필수 체크 항목에 동의해야 합니다.")
		}
	}
	</script>
</body>
</html>