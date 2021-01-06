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
	font-weight: bold;
	text-align: center;
}

.outer {
	width: 525px;
	height: 675px;
}

.inner {
	margin-top: 12.5px;
	margin-left: 25px;
	margin-right: 25px;
	width: 475px;
	height: 625px;

}
.tnumber {
	width: 500px;
	height: 25px;
	background: #EBEFF2;
	font-size: 12.5px;	
}

.closeBtn {
	width: 25px;
	height: 25px;
	background: #EBEFF2;
	font-size: 12.5px;
}

.xbutton {
	width: 25px;
	height: 25px;
	border: none;
	font-size: 20px;
	cursor: pointer;
}

.xbutton:hover {
	background: #F2784B;
	color: white;
	outline: none;
}

.tstatus {
	width: 475px;
	height: 20px;
	background: #012E41;
	color: white;
	font-size: 12.5px;
	border-radius: 5px;
}

.picon {
	margin-top: 10px;
	width: 35px;
	height: 35px;
}

.pbar {
	width: 400px;
	height: 12.5px;
}

.tprocessText {
	height: 50px;
	font-size: 13px;
}

.tprocessBar {
	height: 25.5px;
}

.tprocessStatusTitle {
	height: 15px;
	font-size: 13px;
	text-align: left;
}

.val {
	width: 52.5px;
	height: 15px;
	background: #012E41;
	color: white;
	font-size: 9px;
}

.valResult {
	width: 475px;
	height: 30px;
	background: #F2F2F2;
	font-weight: normal;
	font-size: 9px;
}

.newsize {
	width: 475px;
	height: 10px;
}

.miniTitle1 {
	width: 230px;
	height: 15px;
	text-align: left;
	font-size: 13px;
}

.miniTitle2 {
	width: 230px;
	height: 15px;
	text-align: center;
	background: #012E41;
	color: white;
	font-size: 13px;
}

.tTag {
	width: 115px;
	height: 20px;
	background: #EBEFF2;
	font-size: 13px;
}

.tOut {
	width: 115px;
	height: 20px;
	background: #F2F2F2;
	font-size: 10px;
	font-weight: normal;
}

.tMemo {
	width: 475px;
	height: 15px;
	background: #012E41;
	color: white;
}

.tMemoArea {
	width: 475px;
	height: 45px;
	border: 2px solid #EBEFF2;
}
</style>
</head>
<body>
	<div class="outer">
		<table>
			<tr class="close">
				<th class="tnumber">의뢰 번호 :</th><th class="closeBtn"><button class="xbutton">X</button></th>
			</tr>
		</table>
		<div class="inner">
			<table>
				<tr>
					<td colspan="10" class="tstatus">의뢰 진행 상황</td>
				</tr>
			</table>
			<table align="center">
				<tr>
					<td rowspan="2"></td>
					<td><img
						src="../../resources/admin/images/process/process1.png"
						class="picon"></td>
					<td><img
						src="../../resources/admin/images/process/process2.png"
						class="picon"></td>
					<td><img
						src="../../resources/admin/images/process/process3.png"
						class="picon"></td>
					<td><img
						src="../../resources/admin/images/process/process4.png"
						class="picon"></td>
					<td><img
						src="../../resources/admin/images/process/process5.png"
						class="picon"></td>
					<td><img
						src="../../resources/admin/images/process/process6.png"
						class="picon"></td>
					<td><img
						src="../../resources/admin/images/process/process7.png"
						class="picon"></td>
					<td colspan="2" rowspan="2"></td>
				</tr>
				<tr class="tprocessText">
					<td>의뢰대기</td>
					<td>의뢰수락</td>
					<td>방문견적</td>
					<td>대금결제</td>
					<td>시공대기</td>
					<td>시공중</td>
					<td>시공완료</td>
				</tr>
				<tr>
					<td colspan="10" class="tprocessBar"><img
						src="../../resources/admin/images/process/processbar1.png"
						class="pbar"></td>
				</tr>
			</table>
			<table class="round">
				<tr>
					<td colspan="10" class="tprocessStatusTitle">&nbsp;&nbsp;의뢰현황</td>
				</tr>
				<tr>
					<td class="val">의뢰번호</td>
					<td class="val">의뢰상태</td>
					<td class="val">의뢰업종</td>
					<td class="val">시공시작일</td>
					<td class="val">시공종료일</td>
					<td class="val">중개수수료</td>
					<td class="val">결제수수료</td>
					<td class="val">견적가</td>
					<td class="val">계약서</td>
					<td class="val">기타</td>
				</tr>
				<tr class="valResult">
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>N</td>
					<td></td>
				</tr>
			</table>
			<table>
				<tr>
					<td colspan="10" class="newsize"></td>
				</tr>
				<tr>
					<td colspan="5" class="miniTitle1">&nbsp;&nbsp;고객 정보</td>
					<td colspan="5" class="miniTitle1">&nbsp;&nbsp;사업자 정보</td>
				</tr>
				<tr>
					<td colspan="5" class="miniTitle2">고객 정보</td>
					<td colspan="5" class="miniTitle2">사업자 정보</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">아아디</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">사업자 번호</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">이름</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">상호명</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">연락처</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">의뢰업종</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td colspan="2" class="tTag">대표자명</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td colspan="2" class="tTag">대표연락처</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td colspan="2" class="tTag">사업장 주소</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td colspan="2" class="tTag">대표 거래 은행</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td colspan="2" class="tTag">대표 계좌</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="10" class="newsize"></td>
				</tr>
				<tr>
					<td colspan="5" class="miniTitle1">&nbsp;&nbsp;의뢰 상세정보</td>
					<td colspan="5" class="miniTitle1">&nbsp;&nbsp;의뢰 상세정보</td>
				</tr>
				<tr>
					<td colspan="5" class="miniTitle2">의뢰사항</td>
					<td colspan="5" class="miniTitle2">의뢰사항</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">i</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">시공희망일</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">i</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">예상견적가</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">i</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">의뢰주소</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">i</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">이름</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">i</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">연락처</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">i</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">공간사진</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">i</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">공간상황</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">i</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">엘레베이터</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">i</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">요청사항</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="10" class="newsize"></td>
				</tr>
				<tr>
					<td colspan="10" class="tMemo">메모</td>
				</tr>
				<tr>
					<td colspan="10" class="tMemoArea"></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>