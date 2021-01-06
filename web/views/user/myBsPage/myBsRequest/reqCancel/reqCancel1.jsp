<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>의뢰관리/의뢰취소</title>
<style>
body {
	font-family: "NanumGothic";
	font-weight: "bolder";
}

.outer {
	width: 400px;
	height: 500px;
}

.top {
	width: 400px;
	height: 30px;
	background: #232526;
	background: -webkit-linear-gradient(to left, #414345, #232526);
	background: linear-gradient(to left, #414345, #232526);
	color: white;	
}

.pngIcon2 {
	width: 25px;
	height: 25px;
}

.title2 {
	font-size: 17px;
	font-weight: bolder;
}

.inner {
	width: 400px;
	height: 270px;
}

.cancelNote {
	width: 400px;
	height: 200px;
}
.title1 {
	width: 400px;
	height: 50px;
	font-size: 20px;
	font-weight: bolder;
	text-align: center;
}

.btn1 {
	margin-top: 50px;
	width: 400px;
	height: 50px;
	background: #F2774B;
	color: white;
	border: none;
	outline: none;
	cursor: pointer;
	font-weight: bolder;
	font-size: 20px;
}

.btn1:hover {
	background: #012E41;
}

.btn2 {
	width: 400px;
	height: 50px;
	background: white;
	border: none;
	outline: none;
	cursor: pointer;
	font-weight: bolder;
	font-size: 20px;
}

.btn2:hover {
	background: lightgrey;
}

textarea {
	width: 390px;
	height: 200px;
	border: 2px solid #C4C4C4;
	border-radius: 5px;
	resize: none;

}
</style>
</head>
<body>
	<div class="outer">
		<div class="top">
			<table>
				<tr>
					<td>
					&nbsp;&nbsp;<img src="<%=request.getContextPath() %>/resources/admin/logo/logo_symbol.png" class="pngIcon2">
					</td>
					<td>
						<label class="title2">의뢰취소</label>
					</td>
			</table>	
		</div>
		<div class="inner">
			<table>
				<tr>
					<td class="title1">의뢰를 취소하시겠습니까?</td>
				</tr>
				<tr>
					<td class="title1">의뢰취소시 취소사유를 입력해야 합니다.<br> 지속된 취소는 불이익을 받을 수 있습니다.</td>
				</tr>
			</table>
		<div class="cancelNote">
			<table>
				<tr>
					<td>취소 사유를 입력해주세요.</td>
				</tr>
				<tr>
					<td><textarea></textarea></td>
				</tr>
			</table>
		</div>
			<table>
				<tr>
					<td><button class="btn1" onclick="complete();">의뢰취소</button></td>
				</tr>
				<tr>
					<td><button class="btn2" onclick="closeBtn();">닫기</button></td>				
				</tr>
			</table>
		</div>
	</div>
	<script>
    $(document).on("contextmenu dragstart selectstart", function(e) {
        return false;
    });
	</script>
	<script>
		function complete() {
			
		if($("textArea").val() != "") {
			var rnoOne = document.location.href.split("=");
			var reqNote = $("textArea").val();
			
			$.ajax({
				url: "${ applicationScope.contextPath }/AdminReqCancel.ad",
				data: { rnoOne : rnoOne[1]
					  , reqNote : reqNote },
				type: "post"
				});
			
				location.replace("${ applicationScope.contextPath }/views/user/myBsPage/myBsRequest/reqCancel/reqCancel2.jsp");
			} else {
				alert("반드시 취소사유를 입력해야 합니다.")
			}		
		};
	</script>
	<script>
	function closeBtn() {
		window.opener.location.reload();
		window.close();
	}
	</script>
</body>
</html>