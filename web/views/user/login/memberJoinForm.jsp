<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
header {
	margin: 0 auto;
	width: 1200px;
	height: 50px;
}

.joinWrap {
	width: 1200px;
	height: 100%;
	margin: auto;
	font-weight: bold;
}

.join_middle {
	width: 1200px;
	height: 850px;
}

.join_imgArea {
	width: 46%;
	height: 840px;
	float: left;
	margin-top: 5px;
	color: #012E40;
	font-size: 20px;
}

.imgJoin {
	margin-top: 150px;
}

.join-area {
	width: 54%;
	height: 90%;
	float: right;
	margin-top: 5px;
}

.join-formarea {
	border: 5px groove #ced4da;
	width: 550px;
	height: auto;
	padding: 10px;
	margin-top: 80px;
}

.join_logo {
	text-align: left;
	font-size: 2.0em;
	line-height: 3.0em;
	width: auto;
	height: 80px;
	vertical-align: bottom;
	color: #012E40;
	font-weight: bold;
}

.c {
	border-spacing: 12px;
	margin: auto;
	font-size: 16px;
}

input[name=userId], input[name=userPwd], input[name=userPwd2], input[name=userNick],
	input[name=userName] {
	width: 300px;
	height: 30px;
	line-height: normal; /* line-height 초기화 */
	padding: .5em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	font-size: 18px;
	border: 1px solid #999;
	border-radius: 10px; /* iSO 둥근모서리 제거 */
	outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

input[name=tel1], input[name=tel2], input[name=tel3] {
	width: 70px;
	height: 28px;
	line-height: normal; /* line-height 초기화 */
	padding: .5em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	font-size: 18px;
	border: 1px solid #999;
	border-radius: 10px; /* iSO 둥근모서리 제거 */
	outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

.btns {
	margin-top: 30px;
}

#login {
	margin-top: 5px;
	background: white;
	width: 100%;
	height: 60px;
	border-radius: 5px;
	font-size: 25px;
	font-weight: bold;
}

#join {
	background: #F2A71B;
	color: white;
	font-size: 25px;
	border-radius: 5px;
	width: 100%;
	height: 60px;
	font-weight: bold;
}

#searchPwd {
	margin-top: 8px;
	font-size: 18px;
	font-weight: bold;
}
#searchPwd a {
	color: #F2784B;

}
</style>
<%String result = (String)request.getAttribute("result");
if(result == null){
	result = "";
	}
if(result.equals("정보불충분")){%>
<script>
function opendialog(){
	alert('모든 정보를 입력하세요!!!');
}
</script>
<body onLoad="opendialog()">
<%}else{
	%>
<body>
<% 
}
%>
</head>
<body>

	<header>
		<jsp:include page="../common/menubar.jsp" />

	</header>
	<div class="joinWrap">

		<!-- join_middle_area start -->
		<div class="join_middle" align="center">

			<!-- login_middle_area_img  start -->
			<div class="join_imgArea" align="center">
				<div class="imgJoin" align="center">
					<img src="/thil/resources/images/login/login.jpg"
						style="width: 560px; height: 400px;">
				</div>
				<br>내가 원하는 공간으로 만들어 보세요.
			</div>
			<!-- join_middle_area_img end -->

			<!-- join-area start -->
			<div class="join-area">

				<!-- join form area -->
				<div class="join-formarea" align="center">
					<%-- <c:if test="${ empty sessionScope.loginUser }"> --%>
					<form id="joinForm"
						action="${ applicationScope.contextPath }/join.ad" method="post">
						<div class="join_logo">
							<img src="/thil/resources/images/login/logo_symbol.png"
								style="width: 80px; height: 80px;" align="left"> 회원가입
						</div>
						<table class="c" align="center">
							<tr>
								<td width="150px">* 아이디(이메일)</td>
								<td><input type="text" maxlength="30" name="userId"
									placeholder="아이디(이메일주소)" onfocus="this.placeholder=''"
									onblur="this.placeholder='아이디(이메일)'" id="userId"></td>
							</tr>
							<tr>
								<td></td>
								<td><div class="check_font" id="id_check"></div></td>
							</tr>

							<tr>
								<td>* 비밀번호</td>
								<td><input type="password" maxlength="20" name="userPwd"
									placeholder="비밀번호" onfocus="this.placeholder=''"
									onblur="this.placeholder='비밀번호'" id="userPwd"></td>
							</tr>
							<tr>
								<td></td>
								<td><div class="check_font" id="pwd_check"></div></td>
							</tr>
							<tr>
								<td>* 비밀번호 확인</td>
								<td><input type="password" maxlength="20" name="userPwd2"
									placeholder="비밀번호 확인" onfocus="this.placeholder=''"
									onblur="this.placeholder='비밀번호 확인'" id="userPwd2"></td>
							</tr>
							<tr>
								<td></td>
								<td><div class="check_font" id="pwd2_check"></div></td>
							</tr>
							<tr>
								<td>* 이름</td>
								<td><input type="text" maxlength="15" name="userName"
									placeholder="이름" onfocus="this.placeholder=''"
									onblur="this.placeholder='이름'"></td>
							</tr>
							<tr>
								<td></td>
								<td><div class="check_font" id="name_check"></div></td>
							</tr>
							<tr>
								<td>* 닉네임</td>
								<td><input type="text" maxlength="20" name="userNick"
									placeholder="닉네임" onfocus="this.placeholder=''"
									onblur="this.placeholder='닉네임'"></td>
							</tr>
							<tr>
								<td></td>
								<td><div class="check_font" id="nick_check"></div></td>
							</tr>
							<tr>
								<td>* 연락처</td>
								<td><input type="text" maxlength="3" minlength="3" name="tel1" 
									placeholder="010" onfocus="this.placeholder=''"
									onblur="this.placeholder='010'"> - 
									<input type="text" maxlength="4" minlength="3" name="tel2" 
									placeholder="1234" onfocus="this.placeholder=''" 
									onblur="this.placeholder='1234'"> - 
									<input type="text" maxlength="4" minlength="4" name="tel3" 
									placeholder="5678" onfocus="this.placeholder=''"
									onblur="this.placeholder='5678'"></td>
							</tr>
							<tr>
								<td></td>
								<td><div class="check_font" id="phone_check"></div></td>
							</tr>
						</table>

						<div class="btns">
							<button id="join" onclick="join();">계정 만들기</button>
						</div>
					</form>
					<button id="login" onclick="login();">로그인</button>
							<div id="searchPwd" onclick="searchPwd();">
								<a href="${ applicationScope.contextPath }/views/user/login/memberSearchPwd.jsp">비밀번호를 잊으셨나요?</a>
							</div>
					<!-- login form area end -->
					<%-- 	</c:if> --%>
				</div>
			</div>
			<!-- login-area end -->
		</div>
		<!-- Pc_middle_area end -->

		<!-- footer -->
		<!-- footer end -->
	</div>
	<!-- Script  -->
	<script>
		function join() {
			$("#joinForm").submit();
		}
		
		function login() {
			location.href = "${ applicationScope.contextPath }/views/user/login/memberLogin.jsp";
		}
	

	</script>
	<script>
