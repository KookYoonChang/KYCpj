<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
body {
	font-family: "NanumGothic";
	font-size: 18px;
	font-weight: bolder;
}
/* 탑바 와  본문바 스타일 시작 */
nav, header {
	float: left;
}

header {
	margin-left: 152px;
	position:absolute;
	background: white;
	width: 1290px;
	height: 71px;
}

/* 탑바와 스타일 끝 */

/* 메뉴바 스타일 시작  */
.menu {
	background: #536976;
	background: -webkit-linear-gradient(to right, #292E49, #536976);
	background: linear-gradient(to right, #292E49, #536976);
	color: white;
	text-align: left;
	display: table cell;
	vertical-align: middle;
	width: 150px;
	line-height: 60px;
}

.menu:hover {
	background: #314755;  
	background: -webkit-linear-gradient(to left, #26a0da, #314755);  
	background: linear-gradient(to left, #26a0da, #314755); 
	color: lightgray;
	cursor: pointer;
}

#logoutBtn {
	display: inline-block;
	text-align: center;
	background: #BFAE56;
	line-height: 40px;
	margin-left: 15px;
	width: 120px;
}

#adminInfo {
	display: inline-block;
	text-align: center;
	vertical-align: middle;
	height: 200px;
	width: 150px;
}

#adminPhoto {
	margin-top: 20px;
	margin-bottom: -20px;
	display: inline-block;
	background: white;
	height: 120px;
	width: 120px;
}

#adminName {
	display: inline-block;
	vertical-align: top;
	line-height: 30px;
	width: 120px;
}

#adminImg {
	width: 100px;
	height: 100px;
	margin-top: 10px;
	
}

/* 메뉴바 스타일 끝 */
</style>
</head>
<body>
	<!-- login-area start -->
	<c:if test="${ empty sessionScope.loginAdmin }">
		<script>
			location.replace("${applicationScope.contextPath}/views/admin/adminLogin.jsp");
		</script>
	</c:if>
	<!-- login-area end -->
	<div id="wrapper">
		<nav>
			<div class="nav">
				<div class="menu" onclick="userPage();">
					<div id="adminInfo">
						<div id="adminPhoto">
							<img src="<%=request.getContextPath()%>/resources/admin/logo/administrator.png" id="adminImg">
						</div>
						<div id="adminName">
							<c:out value="${ sessionScope.loginAdmin.adminName }" />님
						</div>
					</div>
				</div>
				<div class="menu" onclick="mainStatus();">&nbsp;&nbsp;메인 페이지</div>
				<div class="menu" onclick="alertManage();">&nbsp;&nbsp;알림관리</div>
				<div class="menu" onclick="reqManage();">&nbsp;&nbsp;의뢰관리</div>
				<div class="menu" onclick="payManage();">&nbsp;&nbsp;결제관리</div>
				<div class="menu" onclick="userManage();">&nbsp;&nbsp;회원관리</div>
				<div class="menu" onclick="biManage();">&nbsp;&nbsp;사업자관리</div>
				<div class="menu" onclick="reviewManage();">&nbsp;&nbsp;리뷰관리</div>
				<div class="menu" onclick="portManage();">&nbsp;&nbsp;포트폴리오관리</div>
				<div class="menu" onclick="fileManage();">&nbsp;&nbsp;파일관리</div>
				<div class="menu" onclick="qnaManage();">&nbsp;&nbsp;1:1문의</div>
				<div class="menu" onclick="quickManage();">&nbsp;&nbsp;빠른상담문의</div>
				<div class="menu">
					<div id="logoutBtn" onclick="logout();">로그아웃</div>
				</div>
			</div>
		</nav>
		<header>
			<img src="<%=request.getContextPath()%>/resources/admin/logo/titlelogo.png" id="logo">
		</header>
		<footer>
		</footer>
	</div>
 	<script>
		function logout(){
			var check = window.confirm("관리자 페이지에서 로그아웃 합니다.");
			
			if(check) {
				location.href="<%=request.getContextPath()%>/adminLogout.ad";
			}
		}
	</script>
	
	<script>
		function userPage() {
			location.href="";
		}
		function mainStatus() {
			location.href="${applicationScope.contextPath}/AdminTableMainListServlet.ad";
		}
		function alertManage() {
			location.href="${applicationScope.contextPath}/views/admin/pages/adminAlertManage.jsp";
		}
		function reqManage() {
			location.href="${applicationScope.contextPath}/adminReqManage.ad";
		}
		function payManage() {
			location.href="${applicationScope.contextPath}/adminPayManage.ad";
		}
		function userManage() {
			location.href="${applicationScope.contextPath}/adminUserManage.ad";
		}
		function biManage() {
			location.href="${applicationScope.contextPath}/adminBsManage.ad";
		}
		function reviewManage() {
			location.href="${applicationScope.contextPath}/adminReviewManage.ad";
		}
		function portManage() {
			location.href="${applicationScope.contextPath}/adminPortManage.ad";
		}
		function fileManage() {
			location.href="${applicationScope.contextPath}/adminFilesManage.ad";
		}
		function qnaManage() {
			location.href="${applicationScope.contextPath}/adminQnaManage.ad";
		}
		function quickManage() {
			location.href="${applicationScope.contextPath}/adminFastManage.ad";
		}
	
	</script>
</body>
</html>