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
.sPwdWrap {
	width: 1200px;
	height: 100%;
	margin: auto;
	font-weight: bold;
}

.sPwd_middle {
	width: 1200px;
	height: 850px;
}

.sPwd_imgArea {
	width: 50%;
	height: 840px;
	float: left;
	margin-top: 5px;
	color: #012E40;
	font-size: 20px;
}

.imgsPwd {
	margin-top: 150px;
}

.sPwd-area {
	width: 50%;
	height: 840px;
	float: right;
	margin-top: 5px;
}

.sPwd-formarea {
	border: 5px groove #ced4da;
	width: 400px;
	height: 600px;
	padding: 10px;
	margin-top: 80px;
}

.sPwd_logo {
	text-align: left;
	font-size: 2.0em;
	line-height: 3.0em;
	width: auto;
	height: 80px;
	vertical-align: bottom;
	color: #012E40;
	font-weight: bold;
}

input[name=userId] {
	width: 350px;
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
	margin-top: 270px;
}

#sPwdLoginBtn {
	margin-top: 5px;
	background: #BFAE56;
	color: white;
	width: 360px;
	height: 60px;
	border-radius: 5px;
	font-size: 25px;
	font-weight: bold;
}

#sPwdNum {
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
if(result.equals("아이디불일치")){%>
<script>
function opendialog(){
	alert('아이디를 확인해주세요.');
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
	<div class="sPwdWrap">
		<!-- sPwd_middle_area start -->
		<div class="sPwd_middle" align="center">

			<!-- login_middle_area_img  start -->
			<div class="sPwd_imgArea" align="center">
				<div class="imgsPwd" align="center">
					<img src="/thil/resources/images/login/login.jpg"
						style="width: 565px; height: 400px;">
				</div>
				<br>내가 원하는 공간으로 만들어 보세요.
			</div>
			<!-- sPwd_middle_area_img end -->
			
			<!-- sPwd-area start -->
			<div class="sPwd-area">

				<!-- sPwd form area -->
				<div class="sPwd-formarea" align="center">
					<c:if test="${ empty sessionScope.loginUser }">
						<form id="sPwdForm"
							action="${ applicationScope.contextPath }/sPwdNum.me" method="post">
							<div class="sPwd_logo">
								<img src="/thil/resources/images/login/logo_symbol.png"
									style="width: 80px; height: 80px;" align="left"> 비밀번호 찾기
							</div>
							<div class="userId" style="margin-top: 40px;">
						
								<input type="text" name="userId" id="userId" 
								placeholder="아이디(이메일주소)" onfocus="this.placeholder=''"
								onblur="this.placeholder='아이디(이메일)'" />
								<div class="check_font" id="id_check"></div>
							</div>
						<!-- 	<div class="userPwd" style="margin-top: 20px;">
	
								<input type="text" name="num" placeholder="인증번호 입력"
									onfocus="this.placeholder=''"
									onblur="this.placeholder='인증번호 입력'" />
							</div> -->

							<div class="btns">
								<button id="sPwdNum" onclick="sPwdNum();">인증번호 전송</button>
							</div>
						</form>
						<button id="sPwdLoginBtn" onclick="login();">로그인</button>
						<%-- <div id="searchPwd" onclick="searchPwd();">
							<a href="${ applicationScope.contextPath }/views/user/login/memberSearchPwd.jsp">비밀번호를 잊으셨나요?</a>
						</div> --%>
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
		function sPwdNum(){
			$("#sPwdForm").submit();
		}
		
		function login() {
			location.href = "${ applicationScope.contextPath }/views/user/login/memberLogin.jsp";
		}
	</script>


</body>
</html>