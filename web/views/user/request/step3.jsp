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
   margin:0 auto 
}

.space {
   height: 5px;
}

.outer {
   width: 500px;
   height: 1000px;
   background: #EBEFF2;
}

.inner {
   margin-right: 10px;
   margin-top: 5px;
   float: right;
   width: 374px;
   height: 950px;
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
   font-size:10px;
}

.btn1 {
   font-size: 10px;
   width: 110px;
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
   height: 30px;
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
   margin-top: 10px;
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
         <jsp:include page="reqMenu2.jsp" />
      </div>
      <div class="inner">
         <table>
         	<tr>
               <th class="reqTitle2">의뢰 신청</th>
            </tr>
            <tr class="space">
            </tr>
            <tr>
				<tr class="space">
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td><input type="text" align="center" class="box2"
                  placeholder="시공 시작 희망일"> <img src=""> <input type="text"
                  align="center" class="box2" placeholder="m2"></td>
            </tr>
            <tr>
               <td><input type="text" align="center" class="box2"
                  placeholder="시공 종료 희망일"> <img src=""> <input type="text"
                  align="center" class="box2" placeholder="m2"></td>
            </tr>
            <tr>
               <td><input type="text" align="center" class="box2"
                  placeholder="시공 예상 금액"> <img src=""> <input type="text"
                  align="center" class="box2" placeholder="m2"></td>
            </tr>
            <tr>
               <td><input type="text" align="center" class="box2"
                  placeholder="시공지 주소(상세내용포함)"> <img src=""> <input type="text"
                  align="center" class="box2" placeholder="m2"></td>
            </tr>
            <tr>
               <td><input type="text" align="center" class="box2"
                  placeholder="이름"> <img src=""> <input type="text"
                  align="center" class="box2" placeholder="m2"></td>
            </tr>
            <tr>
               <td><input type="text" align="center" class="box2"
                  placeholder="휴대폰"> <img src=""> <input type="text"
                  align="center" class="box2" placeholder="m2"></td>
            </tr>
            <tr>
               <td><input type="text" align="center" class="box2"
                  placeholder="시공 공간의 형태"> <img src=""> <input type="text"
                  align="center" class="box2" placeholder="m2"></td>
            </tr>
             <tr>
               <td><input type="text" align="center" class="box2"
                  placeholder="시공 공간의 앨레베이터 유무"> <img src=""> <input type="text"
                  align="center" class="box2" placeholder="m2"></td>
            </tr>
             <tr>
               <td><input type="text" align="center" class="box2"
                  placeholder="요청사항"> <img src=""> <input type="text"
                  align="center" class="box2" placeholder="m2"></td>
            </tr>
            
            <tr class="space">
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