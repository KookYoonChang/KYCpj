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
	height: 500px;
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
	background: #EBEFF2;
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

.bank {
	width: 100px;
	font-size: 12px;
}

.resultBox {
	width: 100px;
}

.bar {
	width: 517px;
	border-bottom: 2px solid lightgrey;
}

.box0 {
	width: 200px;
	border: none;
	outline: none;
	font-size: 18px;
}

.box1 {
	width: 200px;
	border: 2px solid #EBEFF2;
	outline: none;

}

.box01 {
	width: 200px;
	border: none;
	outline: none;
	font-size: 14px;
}

.box2 {
	width: 92px;
	border: 2px solid #EBEFF2;
	outline: none;
}

.box02 {
	width: 92px;
	border: none;
	outline: none;
	font-size: 14px;
}
.box3 {
	width: 50px;
	border: 2px solid #EBEFF2;
	outline: none;

}

.box04 {
	width: 100px;
	border: none;
	font-size: 20px;
	font-weight: bolder;
	outline: none;
	
}

.box05 {
	width: 200px;
	border: none;
	font-size: 20px;
	font-weight: bolder;
	outline: none;
}

select {
	width: 100px;
	border: 2px solid #EBEFF2;
	outline: none;

}
input[type=radio] {
	width: 10px;
	height: 10px;
}

.subTitle {
	width: 100px;
	height: 18px;
	font-size: 12px;
	font-weight: bolder;
}

.subTitle2 {
	width: 100px;
	height: 18px;
	font-size: 18px;
	font-weight: bolder;
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
					<td colspan="5" class="subTitle">
						<input class="box02" id="bsName">의&nbsp;&nbsp;
						<input class="box01" id="bsTitle">
					</td>
				</tr>
				<tr>
					<td colspan="5" class="bar">
				</tr>
				<tr>
					<td class="subTitle">상품명</td><td colspan="5"><input type="text" class="box02" id="catName" readonly></td>
				</tr>
				<tr>
					<td class="subTitle">시공일</td><td colspan="5">
					<input type="text" class="box02" id="reqBuildStart" readonly>~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" class="box02" id="reqBuildEnd" readonly></td>			
				</tr>
				<tr>
					<td class="subTitle">견적가</td><td colspan="5"><input type="text" class="box02" id="payPrice" readonly></td>
				</tr>
				<tr>
					<td colspan="5" class="bar">
				</tr>
				<tr>
					<td style="height: 10px;">
				</tr>
				<tr>
					<td colspan="5" class="subTitle2">결제완료</td>
				</tr>
				<tr>
					<td style="height: 10px;">
				</tr>
				<tr>
					<td class="subTitle">결제방식</td><td colspan="5"><input type="text" class="box02" id="payType" readonly></td>
				</tr>
				<tr>
					<td class="subTitle">거래은행</td><td colspan="5"><input type="text" class="box02" id="payBank"readonly></td>
				</tr>
				<tr>
					<td class="subTitle">계좌번호</td><td colspan="5"><input type="text" class="box02" id="payAct" readonly></td>
				</tr>
				<tr>
					<td class="subTitle">예금주</td><td colspan="5"><input type="text" class="box02" id="userName" readonly></td>
				</tr>
				<tr>
					<td class="subTitle">현금영수증</td><td colspan="5"><input type="text" class="box02" id="payCReceipts" readonly></td>
				</tr>
				<tr>
					<td class="subTitle">결제일</td><td colspan="5"><input type="text" class="box02" id="payDate" readonly></td>
				</tr>
				<tr>
					<td class="subTitle">이메일</td><td colspan="5"><input type="text" class="box02" id="payEmail" readonly></td>
				</tr>
			</table>
		</div>
		<div style="height: 50px;">
			<table>
				<tr>
					<td colspan="5">
						&nbsp;<button class="nextBtn" onclick="nextBtn();">닫기</button>
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
					<td class="step">&nbsp;&nbsp;&nbsp;&nbsp;약관 동의</td>
				</tr>
				<tr>
					<td class="step">&nbsp;&nbsp;&nbsp;&nbsp;계좌 정보 입력</td>
				</tr>
				<tr>
					<td class="stepNow">&nbsp;&nbsp;>&nbsp;&nbsp;결제 확인</td>
				</tr>
			</table>
		</div>
	</div>
	<script>
		$(function() {	
			sessionStorage.removeItem('queue');
			sessionStorage.setItem('queue', 0);
			
			var rnoOne = sessionStorage.getItem('rnoOne');
			var queue = sessionStorage.getItem('queue');
			
			$.ajax({
				url: "${applicationScope.contextPath}/UserReqPayment.user",
				data: { queue : queue
					  , rnoOne : rnoOne },
				type: "post",
				success: function(data) {
					console.log(data);
					
					for(key in data) {
						$("#bsName").val(data[key].bsName);
						$("#bsTitle").val(data[key].bsTitle);
						$("#catName").val(data[key].catName);
						$("#reqBuildStart").val(data[key].reqBuildStart);
						$("#reqBuildEnd").val(data[key].reqBuildEnd);
						$("#payPrice").val(data[key].payPrice);
						$("#userName").val(data[key].userName);
						$("#payType").val(data[key].payType);
						$("#payBank").val(data[key].payBank);
						$("#payAct").val(data[key].payAct);
						$("#payCReceipts").val(data[key].payCReceipts);
						$("#payDate").val(data[key].payDate);
						$("#payEmail").val(data[key].payEmail);
					}
				}
			});
		});
	</script>		
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
		window.opener.location.reload();
		window.close();
	}
	</script>
</body>
</html>