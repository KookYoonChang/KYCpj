<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

.sidebar {
	width: 200px;
	height: 1123px;
}

.sidebutton {
	width: 200px;
	height: 100px;
	font-size: 25px;
	font-weight: bold;
	background: #EBEFF2;
}

.sidebutton:hover {
	background: #012E41;
	color: white;
}

#btn_group2 button {
	border: 0;
	outline: 0;
	font-size: 20px;
	font-weight: bold;
	color: white;
	border-radius: 15px;
}

.logout:hover {
	background: #012E41;
	color: white;
}

.logout {
	margin-top: 400px;
	margin-left: 20px;
	width: 150px;
	height: 80px;
	background: #BFAE56;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="sidebar">
		<div id="btn_group">
			<button class="sidebutton" onclick="bsPage();">사업자
				</button>
			<button class="sidebutton" onclick="Qna();">문의
				내역</button>
			<button class="sidebutton" onclick="Review();">리뷰 관리</button>
			<button class="sidebutton" onclick="Infomation();">정보 수정</button>
			<button class="sidebutton" onclick="bsInformation();">사업자 정보수정</button>
			<button class="sidebutton" onclick="bsPort();">포트폴리오관리</button>
		</div>
		<div id="btn_group2">
			<button class="logout" onclick="logout()">로그아웃</button>
		</div>
	</div>
		<!-- 사업자, 문의내역, 리뷰관리, 포트폴리오 관리는 서블릿으로 작성하셔야합니다. 정보수정이랑 사업자 정보수정은 폼으로 연결되게  -->
	<script>
		function bsPage(){
			 location.href = "${ applicationScope.contextPath }/UserBsSelectReqManageServlet.user";
		}
		function Qna(){
			 location.href = "<%=request.getContextPath()%>/views/user/myPage/qnaStatus/qnaNote.jsp";
		}
		function Review(){
			 location.href =  "${ applicationScope.contextPath }/bsReviewList.rl";
		}
		function Information(){
			location.href = "<%=request.getContextPath()%>/views/user/myPage/memberModify/memberModify.jsp";
		}
		function bsInformation(){
			location.href =  "<%=request.getContextPath()%>/views/user/myBsPage/memberBsModify/bsModify.jsp";
		}
		function bsPort(){
			 location.href = "${ applicationScope.contextPath }/portList.pl";
		}
		function logout(){
			 var check = window.confirm("로그아웃을 하시겠습니까?");
             
	          if(check) {
	             location.href="<%= request.getContextPath() %>/logout";
	          }
			
		}
	
	</script>
</body>
</html>