<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: "NanumGothic";
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
	width: 550px;
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

.tstatus {
	width: 475px;
	height: 20px;
	background: #012E41;
	color: white;
	font-size: 12.5px;
	border-radius: 5px;
	font-weight: bolder;
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
	width: 100px;
	height: 50px;
	font-size: 13px;
	font-weight: bolder;
}

.tprocessBar {
	height: 25.5px;
}

.tprocessStatusTitle {
	height: 15px;
	font-size: 14px;
	text-align: left;
	font-weight: bolder;
}

.val {
	width: 100px;
	height: 15px;
	background: #012E41;
	color: white;
	font-size: 11px;
	font-weight: bolder;

}

.valResult {
	width: 475px;
	height: 30px;
	background: #F2F2F2;
	font-size: 10px;
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
	font-weight: bolder;
}

.miniTitle2 {
	width: 230px;
	height: 15px;
	text-align: center;
	background: #012E41;
	color: white;
	font-size: 13px;
	font-weight: bolder;
}

.tTag {
	width: 115px;
	height: 20px;
	background: #EBEFF2;
	font-size: 11px;
	font-weight: bolder;
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
	font-weight: bolder;	
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
				<th class="tnumber">의뢰 번호 :</th>
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
					<td><img
						src="<%=request.getContextPath()%>/resources/admin/images/process/process1.png"
						class="picon"></td>
					<td><img
						src="<%=request.getContextPath()%>/resources/admin/images/process/process2.png"
						class="picon"></td>
					<td><img
						src="<%=request.getContextPath()%>/resources/admin/images/process/process3.png"
						class="picon"></td>
					<td><img
						src="<%=request.getContextPath()%>/resources/admin/images/process/process4.png"
						class="picon"></td>
					<td><img
						src="<%=request.getContextPath()%>/resources/admin/images/process/process5.png"
						class="picon"></td>
					<td><img
						src="<%=request.getContextPath()%>/resources/admin/images/process/process6.png"
						class="picon"></td>
					<td><img
						src="<%=request.getContextPath()%>/resources/admin/images/process/process7.png"
						class="picon"></td>
					<td></td>
				</tr>
				<tr>
					<td class="tprocessText">의뢰대기</td>
					<td class="tprocessText">의뢰수락</td>
					<td class="tprocessText">방문견적</td>
					<td class="tprocessText">대금결제</td>
					<td class="tprocessText">시공대기</td>
					<td class="tprocessText">시공중</td>
					<td class="tprocessText">시공완료</td>
				</tr>
				<tr>
					<td colspan="7" class="tprocessBar">
					<img src="<%=request.getContextPath()%>/resources/admin/images/process/processbar1.png"
						class="pbar"></td>
				</tr>
			</table>
			<table class="round">
				<tr>
					<td colspan="10" class="tprocessStatusTitle">&nbsp;&nbsp;의뢰현황</td>
				</tr>
				<tr>
					<td class="val">의뢰상태</td>
					<td class="val">의뢰업종</td>
					<td class="val">시공시작일</td>
					<td class="val">시공종료일</td>
					<td class="val">계약서</td>
				</tr>
				<tr class="valResult">
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>N</td>
				</tr>
			</table>
			<table>
				<tr>
					<td colspan="10" class="newsize"></td>
				</tr>
				<tr>
					<td colspan="5" class="miniTitle1">&nbsp;&nbsp;고객 & 결제 </td>
					<td colspan="5" class="miniTitle1">&nbsp;&nbsp;사업자</td>
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
					<td colspan="5" class="miniTitle2">결제 정보</td>
					<td colspan="2" class="tTag">대표자명</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">견적가</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">대표연락처</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">중개수수료</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">사업장 주소</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">결제방식</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">대표 거래 은행</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">결제일</td>
					<td colspan="3" class="tOut">0</td>
					<td colspan="2" class="tTag">대표 계좌</td>
					<td colspan="3" class="tOut">0</td>
				</tr>
				<tr>
					<td colspan="10" class="newsize"></td>
				</tr>
				<tr>
					<td colspan="5" class="miniTitle1">&nbsp;&nbsp;의뢰 옵션</td>
					<td colspan="5" class="miniTitle1">&nbsp;&nbsp;의뢰 정보</td>
				</tr>
				<tr>
					<td colspan="5" class="miniTitle2">선택옵션</td>
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