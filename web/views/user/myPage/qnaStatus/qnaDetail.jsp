<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   .outer{
     width:1200px;
      height:1420px;
      margin-left:auto;
      margin-right:auto;
      margin-top:50px;
      font-weight:bold; 
   }
   #title{
      background:#012E40;
      width:1050px;
      height:50px;
      color:white;
      float:left;
   }
   #close {
		width:50px;
		height:50px;
		background:url('<%=request.getContextPath()%>/resources/images/close.png');
		
	}
   #enqDetail {
   	width:1140px;
   	height:1300px;
   }
    #information {
      background:#012E40;
      color:white;
      width:1150px;
      margin:0 auto;
   }
    #enqNote, #enqAns{
    background:#012E40;
      color:white;
      width:1080px;
      margin:0 auto;
    }
   input{
      height:20px;
   }
   .solid {
      border-style: solid;
   }

   #collum{
      text-align:center;
      margins-top:5px;
      width:940px;
      hegith:230px;
   }
   #userName, #userPhone, #userEmail
  ,#qnaKind, #qnaDate, #qnaAnsDate  {
   	background:#EBEFF2;
   	border-radius:10px;
   	width:300px;
   	height:70px;
   }
   .enqnotearea, .enqansarea {
   	  background:#EBEFF2;
      resize:none;
      max-width: 90%;
      margin-left:40px;
   }
   .enqNote, .enqAns {
   	width:1080px;
   	height:390px;
   	background:#EBEFF2;
   	margin:0 auto;
   }
   #saveman{
      background:#F2784B;
      color:white;   
      font-size:30px;
      text-align:center;
      font-weight:bold;
      padding:15px;
      margin-top:20px;
      margin-bottom:20px;
   }


</style>
</head>
<body>
   <div class="outer">
   <form id="enqDetail"  action="#" method="#">
      <div id="title">
         <h3 align="center">상담내역</h3>
      </div>
      <input type="button" id="close">
      <div id="mainframe" class="solid">
         
         <table align="center" id=collum>
            <tr>
               <td>이름</td>
               <td><input  id="userName" type="text" maxlength="13" size="15" name="userId" id="userId" readonly></td>
               <td>&nbsp;&nbsp;휴대폰 번호</td>
               <td><input id="userPhone" type="text" maxlength="13" size="15" name="sangho" id="sangho" readonly></td>
            </tr>
            <tr>
               <td>이메일</td>
               <td><input id="userEmail" type="text" maxlength="13" size="15" name="gsaddress" id="gsaddress" readonly></td>
               <td>&nbsp;&nbsp;문의 유형</td>
               <td><input id="qnaKind" type="text" maxlength="13" size="15" name="gmoney" id="gmoney" readonly></td>
            </tr>
             <tr>
               <td>등록일</td>
               <td><input id="qnaDate" type="text" maxlength="13" size="15" name="userId" id="userId" readonly></td>
               <td>&nbsp;&nbsp;답변일</td>
               <td><input id="qnaAnsDate" type="text" maxlength="13" size="15" name="sangho" id="sangho" readonly></td>
            </tr>
         </table>
         <br>
         <br>
         <div class="enqNote">
         <div id="enqNote">
            <h3 align="center">문의 내용</h3>
         </div>
         <div class=enqnotearea cols="100" rows="20"></div>
         </div>
         <div  class="enqAns">
         <div id="enqAns">
            <h3 align="center">답변 내용</h3>
         </div>
         <div class="enqansarea" cols="100" rows="20"></div>
         </div>
            <div id="saveman">
               저장
            </div>
 
      </div>
   </form>
   </div>
</body>
</html>