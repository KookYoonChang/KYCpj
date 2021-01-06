<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.userInfo {
		width:1200px;
		height:200px;
		text-align: left;
	}
	.bsInfo {
		width:200px;
		height:200px;
	}
	#member {
		float:left;
		width:140px;
		height:135px;
		margin-left:50px;
		margin-top:30px;
		
	}
	#nameSt {
		font-size:35px;
		font-weight:bold;
	
	}
	.badak {
	width:1200px;
	height:25px;
	background:#012E41;
	margin: 0 auto;
	}
</style>
</head>
<body>
	<div class="inner">
	<div class="userInfo">
		<p>
		<img id="member" src="<%=request.getContextPath()%>/resources/images/common/member.png"/>
		</p>
		<br>
		<br>
		<p>
		&nbsp;&nbsp;&nbsp;
		<label id="nameSt"><c:out value="${ sessionScope.loginUser.userName }"/>&nbsp;님</label>
		</p>
		<p>
		&nbsp;&nbsp;&nbsp;
		<c:out value="${ sessionScope.loginUser.userId }"/> <!--이부분에 로그인 이메일정보 들어감  -->
		</p>
	</div>
	</div>
	<div class="badak">
	</div>
</body>
</html>