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
   margin:0 auto;
}
.inner {
   display: flex;
   justify-content: center;
   
}

.section {
   width: 200px;
   height: 1123px;

}

.qnaArea {
   width: 1000px;
   height: 1123px;
   background: #EBEFF2;
   text-align:center;
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
	.qnaNote {
   		font-size: 18px;
   		width: 600px;
   		height: 40px;
   		background: #012E41;
   		color: white;
   		border-radius: 5px;
}
	.qnaAnsYn, .qnaDate {
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
</head>
<body>
    <jsp:include page="../../common/menubar.jsp"/>
	<jsp:include page="../../common/searchQenq.jsp"/>
   <div class="information">
   
   <jsp:include page="../../common/mypagebar.jsp"/> 
   </div>
      <div class="inner">
         <div class="section">
         <jsp:include page="../../common/sidebar.jsp"/> 
         </div>
         <div class="qnaArea">
            <div class="qna-area">
               <table align="center">
                  <tr>
                     <th colspan="6" align="center" class="title">문의 내역</th>
                  </tr>
                  <tr class="listName">
                     <th class="qnaAnsYn">처리현황</th>
                     <th class="qnaNote" colspan="4">문의 내용</th>
                     <th class="qnaDate">작성일</th>
                  </tr>
                  <tr class="listResult">
                  <!-- 이부분에 함수 넣어서 출력해야됨   -->
                     <td>처리중</td>
                     <td colspan="4">연락주셈</td>
                     <td>2020-09-01</td>
                  </tr>
               </table>
            </div>
         </div>
      </div>
         <footer>
      <jsp:include page="../../common/footer.jsp"/> 
   </footer>
</body>
</html>