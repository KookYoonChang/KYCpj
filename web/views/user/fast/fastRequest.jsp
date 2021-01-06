<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="jqueryui/style.css">
<title>Insert title here</title>

<style>
body {
	font-family: "NanumGothic";
}
.outer {
	width: 500px;
	height: 700px;
	background: #EBEFF2;
}

.topBar {
	width: 500px;
	height: 30px;
	background: #012E41;
}

.inner {
	margin-top: 10px;
	margin-left: 8px;
	width: 480px;
	height: 650px;
	background: white;
	border: 2px solid #C4C4C4;
	border-radius: 5px;
}

.title1 {
	width: 100px;
	height: 30px;
	font-size: 12px;
	font-weight: bolder;
}

.title2 {
	height: 30px;
	font-size: 16px;
	font-weight: bolder;
}

input[type=radio] { 
	display:none;  
	margin:10px; 
}

input[type=radio] + label { 
	display:inline-block; 
	margin: 4px; 
	padding: 8px 19px; 
	border: 2px solid #C4C4C4;
	border-radius: 5px;
	font-size: 12px !important; 
	width: 65px; 
	text-align: center; 
	cursor: pointer;
} 

input[type=radio]:checked + label {  
   	background-image: none; 
	background-color:#F2A71A; 
	color: white; 
} 

.inbox1 {
	width: 210px;
	height: 30px;
	background: #EBEFF2;
	border: 2px solid #C4C4C4;
	border-radius: 5px;
}

.inbox2 {
	width: 210px;
	height: 90px;
	background: #EBEFF2;
	border: 2px solid #C4C4C4;
	border-radius: 5px;
}

.title3 {
	width: 475px;
	height: 50px;
	border: none;
	background: #F2774B;
	color: white;
	cursor: pointer;
	outline: none;
	font-size: 16px;
	font-weight: bolder;
}

.title3:hover {
	background: #012E41;	
}

.title4 {
	width: 280px;
	font-size: 12px;
	font-weight: bolder;
}

.title5 {
	width: 220px;
	height: 30px;
	border: 2px solid #C4C4C4;
	border-radius: 5px;
	
}

#sido1 {
	margin-left: 5px;
	margin-right: 18px;
	width: 220px;
	height: 30px;
	border: 2px solid #C4C4C4;
	border-radius: 5px;
}

#gugun1 {
	width: 220px;
	height: 30px;
	border: 2px solid #C4C4C4;
	border-radius: 5px;
}

#reservation { 
	width: 380px; 
	margin:0 auto; 
}

</style>
</head>
<body>
	<div class="outer">
		<div class="topBar" style="text-align: center;">
			<label style="font-size:16px; font-weight: bolder; color: white;">빠른 의뢰 문의</label>
		</div>
		<div class="inner">
			<table>
				<tr>
					<td class="title1" colspan="4">
						상담을 원하시는 업종을 선택해주세요
					</td>
				</tr>
				<tr>
					<td class="title2" colspan="2" align="center">
						업종*
					</td>
					<td colspan="2">
						<select id="category" class="title5" name=cno>
							<option value=""selected disabled hidden>업종을 선택하세요</option>
							<option value="C001">도배</option>
							<option value="C002">장판</option>
							<option value="C003">타일</option>
							<option value="C004">마루</option>
							<option value="C005">도어</option>
							<option value="C006">창호</option>
							<option value="C007">조명</option>
							<option value="C008">욕실</option>
							<option value="C009">주방</option>
							<option value="C010">페인트</option>
							<option value="C011">블라인드</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="title1" colspan="4">
						공사하는 공간의 평형을 선택해주세요
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<form id="reservation">
						  <select name="minbeds" id="minbeds">
						  	<option value="" selected disabled hidden>면적을 선택하세요</option>
						    <option value="10평대">10평대</option>
						    <option value="20평대">20평대</option>
						    <option value="30평대">30평대</option>
						    <option value="40평대">40평대</option>
						    <option value="50평대">50평대</option>
						    <option value="60평이상">60평이상</option>
						  </select>
						</form>
					</td>
				</tr>
				<tr>
					<td class="title1" colspan="4">
						시공할 지역을 선택해주세요*
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<select name="sido1" id="sido1"></select>
   						<select name="gugun1" id="gugun1"></select>
					</td>
				</tr>
				<tr>
					<td class="title1" colspan="4">
						공사 시작 예정일을 선택해주세요
					</td>
				</tr>
				<tr>
					<td>
						<input type="radio" id="radio1" name="radios" value="2주 이내"><label for="radio1">2주 이내</label>
					</td>
					<td>
						<input type="radio" id="radio2" name="radios" value="1개월 이내"><label for="radio2">1개월 이내</label>
					</td>					
					<td>
						<input type="radio" id="radio3" name="radios" value="3개월 이내"><label for="radio3">3개월 이내</label>
					</td>
					<td>
						<input type="radio" id="radio4" name="radios" value="3개월 이후"><label for="radio4">3개월 이후</label>
					</td>
				</tr>
				<tr>
					<td class="title2" colspan="2">
						성함을 입력해주세요*
					</td>
					<td colspan="2">
						<input type="text" class="inbox1" name="fastName">
					</td>
				</tr>
				<tr>
					<td class="title2" colspan="2">
						연락처를 입력해주세요*
					</td>
					<td colspan="2">
						<input type="text" class="inbox1" name="fastPhone">
					</td>
				</tr>
				<tr>
					<td class="title2" colspan="2">
						기타사항을 입력해주세요
					</td>
					<td colspan="2">
						<textarea class="inbox2" style="resize: none;"></textarea>
					</td>
				</tr>
			</table>
			<table style="margin-left: 200px;">
				<tr>
					<td class="title4" style="font-size:16px;">
						<input type="checkbox" name="chk" id="checkall">전체동의
					</td>
				</tr>
				<tr>
					<td class="title4">
						&nbsp;&nbsp;&nbsp;<input type="checkbox" name="chk">(필수) 개인정보 수집 및 이용에 동의
					</td>
				</tr>
				<tr>
					<td class="title4">
						&nbsp;&nbsp;&nbsp;<input type="checkbox" name="chk">(필수) 개인정보 제 3자 제공에 동의
					</td>
				</tr>
				<tr>
					<td class="title4">
						&nbsp;&nbsp;&nbsp;<input type="checkbox" name="chk">(선택) 인테리어 정보 및 마케팅 수신에 동의
					</td>
				</tr>
			</table>
			<table>
				<tr>
					<td>
						<button class="title3" onclick="submitBtn();">상담 신청하기</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
