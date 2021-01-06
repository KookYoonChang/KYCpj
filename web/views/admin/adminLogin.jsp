<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }"
	scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
@keyframes fadein {
    from {opacity:0;}
    to {opacity:1;}
}
@-moz-keyframes fadein {
    from {opacity:0;}
    to {opacity:1;}
}
@-webkit-keyframes fadein {
    from {opacity:0;}
    to {opacity:1;}
}
@-o-keyframes fadein {
    from {opacity:0;}
    to {opacity: 1;}
}

body {
	font-family: "NanumGothic";
	font-weight: bolder;
	animation: fadein 2000ms ease-out;
    -moz-animation: fadein 2000ms ease-out;
    -webkit-animation: fadein 2000ms ease-out;
    -o-animation: fadein 2000ms ease-out;
}

#logo {
	margin-top: 30px;
	margin-left: 30px;
	width: 200px;
	height: 40px;
}

#title {
	font-size: 30px;
	margin-left: 30px;
}

#adminId {
	font-size: 20px;
	text-align: center;
}

#adminPwd {
	font-size: 20px;
	text-align: center;
}

input {
	margin-left: 30px;
	width: 330px;
	height: 40px;
	background: lightgray;
	border: none;
	outline: none;
}

input::placeholder {
	font-family: "NanumGothic";
	font-weight: bolder;
	font-size: 20px;
}

.loginBtn {
	margin-top: 50px;
	float: right;
	background: #012E41;
	color: white;
	text-align: center;
	display: table cell;
	width: 130px;
	line-height: 40px;
	font-size: 20px;
}

.loginBtn:hover {
	background: #014562;
	color: lightgray;
	cursor: pointer;
}

#background {
	position: absolute;
	z-index: 1;
	width: 100%;
	height: 100%;
}

.loginBox {
	position: absolute;
	z-index: 2;
	margin: 0 auto;
	margin-top: -200px;
	margin-left: -200px;
	width: 400px;
	height: 350px;
	left: 50%;
	top: 50%;
	background: #ECE9E6;
	background: -webkit-linear-gradient(to right, #FFFFFF, #ECE9E6);
	background: linear-gradient(to right, #FFFFFF, #ECE9E6);
	box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px
		rgba(0, 0, 0, 0.22);
}
</style>
</head>
<body>
	<img
		src="${ applicationScope.contextPath }/resources/admin/images/background/background0.png"
		id="background">
	<div class="loginBox">
		<c:if test="${ empty sessionScope.loginAdmin }">
			<form id="loginForm"
				action="${ applicationScope.contextPath }/adminLogin.ad"
				method="post">
				<table>
					<tr>
						<td><img
							src="${ applicationScope.contextPath }/resources/admin/logo/symbol_title.png"
							id="logo"></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td><a id="title">로그인</a></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td><input type="text" id="adminId" name="adminId"
							placeholder="아이디" onfocus="this.placeholder = ''"
							onblur="this.placeholder='아이디'"></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
					<tr>
						<td><input type="password" id="adminPwd" name="adminPwd"
							placeholder="비밀번호" onfocus="this.placeholder = ''"
							onblur="this.placeholder='비밀번호'"></td>
					</tr>
					<tr>
						<td><div class="loginBtn" onclick="login();">로그인</div></td>
					</tr>
				</table>
			</form>
		</c:if>
		<%-- 		<c:if test="${ !empty sessionScope.loginAdmin }">
			var check = window.confirm("로그아웃 하시겠습니까?");
			location.replace("${applicationScope.contextPath}/index.jsp");
		</c:if> --%>
	</div>
	<script>
	  $('#logo').dblclick(function() { 
        	  location.href="<%= request.getContextPath() %>/logout";
	 	  });
	</script>
	<script>
		function login() {
			$("#loginForm").submit();
		}
	</script>
	<script>
		jQuery(function($) {
			$("body").css("display", "none");
			$("body").fadeIn(2000);
			$("a.transition").click(function(event) {
				event.preventDefault();
				linkLocation = this.href;
				$("body").fadeOut(1000, redirectPage);
			});
			function redirectPage() {
				window.location = linkLocation;
			}
		});
	</script>
</body>
</html>