// 아이디 유효성 검사
	$("#userId").blur(function() {
		var re_id = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
		var userId = $('#userId').val();
		if(re_id.test(userId)!=true){
			$("#id_check").text("유효한 아이디가 아닙니다!");
			$("#id_check").css("color", "#F2784B");
			$("#reg_submit").attr("disabled", true);
			$("#userId").css("border","2px solid #F2784B");
			$('#userId').val('');
 			$("#userId").focus();
 			return;
 		}
		
		$.ajax({
			url : "${applicationScope.contextPath}/idCheck.me?userId="+userId,
			type : 'get',
			success : function(data) {	
				
				if (data === "impossible") {
						$("#id_check").text("사용중인 아이디입니다 :p");
						$("#id_check").css("color", "#F2784B");
						$("#reg_submit").attr("disabled", true);
						$("#userId").css("border","2px solid #F2784B");
						$('#userId').val('');
						$("#userId").focus();
						
					} else {
						
						$("#id_check").text("사용 가능한 아이디입니다 :p");
						$("#id_check").css("color", "#BFAE56");
						$("#reg_submit").attr("disabled", true);
						$("#userId").css("border","2px solid #BFAE56");
					}
				}, error : function() {
						console.log("실패");
				}

			});
		});
/* 	$('#userPwd').blur(function(){
		var pw = $('#userPwd').val();
			if(pw == ""){
					$("#pwd_check").text("비밀번호를 입력하세요.");
					$("#pwd_check").css("color", "#F2784B");
					$("#reg_submit").attr("disabled", true);
					$("#userPwd").css("border","2px solid #F2784B");
			    	$('#userPwd').val('');
			      
		  }
	}); */
	
	//비밀번호 확인
	$('#userPwd2').blur(function(){
		var pw = $('#userPwd').val();
		var pw2  = $('#userPwd2').val();
			if(pw != pw2){
					$("#pwd2_check").text("비밀번호가 일치 하지 않습니다.");
					$("#pwd2_check").css("color", "#F2784B");
					$("#reg_submit").attr("disabled", true);
					$("#userPwd2").css("border","2px solid #F2784B");
					$("#userPwd").css("border","2px solid #F2784B");
			    	$('#userPwd').val('');
			        $('#userPwd').focus();
		  }else{
			 	$("#pwd2_check").text("비밀번호가 일치합니다.");
				$("#pwd2_check").css("color", "#BFAE56");
				$("#reg_submit").attr("disabled", true);
				$("#userPwd2").css("border","2px solid #BFAE56");
				$("#userPwd").css("border","2px solid #BFAE56");
				
		    	
		  }
	});



		
</script>
</body>
</html>