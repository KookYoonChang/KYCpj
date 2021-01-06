<jsp:directive.page language="java"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<style>
body {
   font-family: "NanumGothic";
   font-weight: bolder;
   font-size: 14px;
}
.dateForm{
	width:145px;
	height:13px;
}
#calendar{
	width:90px;
	height:90px;
	margin-left:-120px;
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
}

.btn1 {
   font-size: 1px;
   width: 83px;
   height: 40px;
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
   width: 350px;
   height: 30px;
   margin-left: 7px;
   background: #F2F2F2;
   outline: none;
   border: none;
   cursor: pointer;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
   background: white;
   color:lightgray;
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
   font-size: 1px;
   margin-left: 15px;
   width: 92px;
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
.btnex{
   font-size: 12px;
   margin-left: 8px;
   width: 345px;
   height: 30px;
   background: white;
   outline: none;
   border: none;
   cursor: pointer;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
   color:lightgray;
}
#sample6_postcode{
 font-size: 12px;
   margin-left: 8px;
   width: 245px;
   height: 30px;
   background: white;
   outline: none;
   border: none;
   cursor: pointer;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
   color:gray;
}
#btn3{
   font-size: 1px;
   margin-left: 15px;
   width: 84px;
   height: 30px;
   background: white;
   outline: none;
   border: none;
   cursor: pointer;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
}

#sample6_address{
	font-size: 12px;
   width: 350px;
   height: 30px;
   margin-left: 7px;
   background: #F2F2F2;
   outline: none;
   border: none;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
   background: white;
   color:gray;
}
#sample6_extraAddress{
	font-size: 12px;
   width: 100px;
   height: 30px;
   margin-left: 7px;
   background: #F2F2F2;
   outline: none;
   border: none;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
   background: white;
   color:gray;
}
#sample6_detailAddress{
   font-size: 12px;
   width: 230px;
   height: 30px;
   margin-left: 7px;
   background: #F2F2F2;
   outline: none;
   border: none;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
   background: white;
   color:gray;
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
.fontGroup11{
	color:lightgray;
	font-size:6px;
}
#span{
   width: 350px;
   height: 80px;
   background-color:#ECECEC;
   border:1px solid #ECECEC;
   margin:0 auto;
}
.plusText{
	width:350px;
	height:80px;
	border:1px solid lightgray;
	margin:0 auto;
}
#btn2{
	 font-size: 12px;
   width: 350px;
   height: 30px;
   margin-left: 7px;
   background: #F2F2F2;
   outline: none;
   border: none;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
   background: white;
   color:gray;
}
input[type=radio]{
   display:none; margin:10px;
   
}
input[type=radio]+label{
   margin-top:5px;
   font-size: 10px;
   margin-left: 14px;
   background: white;
   outline: none;
   border: none;
   cursor: pointer;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
}
.emp{
   margin-top:5px;
   padding:10px 1px;
   font-size: 10px;
   margin-left: 10px;
   background: white;
   outline: none;
   border: none;
   cursor: pointer;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
}
.el{
   margin-top:5px;
   padding:10px 1px;
   font-size: 10px;
   margin-left: 10px;
   background: white;
   outline: none;
   border: none;
   cursor: pointer;
   border: 1px solid #C4C4C4;
   border-radius: 5px;
}
	
}
input[type=radio]+label:hover {
   background: #F2A71A;
   color: white;
}

