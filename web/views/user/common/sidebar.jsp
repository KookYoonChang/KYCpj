<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
	font-family: "NanumGothic";
	font-weight: bolder;
	}
	.sidebar{
	width: 200px;
	height: 1123px;
	}
	.sidebutton{
		width:200px;
		height:100px;
		font-size:25px;
		font-weight:bold;
		background:#EBEFF2;
	}

	.sidebutton:hover{
	background: #012E41;
	color: white;
	
	}
	#btn_group2 button{ 
	border:0;
	outline:0;
	font-size:20px;
	font-weight:bold;
	color:white;
	border-radius:15px;

	 }
	 
	 .bsChange:hover, .logout:hover{
	 	background: #012E41;
		color: white;
	 }


	
	.bsChange{	
		margin-top:400px;
		margin-left:20px; 
		width:150px;
		height:80px;
		background:#F2774B;
		
	}
	.logout{
		margin-top:50px;
		margin-left:20px; 
		width:150px;
		height:80px;
		background:#BFAE56;
		border-ladius:5px;
	}
</style>
</head>
<body>
	<div class="sidebar">
		<div id="btn_group">
			<button class="sidebutton" onclick="myRequest();">나의 시공</button>
			<button class="sidebutton" onclick="myQna();">문의 내역</button>
			<button class="sidebutton" onclick="myReview();">리뷰 관리</button>
			<button class="sidebutton" onclick="modify();">정보 수정</button>
		</div>
		
		<div id="btn_group2">
			<button class="bsChange" onclick="location.href='<%=request.getContextPath()%>/views/user/myPage/myBsChange/bsChange.jsp'">사업자 전환</button>
			<button class="logout">로그아웃</button>	
		</div>
	</div>
	<!--  나의 의뢰, QNA, Review 서블릿으로 작성하시면됩니다.  -->
	<script>
	function myRequest(){
		 location.href = "<%=request.getContextPath()%>/UserSelectReqManageServlet.user";
	}
	function myQna(){
		 location.href = "<%=request.getContextPath()%>/views/user/myPage/qnaStatus/qnaNote.jsp";
	}
	function myReview(){
		 location.href = "<%=request.getContextPath()%>/reviewList.rl";
	}
	function modify(){
		location.href = "<%=request.getContextPath()%>/views/user/myPage/memberModify/memberModify.jsp";
	}
	
	</script>
</body>
</html>