<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application"/>
<c:import url="/views/admin/adcommon/adminMenuBar.jsp"></c:import>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
section {
	float: left;
	background: red;
	width: 1290px;
	height: 875px;
}

.temp-menu {
	margin-left : auto;
	margin-right: auto;
	margin-top: 200px;
	text-align: center;
	cursor: pointer
}
</style>
</head>
<body>
	<section>
		<div class="temp-menu">
			<div><h2>유저 사이트 접근 가능 목록</h2></div>
			<div onclick="myRequest();">나의 의뢰</div>
			<div onclick="myRequestDetail();">나의 의뢰 1건 상세</div>
			<div onclick="userManageDetail();">유저 1명 상세</div>
			<div onclick="bsManageDetail();">사업자 1명 상세</div>
			<div onclick="reqStep1();">의뢰스텝1</div>
			<div onclick="menubartest1();">상단바로그인</div>
		</div>
	</section>
	<script>
		function myRequest(){
			location.href="${ applicationScope.contextPath }/views/user/myPage/myRequest/myRequest.jsp";
		}
		
		function myRequestDetail(){
			location.href="${ applicationScope.contextPath }/views/user/myPage/myRequest/myRequestDetail.jsp";
		}
		
		function userManageDetail(){
			location.href="${ applicationScope.contextPath }/views/admin/pages/adminUserManageDetail.jsp";
		}
		function bsManageDetail(){
			location.href="${ applicationScope.contextPath }/views/admin/pages/adminBsManageDetail.jsp";
		}
		function menubartest1(){
			location.href="${ applicationScope.contextPath }/views/user/myPage/myRequest/menubartest1.jsp";
		}
	</script>
</body>
</html>