input[type=radio]:checked + label {
   background: #F2A71A;
   color: white;
}
input[type=radio].active-color{
   color:#F2A71A;
}
 input[type=radio]:radio+label{
   background-image:none;
   background: #F2A71A;
   color:white;
} 
#startDate, #endDate{
	width:120px;
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
         <jsp:include page="reqMenu1.jsp" />
      </div>
      <div class="inner">
         <table>
            <tr>
               <th class="reqTitle2">의뢰 신청</th>
            </tr>
            <tr class="space">
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;&nbsp;&nbsp;시공 시작 희망일과 종료일을 선택해주세요.<br>
               </td> 
            </tr>
            <tr class="space">
            </tr>
            <tr>
              <td>
	                           시작일 : <input type='date' id="startDate" name="startDate">
				종료일 : <input type='date' id="endDate" name="endDate"> 
			  </td>
            </tr>
            <tr class="space">
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;생각하시는 예산을 알려주세요.</td>
            </tr>
            <tr>
               <td>
  					<font size = 2 id = "slider_value_view" >0</font>						  
  					<input style = "width:80%;" class="slider_range" type="range" name="price"value="0" min="10000000" max="500000000" step="500000"></input>						  
               </td>
            <tr class="space">
            </tr>
          
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;시공하려는 지역을 선택해주세요.</td>
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td>
                  <input type="text" id="sample6_postcode" placeholder="우편번호" name="addNum" readonly>
				  <input type="button" id="btn3"onclick="sample6_execDaumPostcode()"value="우편번호 찾기"><br>
				  <input type="text" id="sample6_address" placeholder="주소" name="add" readonly><br>
				  <input type="text" id="sample6_detailAddress" name="addFull" placeholder="상세주소를 입력해주세요 예)102동 401호">
				  <input type="text" id="sample6_extraAddress" name="addExtra"placeholder="참고항목" readonly>
               </td>
            </tr>
            <tr class="space">
            </tr>
             <tr>
               <td class="fontGroup1">&nbsp;&nbsp;이름을 입력해주세요.</td>
            </tr>
    		<tr>
               <td>
                  <input type="text" id="btn2" name="name">
               </td>
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;휴대폰 번호를 입력해주세요.</td>
            </tr>
            <tr>
               <td>
                  <input type="text" class="btnex" name="phone">
                 
               </td>
            </tr>
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;시공하실 공간의 사진을 등록해주세요.</td>
            </tr>
            <tr>
               <td class="fontGroup11">&nbsp;&nbsp;(현재 0/20개, 총 0/20Mb)</td>
            </tr>
    		<tr>
               <td>
					<div id="span"></div>
               </td>
            </tr>
            <tr class="space">
            </tr>
              <tr>
            <td class="fontGroup1">&nbsp;&nbsp;공간의 상황을 선택해주세요.</td>
            </tr>
            <tr class="space">
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td>
                  <input class="emp" id="emp1" type="radio" name="rstatus" value="현재공실"> <label class="emp"for="emp1">현재공실</label>
                  <input class="emp" id="emp2" type="radio"name="rstatus" value="시공 시 공실예정"><label  class="emp" for="emp2">시공 시공실예정</label>
                  <input class="emp" id="emp3"  type="radio" name="rstatus" value="거주 중(부분시공예정)"> <label class="emp" for="emp3">거주 중(부분시공예정)</label>
                  <input class="emp" id="emp4" type="radio"name="rstatus" value="거주 중(보관이사예정)"><label class="emp" for="emp4">거주 중(보관이사예정)</label>
               </td>
            </tr>
            <tr class="space">
            </tr>
             <tr>
               <td class="fontGroup1">&nbsp;&nbsp;시공 공간에 엘레베이터 여부를 선택해주세요.</td>
            </tr>
            <tr class="space">
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td>
           		  <input class="el" id="el1" type="radio" name="elstatus" value="Y"> <label class="el"for="el1">네, 있습니다.</label>
                  <input class="el" id="el2" type="radio"name="elstatus" value="N"><label  class="el" for="e2">아니요, 없습니다.</label>
               </td>
            </tr>
            <tr class="space">
            </tr>
            <tr class="space">
            </tr>
            <tr class="space">
            </tr>
            <tr>
               <td class="fontGroup1">&nbsp;&nbsp;요청사항이 있다면 입력해주세요.</td>
            </tr>
            <tr class="space">
            </tr>
    		<tr>
    			<td>
					<textarea cols="70" rows="5" class="plusText" name="note" placeholder="예)기존 싱크대 철거할 때 곰팡이 제거를 같이하고싶어요."></textarea>
    			</td>
    		</tr>
    		<tr class="space">
            </tr>
            <tr>
				<td>
					<input name="check" id="check" type="checkbox"  value="all">
					<label for="check">전체동의</label>
				</td>
            </tr>
            <tr>
            	<td>
            		<hr>
            	</td>
            </tr>
            <tr class="space">
            </tr>
              <tr>
				<td>
					<input name="check" id="check" type="checkbox"  value="information1">
					<label for="check">(필수)개인정보 수집 및 이용에 동의</label>
				</td>
            </tr>  
            <tr>
				<td>
					<input name="check" id="check" type="checkbox"  value="information2">
					<label for="check">(필수) 개인정보 제3자 제공에 동의</label>
				</td>
            </tr>
         </table> 
         <table id="listArea">
            	<tr>
            		<input type="hidden" name="list" value="<c:out value="${sessionScope.list}"/>">
            	</tr>
         </table>
         <table>   
            <tr>
               <td>
                  <button class="nextBtn" onclick="location.href=${applicationScope.contextPath}/insertSecond.is">다음</button>
               </td>
            </tr>
         </table>
      </div>s
   </div>
   <script>

		function ShowSliderValue(sVal)
		{
			var obValueView = document.getElementById("slider_value_view");
			obValueView.innerHTML = sVal +"원";
		}
		
		var RangeSlider = function(){
			var range = $('.slider_range');
		    
			range.on('input', function(){		
				ShowSliderValue(this.value);
			});
		};
		
		RangeSlider();


	</script>
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>


</body>
</html>