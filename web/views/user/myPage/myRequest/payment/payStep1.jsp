<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>의뢰/결제</title>
<style>
body {
	font-family: "NanumGothic";
}

.outer {
	width: 700px;
	height: 440px;
}

.left {
	float: left;
	width: 350px;
	height: 440px;
}

.right {
	float: left;
	width: 350px;
	height: 440px;
}

.table {
	text-align: center;
	margin: 0 auto;
}

.tableTop {
	width: 700px;
	height: 50px;
	background: #232526;
	background: -webkit-linear-gradient(to left, #414345, #232526);
	background: linear-gradient(to left, #414345, #232526);
	color: white;
}

.tableSpace {
	height: 60px;
}

.iconBox {
	width: 200px;
	height: 200px;
	cursor: pointer;
	background: #ECE9E6;
	background: -webkit-linear-gradient(to right, #FFFFFF, #ECE9E6);
	background: linear-gradient(to right, #FFFFFF, #ECE9E6);
	box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px
		rgba(0, 0, 0, 0.22);
	border-radius: 20px;
}

.iconBox:hover {
	background: lightgrey;
	background: -webkit-linear-gradient(to right, #FFFFFF, lightgrey);
	background: linear-gradient(to right, #FFFFFF, lightgrey);
}

.pngIcon1 {
	vertical-align: middle;
	width: 120px;
	height: 120px;
}

.pngIcon2 {
	width: 40px;
	height: 40px;
}

.tableLabel {
	height: 80px;
	font-family: "NanumGothic";
	font-size: 30px;
	font-weight: bolder;
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

</style>
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
					<td class="title2">결제수단 선택</td>
					<td><div id="titleBtn"></div></td>
				<tr>
			</table>	
		</div>
		<div class="left">
			<table class="table">
				<tr class="tableSpace">
				</tr>
				<tr>
					<td class="iconBox" onclick="payCard();"><img src="<%=request.getContextPath()%>/resources/images/myPage/myRequest/payment/creditcard.png" class="pngIcon1"></td>
				</tr>
				<tr class="tableSpace">
				</tr>
				<tr>
					<td><label class="tableLabel">신용카드</label></td>
				</tr>
			</table>
		</div>
		<div class="right">
			<table class="table">
				<tr class="tableSpace">
				</tr>
				<tr>
					<td class="iconBox" onclick="payBook();"><img src="<%=request.getContextPath()%>/resources/images/myPage/myRequest/payment/bankbook.png" class="pngIcon1"></td>
				</tr>
				<tr class="tableSpace">
				</tr>
				<tr>
					<td><label class="tableLabel">실시간 계좌이체</label></td>
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
		function payCard() {
			alert("추후 지원예정입니다.")
		}
		
		function payBook() {
			var rnoOne = document.location.href.split("=");
			
			sessionStorage.setItem('rnoOne', rnoOne[1]);
			sessionStorage.setItem('queue', 0);
			sessionStorage.setItem('payType', "계좌이체");
			
			location.replace("${ applicationScope.contextPath }/views/user/myPage/myRequest/payment/payStep2_book.jsp");
		}
	</script>
</body>
</html>