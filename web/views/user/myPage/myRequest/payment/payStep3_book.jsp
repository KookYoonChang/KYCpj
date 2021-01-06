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
	width: 520px;
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

select {
	width: 90px;
	border: 2px solid #EBEFF2;
	outline: none;

}
input[type=radio] {
	width: 10px;
	height: 10px;
}

.subTitle {
	width: 100px;
	height: 13px;
	font-size: 12px;
	font-weight: bolder;
}

.phone {
	width: 200px;
	display: none;
}

.ss {
	width: 300px;
	display: none;
}

.card {
	width: 300px;
	display: none;
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
			</table>
		<div>
			<table style="height: 108px;">			
				<tr>
					<td class="subTitle">거래은행*</td>
<!-- 					<td class="bank" style="font-size: 14px; font-weight: bolder;">
					<input type="radio" value="offline" value="0" name="payBankSelect">오프라인은행</td>
					<td class="bank" style="font-size: 14px; font-weight: bolder;">
					<input type="radio" value="online"  value="1" name="payBankSelect">온라인 은행</td>
					<td class="bank" style="font-size: 14px; font-weight: bolder;">
					<input type="radio" value="stock"  value="2" name="payBankSelect">증권사</td> -->
				</tr>
				<tr>
					<td class="bank"><input type="radio" value="경남은행" name="payBank" autofocus>경남은행</td>
					<td class="bank"><input type="radio" value="광주은행" name="payBank">광주은행</td>
					<td class="bank"><input type="radio" value="국민은행" name="payBank">국민은행</td>
					<td class="bank"><input type="radio" value="기업은행" name="payBank">기업은행</td>
					<td class="bank"><input type="radio" value="NH농협" name="payBank">NH농협</td>
				</tr>
				<tr>	
					<td class="bank"><input type="radio" value="대구은행" name="payBank">대구은행</td>
					<td class="bank"><input type="radio" value="부산은행" name="payBank">부산은행</td>
					<td class="bank"><input type="radio" value="산업은행" name="payBank">산업은행</td>
					<td class="bank"><input type="radio" value="새마을금고" name="payBank">새마을금고</td>
					<td class="bank"><input type="radio" value="수협" name="payBank">수협</td>					
				</tr>
				<tr>	
					<td class="bank"><input type="radio" value="신한은행" name="payBank">신한은행</td>
					<td class="bank"><input type="radio" value="신협" name="payBank">신협</td>
					<td class="bank"><input type="radio" value="우리은행" name="payBank">우리은행</td>
					<td class="bank"><input type="radio" value="우체국" name="payBank">우체국</td>
					<td class="bank"><input type="radio" value="전북은행" name="payBank">전북은행</td>				
				</tr>
				<tr>	

					<td class="bank"><input type="radio" value="SC제일은행" name="payBank">SC제일은행</td>
					<td class="bank"><input type="radio" value="제주은행" name="payBank">제주은행</td>
					<td class="bank"><input type="radio" value="카카오뱅크" name="payBank">카카오뱅크</td>
					<td class="bank"><input type="radio" value="케이뱅크" name="payBank">케이뱅크</td>					
					<td class="bank"><input type="radio" value="하나은행" name="payBank">하나은행</td>
				</tr>
			</table>
			<table>
				<tr>
					<td class="subTitle">출금계좌번호*</td>
					<td colspan="4">
					<input type="text" class="box1" name="payAct" maxlength="17" ></td>
				</tr>
				<tr>
					<td class="subTitle">비밀번호(4자리)*</td>
					<td colspan="4">
					<input type="password" class="box1" name="pass" maxlength="4"></td>
				</tr>
				<tr>
					<td class="subTitle">주민등록번호*</td>
					<td colspan="4">
					<input type="text" class="box2" name="ss1" maxlength="6">&nbsp;
					<input type="password" class="box2" name="ss2" maxlength="7"></td>
				</tr>
				<tr>
					<td class="subTitle">예금주</td>
					<td colspan="4">
					<input type="text" class="box02" id="userName" readonly></td>
				</tr>
				<tr>
					<td colspan="5" class="bar">					
				</tr>
				<tr>
					<td class="subTitle">현금연수증*</td>
					<td colspan="4" class="bank">
					<input type="radio" name="receiptsType" value="income">소득공제용&nbsp;&nbsp;
					<input type="radio" name="receiptsType" value="expense">지출증빙용&nbsp;&nbsp;
					<input type="radio" name="receiptsType" value="">미발행</td>
				</tr>
				<tr>
					<td class="subTitle">발급번호</td>
					<td>
						<select id="receiptsNumType" name="receiptsNumType">
							<option value="" selected="selected">선택하세요</option>
							<option value="phone">휴대폰번호</option>					
							<option value="ss">주민등록번호</option>
							<option value="card">현금영수증카드번호</option>
						</select>
					</td>
					<td colspan="4" class="phone">
						<input type="text" class="box3" name="rNum1" maxlength="3">-<input type="text" class="box3" name="rNum1" maxlength="4">-<input type="text" class="box3" name="rNum1" maxlength="4">
					</td>
					<td colspan="4" class="ss">
						<input type="text" class="box2" name="rNum2" maxlength="6">-<input type="text" class="box2" name="rNum2" maxlength="7">
					</td>
					<td colspan="4" class="card">
						<input type="text" class="box3" name="rNum3" maxlength="4">-<input type="text" class="box3" name="rNum3" maxlength="4">-<input type="text" class="box3" name="rNum3" maxlength="4">-<input type="text" class="box3" name="rNum3" maxlength="6">
					</td>
				</tr>
				<tr>
					<td colspan="5" class="bar">					
				</tr>
			</table>
			<table>
				<tr>
					<td class="subTitle">이메일</td>
					<td colspan="2"><input type="text" class="box1" name="payEmail"></td>
					<td colspan="2" align="right" style="font-weight:bolder"><input type="checkbox" style="width: 14px;" name="agree">구매 내역에 동의합니다.</td>
				</tr>
			</table>
		</div>
		<div style="height: 50px;">
			<table>
				<tr>
					<td colspan="5">
						&nbsp;<button class="nextBtn" onclick="nextBtn();">다음</button>
					</td>
				</tr>
			</table>
		</div>
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
					<td class="stepNow">&nbsp;&nbsp;>&nbsp;&nbsp;계좌 정보 입력</td>
				</tr>
				<tr>
					<td class="step">&nbsp;&nbsp;&nbsp;&nbsp;결제 확인</td>
				</tr>
			</table>
		</div>
	</div>
	<script>
		$(function() {		
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
	$(".box1").keyup(function () { 
		if (this.value.length == this.maxLength) { 
			$(this).next('.box1').focus(); 
			} 
		});
	$(".box2").keyup(function () { 
		if (this.value.length == this.maxLength) { 
			$(this).next('.box2').focus(); 
			} 
		});
	$(".box3").keyup(function () { 
		if (this.value.length == this.maxLength) { 
			$(this).next('.box3').focus(); 
			} 
		});
	</script>
	<script>
	$('#payBankSelect').change(function() {
		var state = $('#payBankSelect option:selected').val();
		if ( state == '0') {
			
		}
	});
	</script>
	<script>
	$('#receiptsNumType').change(function() {
		var state = $('#receiptsNumType option:selected').val();
		if ( state == 'phone') {
			$('.phone').show();
			$('.ss').hide();
			$('.card').hide();
		} else if ( state == 'ss') {
			$('.ss').show();
			$('.phone').hide();
			$('.card').hide();
		} else if ( state == 'card') {
			$('.card').show();
			$('.ss').hide();
			$('.phone').hide();
		} else {
			$('.card').hide();
			$('.ss').hide();
			$('.phone').hide();
		}
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
		if($("input[name=payBank]").is(":checked") == true && 
	       $("input[name=payAct]").val() != "" &&
		   $("input[name=pass]").val().length == "4" &&
		   $("input[name=ss1]").val().length == "6" &&
		   $("input[name=ss2]").val().length == "7") {
		   
			if($("input[name=receiptsType]").is(":checked") == true) {
				if($("input[name=agree]").is(":checked") == true) {
					$(document).ready(function() {
						var payBank = $('input[name=payBank]:checked').val();
						sessionStorage.setItem('payBank', payBank);
					
						var payAct = $('input[name=payAct]').val();
						sessionStorage.setItem('payAct', payAct);
					
	/* 					var userName = $('input[name=userName]').val();
						sessionStorage.setItem('userName', userName); */
					
						var payEmail = $('input[name=payEmail]').val();
						sessionStorage.setItem('payEmail', payEmail);
				
						var receiptsType = $('input[name=receiptsType]:checked').val();
				
	 					var receiptsNumType = $("#receiptsNumType option:selected").val();
	 					sessionStorage.setItem('receiptsNumType', receiptsNumType);
	 					
						if(sessionStorage.getItem('receiptsNumType') == 'phone') {
							var rNumArr = new Array($('input[name=rNum1]').length);
							
							for( var i = 0; i < $('input[name=rNum1]').length ; i++ ) {
								rNumArr[i] = $("input[name=rNum1]").eq(i).val();
							}
							
						} else if (sessionStorage.getItem('receiptsNumType') == 'ss') {
							var rNumArr = new Array($('input[name=rNum2]').length);
							
							for( var i = 0; i < $('input[name=rNum2]').length ; i++ ) {
								rNumArr[i] = $("input[name=rNum2]").eq(i).val();
							}
						
						} else if (sessionStorage.getItem('receiptsNumType') == 'card') {
							var rNumArr = new Array($('input[name=rNum3]').length);
							
							for( var i = 0; i < $('input[name=rNum3]').length ; i++ ) {
								rNumArr[i] = $("input[name=rNum3]").eq(i).val();
							}
						}						
						
						var payCReceipts = receiptsType.concat("$", receiptsNumType, "$", rNumArr.join('$'));	
						sessionStorage.setItem('payCReceipts', payCReceipts);
					});
				
					location.replace("${ applicationScope.contextPath }/views/user/myPage/myRequest/payment/payStep4_book.jsp"); 
				
					} else {
						alert("현금영수증 옵션을 선택해주세요.");}
				
				} else {
					alert("구매내역에 동의해야 합니다.")}
		
		} else {
			alert("필수항목을 입력해야 합니다.")}
	}
	</script>
</body>
</html>