<script>
   $('document').ready(function() {
       var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
        var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
         var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
         var area3 = ["대덕구","동구","서구","유성구","중구"];
         var area4 = ["광산구","남구","동구",     "북구","서구"];
         var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
         var area6 = ["남구","동구","북구","중구","울주군"];
         var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
         var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
         var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
         var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
         var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
         var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
         var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
         var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
         var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
         var area16 = ["서귀포시","제주시","남제주군","북제주군"];

       

       // 시/도 선택 박스 초기화

		$("select[name^=sido]").each(function() {
        	$selsido = $(this);
       			$.each(eval(area0), function() {
     					$selsido.append("<option value='"+this+"'>"+this+"</option>");
       			 });
      		$selsido.next().append("<option value=''>구/군 선택</option>");
       });

       

       // 시/도 선택시 구/군 설정

       $("select[name^=sido]").change(function() {
        var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
        var $gugun = $(this).next(); // 선택영역 군구 객체
        $("option",$gugun).remove(); // 구군 초기화

        if(area == "area0") {
         $gugun.append("<option value=''>구/군 선택</option>");
   
        } else {
         $.each(eval(area), function() {
          $gugun.append("<option value='"+this+"'>"+this+"</option>");
          
  		
         });
        }
       });
      });
   </script>
  <script>
  	$(function() {
		    var select = $( "#minbeds" );
	 	   var slider = $( "<div id='slider'></div>" ).insertAfter( select ).slider({
	 	     min: 1,
	  	    max: 7,
	  	    range: "min",
	   	   value: select[ 0 ].selectedIndex + 1,
	   	   slide: function( event, ui ) {
	   	     select[ 0 ].selectedIndex = ui.value - 1;
	  	    }
	 	   });
	 	   $( "#minbeds" ).change(function() {
	 	     slider.slider( "value", this.selectedIndex + 1 );
	    });
	  });
  </script>
 	<script>
	$(document).ready(function() {

	    $("#checkall").click(function() {

	    	if($("#checkall").prop("checked")) {
	    		$("input[name=chk]").prop("checked",true);
	        
	    	} else {
	    		$("input[name=chk]").prop("checked",false);
	        }
	    });
	});
	</script>
	<script>
	function submitBtn() {
		if($("#category option:selected").val() != "" &&
		   $("#sido1").val() != "시/도 선택" &&
		   $("input[name=fastName]").val() != "" &&
		   $("input[name=fastPhone]").val() != "") {

			if($("input:checkbox[name=chk]").is(":checked") == true) {
				
				var cno = $("#category option:selected").val();
				var fastArea = $("#minbeds option:selected").val();
				var fastAdd = $("#sido1").val().concat("$", $("#gugun1").val());
				var fastHopeDate = $("input[name=radios]:checked").val();
				var fastName = $("input[name=fastName]").val();
				var fastPhone = $("input[name=fastPhone]").val();
				var fastNote= $("textarea").val();
				
				$.ajax({
					url: "${ applicationScope.contextPath }/UserReqFast.user",
					data: { cno : cno
						  , fastArea : fastArea
						  , fastAdd : fastAdd
						  , fastHopeDate : fastHopeDate
						  , fastName : fastName
						  , fastPhone : fastPhone
						  , fastNote : fastNote },
					type: "post"
				});
				
				alert("상담 신청이 완료되었습니다.")
				
				window.opener.location.reload();
				window.close();
			
				} else {
					alert("필수 체크 항목에 동의해야 합니다.")}
			} else {
				alert("필수 항목을 입력해야 합니다.")}
		}
	</script>
</body>
</html>