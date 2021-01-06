<jsp:directive.page language="java"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }"
   scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>내가 사는 그 집</title>
<style>
body {
   font-family: NanumGothic;
   font-weight: bold;
}
.topBar {
   width: 1200px;
   margin: 0 auto;
}

.topLogo {
   width: 200px;
   float: left;
}

.topMenu {
   width: 120px;
}

.topIcon {
   width: 20px;
   height: 20px;
}

.topBtn {
   width: 130px;
   height: 40px;
   outline :none;
   border: none;
   cursor: pointer;
   background: white;
   font-size: 20px;
   font-weight: bold;
}

.topBtn:hover {
   background: #C4C4C4;
}

.topBtn1 {
   width: 130px;
   height: 40px;
   outline :none;
   border: none;
   cursor: pointer;
   background: white;
   font-size: 20px;
   font-weight: bold;
}

.topBtn1:hover {
   background: #F2A71A;
}

.topBtn2:hover {
   background: #BFAE56;
}

.topBtnBlank {
	width: 130px;
}
</style>

</head>
<body>
   <div>
      <c:if test="${ empty sessionScope.loginUser }">
      <table class="topBar">
         <tr>
            <th><img src="<%=request.getContextPath()%>/resources/images/common/symbol.png" class="topLogo" onclick="goHome();"></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/about.png" class="topIcon">&nbsp;&nbsp;ABOUT</button></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/town.png" class="topIcon" onclick="goTown();">&nbsp;&nbsp;우리동네</button></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/review.png" class="topIcon">&nbsp;&nbsp;시공후기</button></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/guide.png" class="topIcon">&nbsp;&nbsp;가이드</button></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/review.png" class="topIcon" onclick="goCenter();">&nbsp;&nbsp;고객센터</button></th>
            <th class="topMenu">
            <button class="topBtnBlank"></button></th>
        	<th class="topMenu">
            <button class="topBtn1"><img src="<%=request.getContextPath()%>/resources/images/common/login.png" class="topIcon" onclick="goLogin();">&nbsp;&nbsp;로그인</button></th>
		</tr>
      </table>
   </c:if>
   <c:if test="${ !empty sessionScope.loginUser }">
         <table class="topBar">
         <tr>
            <th><img src="<%=request.getContextPath()%>/resources/images/symbol.png" class="topLogo" onclick="goHome();"></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/about.png" class="topIcon">&nbsp;ABOUT</button></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/town.png" class="topIcon" onclick="goTown();">&nbsp;우리동네</button></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/review.png" class="topIcon">&nbsp;시공후기</button></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/guide.png" class="topIcon">&nbsp;가이드</button></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/review.png" class="topIcon" onclick="goCenter();">&nbsp;고객센터</button></th>
            <th class="topMenu">
            <button class="topBtn2"><img src="<%=request.getContextPath()%>/resources/images/common/logon.png" class="topIcon" onclick="">&nbsp;&nbsp;회원이름</button></th>            
            <th class="topMenu">
            <button class="topBtn1"><img src="<%=request.getContextPath()%>/resources/images/common/login.png" class="topIcon" onclick="goLogout();">&nbsp;로그아웃</button></th>
         </tr>
      </table>
   </c:if>
   </div>
   <script>
      function goHome() {
         location.href = "${ applicationScope.contextPath }/main.me";
      }
      function goTown() {
         location.href = "${ applicationScope.contextPath }/selectList.tw";
      }
      function goCenter() {
         location.href = "${ applicationScope.contextPath }/selectList.ct";
      }
      function goLogin() {
         location.href = "${ applicationScope.contextPath }/login.me";
      }
      function goLogout() {
         var check = window.confirm("로그아웃을 하시겠습니까?");
            
         if(check) {
            location.href="<%= request.getContextPath() %>/logout";
         }
      }
   </script>
</body>
</html>