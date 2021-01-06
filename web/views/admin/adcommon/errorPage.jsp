<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: "NanumGothic";
	background: url("/thil/resources/admin/images/background/background0.png") no-repeat;
	background-size: cover;
}

.outer {
	position: relative;
	width: 100%;
}

.inner {
	position: absolute;
	top: 50%;
	left: 50%;
	margin: 250px 0 0 -500px;
	text-align: center;
	width: 1000px;
	height: 500px;
	background: #ECE9E6;
	background: -webkit-linear-gradient(to right, #FFFFFF, #ECE9E6);
	background: linear-gradient(to right, #FFFFFF, #ECE9E6);
	box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
}

</style>
</head>
<body>
	<div class="outer">
		<div class="inner">
			<h1 align="center"><c:out value="${ requestScope.message }"/></h1>
		</div>
	</div>
</body>
</html>