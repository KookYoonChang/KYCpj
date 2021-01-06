<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>::내가 사는 그 집:: 관리 시스템</title>
<style>
.link {
	width: 200px;
	height: 100px;
	font-size: 50px;
	background: lightgrey;
	cursor: pointer;
}
</style>
</head>
<body>
	<div>
		<div class="link" onclick="goAdmin();">Admin</div>
		<div class="link" onclick="goUser();">User</div>
	</div>


	<script>
		function goAdmin() {
			location.replace("${applicationScope.contextPath}/views/admin/adminIndex.jsp");
		}
		function goUser() {
			location.replace("${applicationScope.contextPath}/views/user/login/memberLogin.jsp");
		}
	</script>
</body>
</html>