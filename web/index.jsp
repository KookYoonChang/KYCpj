<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.goToLink {
	width: 150px;
	height:50px;
	background: lightgrey;
	margin-bottom: 50px;
	font-size: 40px;
	font-weight: bolder;
	text-align: center;
	cursor: pointer;
}
</style>
</head>
<body>
	<div>
		<table>
			<tr>
				<td>
					<div class="goToLink" onclick="gook();">국윤창</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="goToLink" onclick="sang();">박상아</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="goToLink" onclick="chan();">박찬영</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="goToLink" onclick="yoon();">윤자영</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="goToLink" onclick="yong();">정용기</div>
				</td>
			</tr>
		</table>
	</div>
	<script>
	function gook() {
		location.href="${ applicationScope.contextPath }/views/gook.jsp";
	}
	function sang() {
		location.href="${ applicationScope.contextPath }/views/sang.jsp";
	}
	function chan() {
		location.href="${ applicationScope.contextPath }/views/chan.jsp";
	}
	function yoon() {
		location.href="${ applicationScope.contextPath }/views/yoon.jsp";
	}
	function yong() {
		location.href="${ applicationScope.contextPath }/views/yong.jsp";
	}
	</script>
</body>
</html>