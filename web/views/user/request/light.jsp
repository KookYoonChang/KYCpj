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
.plus{
	font-size:7px;
	color:lightgray;
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
         <jsp:include page="reqMenu.jsp" />
      </div>
      <div class="inner">
         <table>
            <tr>
               <th class="reqTitle2">의뢰 신청</th>
            </tr>
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;&nbsp;&nbsp;업종<input
                  type="text" value="조명" name="light" class="box1" readonly></td>
            </tr>
            <tr class="space">
            </tr>
     
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;각 공간별 필요한 조명 개수를 선택해주세요.</td>
            </tr>
            <tr>
               <td class="plus">&nbsp;&nbsp;(시공할 공간이 2개 이하일 경우, 출장비가 별도로 발생할 수 있습니다.)</td>
            </tr>
         
            <tr>
               <td><select class="select1">
                     <option value="">거실조명 1개</option>
                     <option value="">거실조명 2개</option>
                     <option value="">거실조명 3개</option>
                     <option value="">거실조명 4개</option>
                     <option value="">거실조명 5개</option>
                     <option value="">거실조명 6개</option>
                     <option value="">거실조명 7개</option>
                     <option value="">거실조명 8개</option>
                     <option value="">거실조명 9개</option>
                     <option value="">거실조명 10개</option>
               </select></td>
            </tr>
            <tr class="space">
            </tr>
                   <tr>
               <td><select class="select1">
                     <option value="">주방조명 1개</option>
                     <option value="">주방조명 2개</option>
                     <option value="">주방조명 3개</option>
                     <option value="">주방조명 4개</option>
                     <option value="">주방조명 5개</option>
                     <option value="">주방조명 6개</option>
                     <option value="">주방조명 7개</option>
                     <option value="">주방조명 8개</option>
                     <option value="">주방조명 9개</option>
                     <option value="">주방조명 10개</option>
               </select></td>
            </tr>
            <tr class="space">
            </tr>
       		       <tr>
               <td><select class="select1">
                     <option value="">식탁조명 1개</option>
                     <option value="">식탁조명 2개</option>
                     <option value="">식탁조명 3개</option>
                     <option value="">식탁조명 4개</option>
                     <option value="">식탁조명 5개</option>
                     <option value="">식탁조명 6개</option>
                     <option value="">식탁조명 7개</option>
                     <option value="">식탁조명 8개</option>
                     <option value="">식탁조명 9개</option>
                     <option value="">식탁조명 10개</option>
               </select></td>
            </tr>
            <tr class="space">
            </tr>
       		       <tr>
               <td><select class="select1">
                     <option value="">방 조명 1개</option>
                     <option value="">방 조명 2개</option>
                     <option value="">방 조명 3개</option>
                     <option value="">방 조명 4개</option>
                     <option value="">방 조명 5개</option>
                     <option value="">방 조명 6개</option>
                     <option value="">방 조명 7개</option>
                     <option value="">방 조명 8개</option>
                     <option value="">방 조명 9개</option>
                     <option value="">방 조명 10개</option>
               </select></td>
            </tr>
            <tr class="space">
            </tr>
       		       <tr>
               <td><select class="select1">
                     <option value="">베란다 조명 1개</option>
                     <option value="">베란다 조명  2개</option>
                     <option value="">베란다 조명  3개</option>
                     <option value="">베란다 조명  4개</option>
                     <option value="">베란다 조명  5개</option>
                     <option value="">베란다 조명 6개</option>
                     <option value="">베란다 조명 7개</option>
                     <option value="">베란다 조명 8개</option>
                     <option value="">베란다 조명 9개</option>
                     <option value="">베란다 조명 10개</option>
               </select></td>
            </tr>
            <tr class="space">
            </tr>
              <tr>
               <td><select class="select1">
                     <option value="">현관조명 1개</option>
                     <option value="">현관조명 2개</option>
                     <option value="">현관조명 3개</option>
                     <option value="">현관조명 4개</option>
                     <option value="">현관조명 5개</option>
                     <option value="">현관조명 6개</option>
                     <option value="">현관조명 7개</option>
                     <option value="">현관조명 8개</option>
                     <option value="">현관조명 9개</option>
                     <option value="">현관조명 10개</option>
               </select></td>
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