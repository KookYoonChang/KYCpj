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

.changeWrap {
	width: 1200px;
	height: 100%;
	margin: auto;
	font-weight: bold;
}

.change_middle {
	width: 1200px;
	height: 850px;
}

.change_imgArea {
	width: 50%;
	height: 840px;
	float: left;
	margin-top: 5px;
	color: #012E40;
	font-size: 20px;
}

.imgChange {
	margin-top: 150px;
}

.change-area {
	width: 45%;
	height: 90%;
	float: right;
	margin-top: 5px;
}

.change-formarea {
	border: 5px groove #ced4da;
	width: 400px;
	height: 600px;
	padding: 10px;
	margin-top: 80px;
}

.change_logo {
	text-align: left;
	font-size: 2.0em;
	line-height: 3.0em;
	width: auto;
	height: 80px;
	vertical-align: bottom;
	color: #012E40;
	font-weight: bold;
}

input[type="password"] {
	width: 360px;
	height: 50px;
	line-height: normal; /* line-height 초기화 */
	padding: .5em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	font-size: 20px;
	border: 1px solid #999;
	border-radius: 10px; /* iSO 둥근모서리 제거 */
	outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

.btns {
	margin-top: 180px;
}

#loginBtn {
	margin-top: 5px;
	background: white;
	width: 360px;
	height: 60px;
	border-radius: 5px;
	font-size: 25px;
	font-weight: bold;
}

#submitChangeP {
	background: #012E40;
	color: white;
	font-size: 25px;
	border-radius: 5px;
	width: 360px;
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
if(result.equals("비밀번호입력실패")){%>
<script>
function opendialog(){
	alert('비밀번호 확인이 비밀번호와 일치하지 않습니다.');
}
</script>
<body onLoad="opendialog()">
<%}else if(result.equals("비밀번호입력없음")){%>
<script>
function opendialog(){
	alert('수정할 비밀번호를 입력해주세요.');
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
		 <jsp:include page="../common/menubar.jsp"/> 

	</header>
	<div class="changeWrap">

		<!-- change_middle_area start -->
		<div class="change_middle" align="center">

			<!-- change_middle_area_img  start -->
			<div class="change_imgArea" align="center">
				<div class="imgChange" align="center">
					<img src="/thil/resources/images/login/login.jpg"
						style="width: 565px; height: 400px;">
				</div>
				<br>내가 원하는 공간으로 만들어 보세요.
			</div>
			<!-- change_middle_area_img end -->

			<!-- login-area start -->
			<div class="change-area">

				<!-- login form area -->
				<div class="change-formarea" align="center">
					<c:if test="${ empty sessionScope.loginUser }">
						<form id="ChangePwdForm"
							action="${ applicationScope.contextPath }/changePwd.ad" method="post">
							<div class="change_logo">
								<img src="/thil/resources/images/login/logo_symbol.png"
									style="width: 80px; height: 80px;" align="left"> 비밀번호 수정
							</div>
							<div class="userPwd" style="margin-top: 20px;">
								<!-- <<label class="text">ID : </label>  -->
								<input type="password" name="userPwd" placeholder="새 비밀번호 입력"
									onfocus="this.placeholder=''"
									onblur="this.placeholder='새 비밀번호 입력'"  id="userPwd"/>
							</div>
							
							<div class="userPwd" style="margin-top: 20px;">
								<!-- <label class="text">PWD : </label>  -->
								<input type="password" maxlength="13" name="userPwd2"
									placeholder="새 비밀번호 입력 확인" onfocus="this.placeholder=''"
									onblur="this.placeholder='새 비밀번호 입력 확인'" id="userPwd2"/>
							</div>
							

							<div class="btns">
								<button id="submitChangeP" onclick="ChangePwd();">비밀번호 수정</button>
								
							</div>
						</form>
						<button id="loginBtn" onclick="login();">로그인</button>
								<div id="searchPwd" onclick="searchPwd();">
									<a href="${ applicationScope.contextPath }/views/user/login/memberSearchPwd.jsp">비밀번호를 잊으셨나요?</a>
								</div>
						<!-- login form area end -->
					</c:if>
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
		function ChangePwd() {
		
			$("#ChangePwdForm").submit();
		
		}
		
		function login() {
			location.href = "${ applicationScope.contextPath }/views/user/login/memberLogin.jsp";
		}
	</script>
	

</body>
</html>