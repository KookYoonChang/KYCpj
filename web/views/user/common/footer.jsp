<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  	.footer {
	 	background:lightgray;
        width:1200px;
        float:left;
        height:300px;
        display:inline-block;
	}
	.info {
	padding:0 auto;
	float:left;
	list-style: none;
	}
	#infonav{
		font-size:20px;
		border-bottom:1px solid black;
		float:left;
		margin: 10px;
	}
	.infoNav, #callNum, #infonav1, .info2 {
		display:inline-block;
		margin: 5px;
		padding-bottom:0 auto;
		padding-top:0 auto;
	}
	#callNum{
		font-size: 30px;
	}
	span{
    	padding-right: 7px;
    	margin-right: 5px;
    	border-right: 1px solid black;
    	letter-spacing: -0.2px;
    	font-size:14px;
	}

</style>
</head>
<body>
	<div class="wrap">
	<div class="footer">
		<ul class="info">
			<li id="infonav"><a>회사소개</a></li>
			<li id="infonav"><a>개인정보처리방침</a></li>
    		<li id="infonav"><a>이용약관</a></li>
    	</ul>
    	<div class="infoNav">
			<div class="infoNav1">
				<p id="callNum">1222-1222</p>
					<p id="infonav1">
						<span>월 - 토 공휴일 09:00 - 18:00</span>
						<span>금요일 09:00 -17:00</span> 
						<span>일요일 휴무</span> 
						<span>팩스 : 02-1222-1125</span> 
						<span><a>이메일:programmer@kh.co.kr</a></span>
					</p>
				<p>
					<span>내가사는그집 대표이사 : 김진호</span> 
					<span>주소 : 서울특별시 강남구 테헤란로14길 6 남도빌딩</span> 
					<span>사업자등록번호 : 799-1100-0000</span> 
					<span>통신판매번호: 2020-서울강남 401호 <a>사업자정보확인</a></span>
					</p>
				</div>
				<div class="info2">
    		<p>내가사는그집은 통신판매중개자로서 건축 공사의 주 거래 당사자가 아니며, 파트너스가 제공한 견적 및 공사 시공 서비스에 대해 일체 책임을 지지 않습니다.</p>
  			<p>copyright © 내가사는그집</p>
    	</div>
    	</div>
    </div>
    </div>
</body>
</html>