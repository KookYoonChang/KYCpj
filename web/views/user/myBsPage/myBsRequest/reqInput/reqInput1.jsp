<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>의뢰관리/의뢰정보등록</title>
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
	height: 100px;
	margin-bottom: 20px;
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

#fileArea {
	background:url("/thil/resources/images/request/upload.png") no-repeat;
	background-size:cover;
	width: 390px;
	height: 200px;
	border: 2px solid #C4C4C4;
	border-radius: 5px;
	resize: none;
}

#document {
	width:	390px;
	height: 200px;
	border: none;
	width: 390px;
}
.boxTitle {
	font-size: 18px;
	font-weight: bolder;
}
.box {
	margin-right: 5px;
	float: right;
	width: 200px;
	height: 25px;
	font-size: 18px;
	border: 2px solid #C4C4C4;
	border-radius: 5px;

	
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
						<label class="title2">계약서 등록</label>
					</td>
			</table>	
		</div>
		<div class="inner">
			<table>
				<tr>
					<td class="title1">계약서 등록과 의뢰정보를 입력하세요</td>
				</tr>
				<tr>
					<td class="title1">이 서류는 거래를 보증하는 서류입니다.<br> 신중하게 작성해주시기 바랍니다.</td>
				</tr>
				<tr>
				</tr>
			</table>
		</div>
		<div>
		<form method="post" encType="multipart/form-data" id="uploadForm">
			<table>
				<tr>
					<td colspan="2"></td>
				</tr>
				<tr >
					<td colspan="2" id="fileArea">
					<div>
						<input type="file" id="document" name="document">
					</div>
					</td>
				<tr style="height: 20px;">
				</tr>
				<tr>	
					<td class="boxTitle">
						&nbsp;&nbsp;의뢰시작일*
					</td>
					<td>
						<input type="date" id="reqBuildStart" name="reqBuildStart" class="box">
					</td>
				</tr>
				<tr style="height: 5px;">
				</tr>
				<tr>
					<td class="boxTitle">	
						&nbsp;&nbsp;의뢰종료일*
					</td>
					<td>	
						<input type="date" id="reqBuildEnd" name="reqBuildEnd" class="box">
					</td>
				</tr>
				<tr style="height: 5px;">
				</tr>
				<tr>
					<td class="boxTitle">
						&nbsp;&nbsp;견적가*
					</td>
					<td>						
						<input type="text" id="reqPrice" name="reqPrice" class="box">
					</td>
				</tr>
				<tr>
					<td><input type="text" id="rno" name="rno" hidden></td>
					<td><input type="text" id="BuildDate" name="BuildDate" hidden></td>
					<td><input type="text" id="rP" name="rP" hidden></td>
				</tr>
				<tr>
					<td colspan="2"><button class="btn1" type="submit" value="submit" id="submitBtn">계약서 등록</button></td>
				</tr>
				<tr>
					<td colspan="2"><button class="btn2" onclick="closeBtn();">닫기</button></td>				
				</tr>
			</table>
		</form>
		</div>
	</div>
	<script>
		$(function() {
			var rnoOne = document.location.href.split("=");
			$("#rno").val(rnoOne[1]);
		});
	</script>
	<script>
		$("#submitBtn").click(function (event) {
			var reqBuildStart = $("input[name=reqBuildStart]").val().split("-").join("/").substr(2,8);
			
			var reqBuildEnd = $("input[name=reqBuildEnd]").val().split("-").join("/").substr(2,8);
			
			var reqBuildDate = reqBuildStart.concat("$", reqBuildEnd);
			
			var reqPrice = $("input[name=reqPrice]").val();
			
			if($("input[name=reqBuildStart]").val() != "" &&
			   $("input[name=reqBuildEnd]").val() != "" &&
			   $("input[name=reqPrice").val() != "" ) {
				
 					event.preventDefault();
			
					var form = $('#uploadForm')[0];
			
					var data = new FormData(form);
					
					$("#BuildDate").val(reqBuildDate);
					
					$("#rP").val(reqPrice);
			
					$("#btnSubmit").prop("disabled", true);
			
					$.ajax({
						url: "${ applicationScope.contextPath }/UserBsReqInputServlet.user",
						data: data,
						type: "post",
						enctype: 'multipart/form-data',
						processData: false,
						contentType: false,
						cache: false,
						timeout: 600000,
	     		   	    success: function (data) {
	     		        $("#btnSubmit").prop("disabled", false);
	        			location.replace("${ applicationScope.contextPath }/views/user/myBsPage/myBsRequest/reqInput/reqInput2.jsp");
		            	}
					});
			} else {
				alert("필수항목을 입력해야 합니다.")};
		});
	</script>
	<script>
    $(document).on("contextmenu dragstart selectstart", function(e) {
        return false;
    });
	</script>
	<script>
	function closeBtn() {
		window.opener.location.reload();
		window.close();
	}
	</script>
</body>
</html>