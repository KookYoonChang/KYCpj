<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
.outer {
	width: 800px;
	height: 500px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}

#title {
	background: #012E40;
	color: white;
}

#middletext, #information, #portphoto {
	background: #012E40;
	color: white;
	margin: 10px
}

input {
	height: 20px;
}

.solid {
	border-style: solid;
}

#collum {
	margin-left: 50px;
}

textarea {
	resize: none;
	max-width: 90%;
	margin-left: 40px;
}

#save {
	background: #F2784B;
	color: white;
	font-size: 30px;
	text-align: center;
	font-weight: bold;
	padding: 15px;
	margin-top: 20px;
	margin-bottom: 20px;
	cursor: pointer;
}
#imgfield{
		margin:auto;
	}
</style>
</head>
<body>
	<div class="outer">
		<div id="title">
			<h3 align="center">리뷰 작성</h3>
		</div>
		<form id="reviewBoard" action="${ applicationScope.contextPath}/reviewInsert.rv" method="post" encType="multipart/form-data">
			<div id="mainframe" class="solid">
				<div id=information>
					<h3 align="center">리뷰를 작성하시면 아래의 정보가 함께 표시됩니다.</h3>
				</div>
				<input type="hidden" name="rno" value="<c:out value="${requestScope.rvInfo.rno }"/>">
				<table id=collum>
					<tr>
						<td>닉네임</td>
						<td><input type="text" maxlength="13" size="15" name="userId"
							id="userId" value="<c:out value="${requestScope.rvInfo.userNick }"/>"readonly></td>
						<td>&nbsp;&nbsp;상호명</td>
						<td><input type="text" maxlength="13" size="15" name="sangho"
							id="sangho" value="<c:out value="${requestScope.rvInfo.bsTitle }"/>" readonly></td>
						<td>&nbsp;&nbsp;시공 업종</td>
						<td><input type="text" maxlength="13" size="15" name="sigong"
							id="sigong" value="<c:out value="${requestScope.rvInfo.catName }"/>" readonly></td>
					</tr>
					<tr>
						<td>의뢰 주소</td>
						<td><input type="text" maxlength="13" size="15"
							name="gsaddress" id="gsaddress" value="<c:out value="${requestScope.rvInfo.reqAdd }"/>" readonly></td>
						<td>&nbsp;&nbsp;견적가</td>
						<td><input type="text" maxlength="13" size="15" name="gmoney"
							id="gmoney" value="<c:out value="${requestScope.rvInfo.payPrice }"/>" readonly></td>
						<td>&nbsp;&nbsp;평가 점수</td>
						<td>
						<select name="prating">
								<option value="5">★★★★★</option>
								<option value="4">★★★★☆</option>
								<option value="3">★★★☆☆</option>
								<option value="2">★★☆☆☆</option>
								<option value="1">★☆☆☆☆</option>
						</select> 
						</td>
					</tr>
				</table>
				<br> <br>
				<div id="middletext">
					<h3 align="center">게시글 본문</h3>
				</div>
				<br>
					<textarea cols="100" rows="20" name="tx" placeholder="게시글을 입력해주세요"></textarea>
				<br>
				<div id= "portphoto">
					<h3 align="center"> 사진 첨부 </h3>
				</div>
				<table id="imgfield">
					<tr>
						<td>
							<div id="contentImgArea1">
								<img id="contentImg1" width="150" height="110">
							</div>
						</td>
						<td>
							<div id="contentImgArea2">
								<img id="contentImg2" width="150" height="110">
							</div>
						</td>
						<td>
							<div id="contentImgArea3">
								<img id="contentImg3" width="150" height="110">
							</div>
						</td>
			
				</tr>
			</table>
			<div id="fileArea">
				<input type="file" id="thumbnailImg1" name ="thumbnailImg1" onchange="loadImg(this, 1)">;
				<input type="file" id="thumbnailImg2" name ="thumbnailImg2" onchange="loadImg(this, 2)">;
				<input type="file" id="thumbnailImg3" name ="thumbnailImg3" onchange="loadImg(this, 3)">;
			</div>	
			<div id="save">
            	저장
         	</div>
		</div>
	</form>
	</div>
	<script>
	
	$(function(){
		$("#fileArea").hide();
		
		$("#contentImgArea1").click(function(){
			$("#thumbnailImg1").click();
		});
		$("#contentImgArea2").click(function(){
			$("#thumbnailImg2").click();
		});
		$("#contentImgArea3").click(function(){
			$("#thumbnailImg3").click();
		});
	})
	
	$("#save").click(function() {
		$("#reviewBoard").submit();
	});
	function loadImg(value, num){
		if(value.files && value.files[0]){
			var reader = new FileReader();
			
			reader.onload = function(e) {
				switch(num){
				case 1 : $("#contentImg1").attr("src", e.target.result); break;
				case 2 : $("#contentImg2").attr("src", e.target.result); break;
				case 3 : $("#contentImg3").attr("src", e.target.result); break;
				}
			}
			reader.readAsDataURL(value.files[0])
		}
	}</script>
</body>
</html>