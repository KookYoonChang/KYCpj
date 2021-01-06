<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.inner {
	display: flex;
	margin:auto;
	}
	.userInfo{
		width:1000px;
		height:200px;
	}
	.bsInfo{
		width:200px;
		height:200px;
	}
	#member{
		float:left;
		width:140px;
		height:135px;
		margin-left:50px;
		margin-top:30px;
	}
		#nameSt{
		font-size:35px;
		font-weight:bold;
	
	}
	.badak{
	width:1200px;
	height:25px;
	background:#012E41;
	margin:auto;
	}
	#bsMem{
		width:100px;
		height:100px;
		margin-top:30px;
		margin-left:10px;
	}
</style>
</head>
<body>
	<div class="inner">
	<div class="userInfo">
		<p>
		<img id="member" src="<%=request.getContextPath()%>/resources/images/common/member.png"/>
		</p>
		<br><br>
		<label>&nbsp;&nbsp;&nbsp;<span id="nameSt"><c:out value="${ sessionScope.loginUser.userName }"/> 님</span></label>
		<br>
		<br>
		<label>&nbsp;&nbsp;&nbsp;<c:out value="${ sessionScope.loginUser.userId }"/></label>
	</div>
		<div class="bsInfo">
		<img id="bsMem" src="<%=request.getContextPath()%>/resources/images/common/bsMem.png"/>
		<p><font size="5"><b>사업자 회원</b></font></p>
		</div>
	</div>
	<div class="badak"></div>
</body>
</html>