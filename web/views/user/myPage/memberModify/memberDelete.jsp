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
.inner {
   display: flex;
   justify-content: center;
   
}

header {
   margin: 0 auto;
   width: 1200px;
   height: 128px;

}

.section {
   width: 200px;
   height: 1123px;

}

.article {

   width: 1000px;
   height: 1123px;
   background: #EBEFF2;
   text-align:center;
}
.changeform{
	margin-top:50px;
}
.c {
	border-spacing: 0 50px;
	margin: auto;
	font-size: 25px;
}

 .c input[type="password"]{
	width: 500px; /* 원하는 너비 설정 */
	height: auto; /* 높이값 초기화 */
	line-height: normal; /* line-height 초기화 */
	padding: .8em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	font-size: 25px;
	border: 1px solid #999;
	border-radius: 10px; /* iSO 둥근모서리 제거 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}


.saveman {
	margin-top: 450px;  
}

#delete {
	background: #012E41;
	width: 100%;
	height: 80px;
	color: white;
	font-size: 25px;
}

#modify {
	margin-top: 10px;
	background: white;
	width: 100%;
	height: 80px;
	font-size: 25px;
	color: gray;
}

footer{

   width:1200px;
   height:200px;
   margin:auto;
}
.title {
   height: 100px;
   font-size: 30px;
   font-weight: bolder;
}
.val2 {
   font-size: 18px;
   width: 600px;
   height: 40px;
   background: #012E41;
   color: white;
   border-radius: 5px;
}
.val {
   font-size: 18px;
   width: 150px;
   height: 40px;
   background: #012E41;
   color: white;
   border-radius: 5px;
}

.listResult {
   height: 120px;
   background: white;
}

.listButton {
   height: 40px;
   background: white;
}

.reqButton {
   font-family: "NanumGothic";
   font-weight: normal;
   font-size: 15px;
   margin-right: 10px;
   width: 80px;
   height: 30px;
   background: #F2A71A;
   color: white;
   border: none;
   outline: none;
   cursor: pointer;
}

.reqButton:hover {
   background: #012E41;
   color: white;
}

</style>

<%String result = (String)request.getAttribute("result");
if(result == null){
	result = "";
	}
if(result.equals("불일치")){%>
<script>
function opendialog(){
	alert('비밀번호 확인이 비밀번호와 일치하지 않습니다.');
}
</script>
<body onLoad="opendialog()">

<%}else if(result.equals("비밀번호오류")){%>
<script>
function opendialog(){
	alert('비밀번호가 올바르지 않습니다.');
}
</script>
<body onLoad="opendialog()">
<%}else{
	%>
<body>
<% 
}
%>
</head>
<body>
   <header>
   <jsp:include page="../../common/menubar.jsp"/> 
   <jsp:include page="../../common/searchQenq.jsp"/> 
   </header>
   <div class="information">
   		<c:if test="${ sessionScope.loginUser.bno == null }">
        <jsp:include page="../../common/mypagebar.jsp"/>  
        </c:if>
        <c:if test="${ sessionScope.loginUser.bno != null }">
        <jsp:include page="../../common/mypagebar.jsp"/> 
        </c:if> 
   </div>
      <div class="inner">
         <div class="section">
        	<c:if test="${ sessionScope.loginUser.bno == null }">
        	 <jsp:include page="../../common/sidebar.jsp"/> 
        	 </c:if>
        	 <c:if test="${ sessionScope.loginUser.bno != null }">
        	 <jsp:include page="../../common/bsSidebar.jsp"/> 
        	 </c:if>
         
         </div>
         <div class="article">
     
			<div class="changeform">
				<h1 align="center">탈퇴하기</h1>
				<h2 align="center" style="color:#F2784B;">정말로 내가 사는 그 집에서  탈퇴하시겠습니까?</h2>
				<form id="deleteForm"
					action="${ applicationScope.contextPath }/delete.ad" method="post">
					<table class="c" align="center">
						<tr>
							<td width="220px">* 비밀번호</td>
							<td><input type="password" maxlength="13" name="userPwd"></td>
							<td></td>
						</tr>
						<tr>
							<td>* 비밀번호확인</td>
							<td><input type="password" maxlength="13" name="userPwd2"></td>
							<td><label id="pwdResult"></label></td>
						</tr>

					</table>
					<div class="saveman" align="center">
						<button id="delete" onclick="deleteMember();">회원탈퇴</button>
					
					</div>
				</form>
				<button id="modify" onclick="modifyFor();">이전으로</button>
			</div>
         </div>
      </div>
         <footer>
      <jsp:include page="../../common/footer.jsp"/> 
   </footer>
   
   <script>

	function deleteMember() {
		$("#deleteForm").submit();
	}
	
	function modifyFor() {
		location.href = "${ applicationScope.contextPath }/views/user/myPage/memberModify/memberModify.jsp";
	}
	


</script>
   </script>
</body>
</html>