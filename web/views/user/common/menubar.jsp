<jsp:directive.page language="java"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }"
   scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>내가 사는 그 집</title>
<style>
.topBar {
   width: 1200px;
   margin: 0 auto;
}

.topLogo {
   width: 200px;
   float: left;
   cursor:pointer;
}

.topMenu {
   width: 120px;
}

.topIcon {
   width: 16px;
   height: 16px;
}

.topBtn {
   width: 110px;
   height: 30px;
   outline :none;
   border: none;
   cursor: pointer;
   background: white;
   font-size: 17px;
}

.topBtn:hover {
   background: #C4C4C4;
}

.topBtn1 {
   width: 120px;
   height: 30px;
   outline :none;
   border: none;
   cursor: pointer;
   background: white;
   font-size: 17px;

}
.topBtn2 {
	width: 140px;
  	height: 30px;
   	outline :none;
   	border: none;
   	cursor: pointer;
  	background: white;
   	font-size: 17px;
}

.topBtn1:hover {
   background: #F2A71A;
}

.topBtn2:hover {
   background: #BFAE56;
;
   
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
            <th><img src="<%=request.getContextPath()%>/resources/images/common/symbol.png" class="topLogo" id="goAdmin" onclick="goHome();"></th>
            <th class="topMenu">
            <button class="topBtn" ><img src="<%=request.getContextPath()%>/resources/images/common/about.png" class="topIcon">&nbsp;ABOUT</button></th>
            <th class="topMenu">
            <button class="topBtn" onclick="goTown();"><img src="<%=request.getContextPath()%>/resources/images/common/town.png" class="topIcon">&nbsp;우리동네</button></th>
            <th class="topMenu">
            <button class="topBtn" onclick="goReview();"><img src="<%=request.getContextPath()%>/resources/images/common/review.png" class="topIcon">&nbsp;시공후기</button></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/guide.png" class="topIcon">&nbsp;가이드</button></th>
            <th class="topMenu">
            <button class="topBtn" onclick="goCenter();"><img src="<%=request.getContextPath()%>/resources/images/common/review.png" class="topIcon">&nbsp;고객센터</button></th>
			
            <th class="topMenu">
            <button class="topBtn1" onclick="goLogin();"><img src="<%=request.getContextPath()%>/resources/images/common/login.png" class="topIcon">&nbsp;로그인</button></th>
         </tr>
      </table>
   </c:if>
   <c:if test="${ !empty sessionScope.loginUser }">
         <table class="topBar">
         <tr>
            <th><img src="<%=request.getContextPath()%>/resources/images/common/symbol.png" class="topLogo" id="goAdmin" onclick="goHome();"></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/about.png" class="topIcon">&nbsp;ABOUT</button></th>
            <th class="topMenu">
            <button class="topBtn" onclick="goTown();"><img src="<%=request.getContextPath()%>/resources/images/common/town.png" class="topIcon">&nbsp;우리동네</button></th>
            <th class="topMenu">
            <button class="topBtn" onclick="goReview();"><img src="<%=request.getContextPath()%>/resources/images/common/review.png" class="topIcon">&nbsp;시공후기</button></th>
            <th class="topMenu">
            <button class="topBtn"><img src="<%=request.getContextPath()%>/resources/images/common/guide.png" class="topIcon">&nbsp;가이드</button></th>
            <th class="topMenu">
            <button class="topBtn"  onclick="goCenter();"><img src="<%=request.getContextPath()%>/resources/images/common/review.png" class="topIcon">&nbsp;고객센터</button></th>
              
            <c:if test="${ sessionScope.loginUser.bno == null }">
                  <th class="topMenu">
                     <button class="topBtn2" onclick="goMypage();">
                        <img
                           src="<%=request.getContextPath()%>/resources/images/login/logon.png"
                           class="topIcon">&nbsp;&nbsp;<c:out value="${ sessionScope.loginUser.userName }"/> 님
                     </button>
                  </th>
               </c:if>
            <c:if test="${ sessionScope.loginUser.bno != null }">
                  <th class="topMenu">
                     <button class="topBtn2" onclick="goBsMypage();">
                        <img
                           src="<%=request.getContextPath()%>/resources/images/login/logon.png"
                           class="topIcon">&nbsp;&nbsp;<c:out value="${ sessionScope.loginUser.userName }"/> 님
                     </button>
                  </th>
            </c:if>
            
            <th class="topMenu">
            <button class="topBtn1" onclick="goLogout();"><img src="<%=request.getContextPath()%>/resources/images/common/login.png" class="topIcon">&nbsp;로그아웃</button></th>
         </tr>
      </table>
   </c:if>
   </div>
   <script>
 	  $('#goAdmin').dblclick(function() { 
 		 location.href = "${ applicationScope.contextPath }/adminLogout.ad";
 	  });
	  
 	  $(document).ready(function() {
 		  
 	  });
      function goHome() {
         location.href = "${ applicationScope.contextPath }/views/user/main/main.jsp";
         
      }
      function goTown() {
         location.href = "${ applicationScope.contextPath }/views/user/woori/town.jsp";
      }
      function goCenter() {
          location.href = "${ applicationScope.contextPath }/views/user/qnaPage/qnaPage.jsp";
       }
      function goReview(){
    	  location.href = "${ applicationScope.contextPath }/selectReviewList.rl";
      }
      function goLogin() {
          location.href = "${ applicationScope.contextPath }/views/user/login/memberLogin.jsp";
          
       }
       function goLogout() {
          var check = window.confirm("로그아웃을 하시겠습니까?");
             
          if(check) {
             location.href="<%= request.getContextPath() %>/logout";
          }
         
       }
       
       function goMypage() {

           location.href = "${ applicationScope.contextPath }/UserSelectReqManageServlet.user";

         }
        function goBsMypage() {
            
            location.href = "${ applicationScope.contextPath }/BsSelectReqManageServlet.bs";
      
         }
   </script>
</body>
</html>