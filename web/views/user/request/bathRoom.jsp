<jsp:directive.page language="java"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
body {
   font-family: "NanumGothic";
   font-weight: bolder;
   font-size: 14px;
}

.space {
   height: 5px;
}

.outer {
   width: 500px;
   height: 600px;
   background: #EBEFF2;
}

.inner {
   margin-right: 10px;
   margin-top: 5px;
   float: right;
   width: 374px;
   height: 550px;
   border: 2px solid #C4C4C4;
   border-radius: 5px;
   background: white;
}

.reqTitle1 {
   width: 500px;
   height: 25px;
   background: #012E41;
   color: white;
   text-align: center;
}

.reqTitle2 {
   width: 374px;
   height: 15px;
   color: #012E41;
}

.box1 {
   width: 280px;
   height: 25px;
   margin-left: 30px;
   outline: none;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
}

.box2 {
   width: 150px;
   height: 30px;
   margin-left: 15px;
   outline: none;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
   cursor: pointer;
}

.btn1 {
   font-size: 12px;
   width: 80px;
   height: 30px;
   margin-left: 5px;
   border: 1px solid #C4C4C4;
   background: white;
   border-radius: 5px;
   outline: none;
   cursor: pointer;
}

.btn1:hover {
   background: #F2A71A;
   color: white;
}

.btn1:focus {
   background: #F2A71A;
   color: white;
}

.btn2 {
   font-size: 12px;
   width: 110px;
   height: 30px;
   margin-left: 7px;
   background: #F2F2F2;
   outline: none;
   border: none;
   cursor: pointer;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
   background: white;
   width: 110px;
}

.btn2:hover {
   background: #F2A71A;
   color: white;
}

.btn2:focus {
   background: #F2A71A;
   color: white;
}

.btn3 {
   font-size: 12px;
   margin-left: 15px;
   width: 160px;
   height: 60px;
   background: white;
   outline: none;
   border: none;
   cursor: pointer;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
}

.btn3:hover {
   background: #F2A71A;
   color: white;
}

.btn3:focus {
   background: #F2A71A;
   color: white;
}
#checkOption{
   width: 160px;
   height: 60px;
   margin-left:-7px;
   margin-top:0px;
}

.select1 {
   font-size: 12px;
   margin-left: 5px;
   width: 347px;
   height: 30px;
   outline: none;
   cursor: pointer;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
}

.fontGroup1 {
   font-size: 12px;
}

.nextBtn {
   font-size: 15px;
   margin-top: 50px;
   margin-left: -3px;
   width: 374px;
   height: 40px;
   border: none;
   outline: none;
   background: #F2774B;
   color: white;
   font-weight: bolder;
   cursor: pointer;
}

.nextBtn:hover {	
   background: #BFAE56;
}

</style>
</head>
<body>
   <div class="outer">
      <table>
         <tr>
            <th class="reqTitle1">의뢰하기</th>
         </tr>
      </table>
      <div>
         <jsp:include page="reqMenu.jsp" />
      </div>
      <div class="inner">
         <table>
            <tr>
               <th class="reqTitle2">의뢰 신청</th>
            </tr>
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;&nbsp;&nbsp;업종<input
                  type="text" value="" class="box1" readonly></td>
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;시공할 거실의 욕실 개수를 선택해주세요.</td>
            </tr>
            <tr>
               <td>
                  <button class="btn1">거실용 1개</button>
                  <button class="btn1">거실용 2개</button>
                  <button class="btn1">거실용 3개</button>
                  <button class="btn1">시공 안함</button>
               </td>
            <tr class="space">
            </tr>
            
              <tr>
               <td class="fontGroup1">&nbsp;&nbsp;시공할 안방의 욕실 개수를 선택해주세요.</td>
            </tr>
            <tr>
               <td>
                  <button class="btn1">안방용 1개</button>
                  <button class="btn1">안방용 2개</button>
                  <button class="btn1">안방용 3개</button>
                  <button class="btn1">시공 안함</button>
               </td>
            <tr class="space">
            </tr>
            <tr>
            	<td class="fontGroup1">&nbsp;&nbsp;욕실의 유형을 선택해주세요.</td>
            </tr>
             <tr>
               <td>
                  <button class="btn1">샤워부스형</button>
                  <button class="btn1">욕조형</button>
               </td>
            <tr class="space">
            </tr> 
      		 <tr>
               <td class="fontGroup1">&nbsp;&nbsp;욕실의 천장 교체 유무를 선택해주세요.</td>
            </tr>
            <tr>
               <td>
                  <button class="btn3">교체 필요</button>
                  <button class="btn3">교체 안함</button>
               </td>
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;욕실에 타일 시공이 필요한 곳을 선택해주세요.</td>
            </tr>
            <tr>
               <td>
                  <button class="btn2">벽 + 바닥</button>
                  <button class="btn2">벽만 시공</button>
                  <button class="btn2">바닥만 시공</button>
               </td>
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;시공할 전체 면적을 입력해주세요.</td>
            </tr>
            <tr>
               <td><input type="text" align="center" class="box2"
                  placeholder="평"> <img src=""> <input type="text"
                  align="center" class="box2" placeholder="m2"></td>
            </tr>
            <tr class="space">
            </tr>
     
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;(선택) 추가 옵션을 선택해주세요.</td>
            </tr>
            <tr>
               <td>
                  <button class="btn3"><img src="resources/checkOption.png" id="checkOption">젠다이</button>
               </td>
            </tr>
         </table>
         <table>
            <tr>
               <td>
                  <a href="step2.jsp"><button class="nextBtn">다음</button></a>
               </td>
            </tr>
         </table>
      </div>
   </div>
</body>
</html>