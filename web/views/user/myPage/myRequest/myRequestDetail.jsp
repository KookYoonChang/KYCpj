<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.kh.thil.user.login.model.vo.Login"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }"
	scope="application" />
<% Login loginUser = (Login) session.getAttribute("loginUser");%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>내가 사는 그 집</title>
<style>
body {
	font-family: "NanumGothic";
	text-align: center;
}

.outer {
	width: 525px;
	height: 915px;
}

.inner {
	margin-top: 12.5px;
	margin-left: 25px;
	margin-right: 25px;
	width: 475px;
	height: 850px;
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
	font-size: 11px;
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
	font-size: 11px;
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

.tableConnect {
	width: 475px;
	height: 255px;
}

.table1 {
	float: left;
	width: 237px;
	height: 255px;
}

.table2 {
	float: left;
	width: 237px;
	height: 255px;
}

.upPhoto {
	width: 35px;
	font-size: 9px;
	border: none;
	background: #F2A71A;
	color: white;
	cursor: pointer;
	outline: none;
}

.upContract {
	font-size: 12px;
	border: none;
	background: #F2A71A;
	color: white;
	cursor: pointer;
	outline: none;
}

.standBy {
	font-size: 11px;
	color: lightgrey;
}

.adminBtnArea{
	width: 475px;
}
.adminBtn1 {
	width: 100px;
	height: 30px;
	font-size: 12px;
	font-weight: bolder;
	background: #F2A71A;
	border: 2px solid #012E41;
	border-radius: 5px;
	cursor: pointer;
	outline: none;
}

.adminBtn1:hover {
	background: #012E41;
	color: white;
}

.adminBtn2 {
	width: 100px;
	height: 30px;
	font-size: 12px;
	font-weight: bolder;
	border: 2px solid #012E41;
	border-radius: 5px;
	cursor: pointer;
	outline: none;
}

.adminBtn2:hover {
	background: #012E41;
	color: white;
}

.adminBtn3 {
	width: 100px;
	height: 30px;
	font-size: 12px;
	font-weight: bolder;
	background: #F2774B;
	border: 2px solid #012E41;
	border-radius: 5px;
	cursor: pointer;
	outline: none;
}

.adminBtn3:hover {
	background: #C23D0E;
	color: white;
	border: 2px solid #C23D0E;
}

.adminBtn4 {
	width: 100px;
	height: 30px;
	font-size: 12px;
	font-weight: bolder;
	background: #F2774B;
	border: 2px solid #012E41;
	border-radius: 5px;
	cursor: pointer;
	outline: none;
}

.adminBtn4:hover {
	background: #C23D0E;
	color: white;
	border: 2px solid #C23D0E;
}
</style>
</head>
<body>
	<div class="outer">
		<table>
			<tr class="close">
				<th class="tnumber">의뢰 번호 :&nbsp;<%=request.getParameter("num")%></th>
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
					<c:if test="${ requestScope.urd.proName == '의뢰대기' }">
						<img src="<%=request.getContextPath()%>/resources/admin/images/process/processbar1.png" class="pbar">
					</c:if>
					<c:if test="${ requestScope.urd.proName == '의뢰수락' }">
						<img src="<%=request.getContextPath()%>/resources/admin/images/process/processbar2.png" class="pbar">					
					</c:if>
					<c:if test="${ requestScope.urd.proName == '방문견적' }">
						<img src="<%=request.getContextPath()%>/resources/admin/images/process/processbar3.png" class="pbar">					
					</c:if>
					<c:if test="${ requestScope.urd.proName == '대금결제' }">
						<img src="<%=request.getContextPath()%>/resources/admin/images/process/processbar4.png" class="pbar">					
					</c:if>
					<c:if test="${ requestScope.urd.proName == '시공대기' }">
						<img src="<%=request.getContextPath()%>/resources/admin/images/process/processbar5.png" class="pbar">					
					</c:if>
					<c:if test="${ requestScope.urd.proName == '시공중' }">
						<img src="<%=request.getContextPath()%>/resources/admin/images/process/processbar6.png" class="pbar">					
					</c:if>
					<c:if test="${ requestScope.urd.proName == '시공완료' }">
						<img src="<%=request.getContextPath()%>/resources/admin/images/process/processbar7.png" class="pbar">					
					</c:if>
					<c:if test="${ requestScope.urd.proName == '거래완료' }">
						<img src="<%=request.getContextPath()%>/resources/admin/images/process/processbar7.png" class="pbar">					
					</c:if>					
					</td>
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
					<td><c:out value="${ requestScope.urd.proName }"/></td>
					<td><c:out value="${ requestScope.urd.catName }"/></td>
					<td>
						<c:if test="${ requestScope.urd.reqBuildStart == null }">
							<label class="standBy">방문견적시 결정</label>
						</c:if>
						<c:if test="${ requestScope.urd.reqBuildStart != null }">
							<c:out value="${ requestScope.urd.reqBuildStart }"/>
						</c:if>					
					</td>
					<td>
						<c:if test="${ requestScope.urd.reqBuildEnd == null }">
							<label class="standBy">방문견적시 결정</label>
						</c:if>
						<c:if test="${ requestScope.urd.reqBuildEnd != null }">
							<c:out value="${ requestScope.urd.reqBuildEnd }"/>
						</c:if>					
					</td>		
						<td>
							<c:choose>
								<c:when test="${ requestScope.fileList[0].fileLevel eq 4 }"><button class="upContract" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/contract/<c:out value="${ requestScope.fileList[0].fileChangeName }"/>','계약서','width=auto, height=auto');">계약서보기</button>
							</c:when>
								<c:when test="${ requestScope.fileList[1].fileLevel eq 4 }"><button class="upContract" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/contract/<c:out value="${ requestScope.fileList[1].fileChangeName }"/>','계약서','width=auto, height=auto');">계약서보기</button>
							</c:when>
								<c:when test="${ requestScope.fileList[2].fileLevel eq 4 }"><button class="upContract" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/contract/<c:out value="${ requestScope.fileList[2].fileChangeName }"/>','계약서','width=auto, height=auto');">계약서보기</button>
							</c:when>
								<c:when test="${ requestScope.fileList[3].fileLevel eq 4 }"><button class="upContract" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/contract/<c:out value="${ requestScope.fileList[3].fileChangeName }"/>','계약서','width=auto, height=auto');">계약서보기</button>
							</c:when>
								<c:otherwise>
									<label class="standBy">방문견적시 결정</label>
								</c:otherwise>
							</c:choose>
						</td>			
<%-- 						<td>								
							<c:if test="${ requestScope.fileList[0].fileLevel == 4 }">
								<button class="upContract" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/contract/<c:out value="${ requestScope.fileList[0].fileChangeName }"/>','계약서','width=auto, height=auto');">계약서보기</button>
							</c:if>
							<c:if test="${ requestScope.fileList[1].fileLevel == 4 }">
								<button class="upContract" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/contract/<c:out value="${ requestScope.fileList[1].fileChangeName }"/>','계약서','width=auto, height=auto');">계약서보기</button>
							</c:if>
							<c:if test="${ requestScope.fileList[2].fileLevel == 4 }">
								<button class="upContract" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/contract/<c:out value="${ requestScope.fileList[2].fileChangeName }"/>','계약서','width=auto, height=auto');">계약서보기</button>
							</c:if>
							<c:if test="${ requestScope.fileList[3].fileLevel == 4 }">
								<button class="upContract" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/contract/<c:out value="${ requestScope.fileList[3].fileChangeName }"/>','계약서','width=auto, height=auto');">계약서보기</button>
							</c:if>				
						</td> --%>
					</tr>
			</table>
			<table>
				<tr>
					<td colspan="10" class="newsize"></td>
				</tr>
				<tr>
					<td colspan="5" class="miniTitle1">&nbsp;&nbsp;고객정보 및 결제정보</td>
					<td colspan="5" class="miniTitle1">&nbsp;&nbsp;사업자</td>
				</tr>
				<tr>
					<td colspan="5" class="miniTitle2">고객 정보</td>
					<td colspan="5" class="miniTitle2">사업자 정보</td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">아아디</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.userId }"/></td>
					<td colspan="2" class="tTag">사업자 번호</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.bsNum }"/></td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">이름</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.userName }"/></td>
					<td colspan="2" class="tTag">상호명</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.bsTitle }"/></td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">연락처</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.userPhone }"/></td>
					<td colspan="2" class="tTag">의뢰업종</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.catName }"/></td>
				</tr>
				<tr>
					<td colspan="5" class="miniTitle2">결제 정보</td>
					<td colspan="2" class="tTag">대표자명</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.bsName }"/></td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">견적가</td>
					<td colspan="3" class="tOut">
						<c:if test="${ requestScope.urd.payPrice == null }">
							<label class="standBy">대금결제 전</label>	
						</c:if>
						<c:if test="${ requestScope.urd.payPrice != null }">
							<c:out value="${ requestScope.urd.payPrice }"/>
						</c:if>
					</td>
					<td colspan="2" class="tTag">대표연락처</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.bsPhone }"/></td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">결제방식</td>
					<td colspan="3" class="tOut">
					<c:out value="${ requestScope.urd.payType }"/>
					</td>
					
					<td colspan="2" class="tTag">사업장 주소</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.bsAdd }"/></td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">결제은행</td>
					<td colspan="3" class="tOut">
					<c:out value="${ requestScope.urd.payBank }"/>
					</td>
					
					<td colspan="2" class="tTag">대표 거래 은행</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.bsBank }"/></td>
				</tr>
				<tr>
					<td colspan="2" class="tTag">결제일</td>
					<td colspan="3" class="tOut">
					<c:out value="${ requestScope.urd.payDate }"/>
					</td>
					
					<td colspan="2" class="tTag">대표 계좌</td>
					<td colspan="3" class="tOut"><c:out value="${ requestScope.urd.bsAct }"/></td>
				</tr>
			</table>
			<div class="newsize"></div>
			<div class="tableConnect">
				<div class="table1">
					<table>
						<tr>
							<td colspan="2" class="miniTitle1">&nbsp;&nbsp;옵션정보</td>
						</tr>
						<tr>
							<td colspan="2" class="miniTitle2">의뢰옵션</td>
						</tr>
					</table>
					<table id="optionSelectTable">
						<tbody>
						</tbody>
					</table>
				</div>
				<div class="table2">
					<table>
						<tr>
							<td colspan="2" class="miniTitle1">&nbsp;&nbsp;의뢰정보</td>
						</tr>
						<tr>
							<td colspan="2" class="miniTitle2">의뢰사항</td>
						</tr>
						<tr>
							<td class="tTag">시공희망일</td>
							<td class="tOut"><c:out value="${ requestScope.urd.reqHopeStart }"/>~<c:out value="${ requestScope.urd.reqHopeEnd }"/></td>
						</tr>
						<tr>
							<td class="tTag">예상견적가</td>
							<td class="tOut"><c:out value="${ requestScope.urd.reqPrice }"/></td>
						</tr>
						<tr>
							<td class="tTag">의뢰주소</td>
							<td class="tOut"><c:out value="${ requestScope.urd.reqAdd }"/></td>
						</tr>
						<tr>
							<td class="tTag">이름</td>
							<td class="tOut"><c:out value="${ requestScope.urd.reqName }"/></td>
						</tr>
						<tr>
							<td class="tTag">연락처</td>
							<td class="tOut"><c:out value="${ requestScope.urd.reqPhone }"/></td>
						</tr>
						<tr>
							<td class="tTag">공간사진</td>
							<td class="tOut">
							<c:if test="${ requestScope.fileList[0].fileLevel == 2 }">
								<button class="upPhoto" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/requestPhoto/<c:out value="${ requestScope.fileList[0].fileChangeName }"/>','공간사진1','width=auto, height=auto');">사진1</button>
							</c:if>
							<c:if test="${ requestScope.fileList[1].fileLevel == 2 }">
								<button class="upPhoto" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/requestPhoto/<c:out value="${ requestScope.fileList[1].fileChangeName }"/>','공간사진2','width=auto, height=auto');">사진2</button>
							</c:if>
							<c:if test="${ requestScope.fileList[2].fileLevel == 2 }">
								<button class="upPhoto" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/requestPhoto/<c:out value="${ requestScope.fileList[2].fileChangeName }"/>','공간사진3','width=auto, height=auto');">사진3</button>
							</c:if>
							<c:if test="${ requestScope.fileList[3].fileLevel == 2 }">
								<button class="upPhoto" onclick="window.open('${ applicationScope.contextPath }/resources/upLoadFiles/request/requestPhoto/<c:out value="${ requestScope.fileList[3].fileChangeName }"/>','공간사진4','width=auto, height=auto');">사진4</button>
							</c:if>						
							</td>
						</tr>
						<tr>
							<td class="tTag">공간상황</td>
							<td class="tOut"><c:out value="${ requestScope.urd.reqArea }"/></td>
						</tr>
						<tr>
							<td class="tTag">엘레베이터</td>
							<td class="tOut"><c:out value="${ requestScope.urd.reqElv }"/></td>
						</tr>
						<tr>
							<td class="tTag">요청사항</td>
							<td class="tOut"><c:out value="${ requestScope.urd.reqHelp }"/></td>
						</tr>
					</table>
				</div>
				<table>
					<tr>
						<td class="newsize"></td>
					</tr>
					<tr>
						<td class="tMemo">메모</td>
					</tr>
					<tr>
						<td class="tMemoArea"><c:out value="${ requestScope.urd.reqNote }"/></td>
					</tr>
				</table>
 				<c:if test="${ empty sessionScope.loginUser }">
				<table class="adminBtnArea">
					<tr>
						<td>
							<c:if test="${ requestScope.urd.paySend == 'N' && requestScope.urd.proName == '시공완료' }">
								<button class="adminBtn1" id="paySend" onclick="paySend();">송금처리</button>
							</c:if>
							<c:if test="${ requestScope.urd.paySend == 'Y' || requestScope.urd.proName != '시공완료' }">
								<button class="adminBtn1" id="paySend" style="background: lightgrey; color:grey;" disabled>송금처리</button>
							</c:if>
						</td>
						<td>
							<button class="adminBtn2" id="reqEdit" onclick="reqUpdate();">거래정보수정</button>
						</td>
						<td>
							<button class="adminBtn3" id="payCancel" onclick="payCancel();">결제취소</button>
						</td>
						<td>
							<button class="adminBtn4" id="reqCancel" onclick="reqCancel();">거래취소</button>
						</td>
					</tr>
				</table>
				</c:if>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			var rnoOne = document.location.href.split("=");
			$.ajax({
				url: "${applicationScope.contextPath}/selectOptionList.user",
				data: {rnoOne : rnoOne[1]},
				type: "post",
				success: function(data) {
					var $optionSelectTable = $("#optionSelectTable tbody");
					$optionSelectTable.html('');
					
					for(var key in data) {
						var $tr = $("<tr>");
						var $optNameTd = $("<td class='tTag'>").text(data[key].optName);
						var $optOptionTd = $("<td class='tOut'>").text(data[key].optOption);
						
						$tr.append($optNameTd);
						$tr.append($optOptionTd);
						
						$optionSelectTable.append($tr);
					}
				},
				error: function(err) {
					console.log("옵션 조회 실패!");
				}
			});
		});
	</script>
	<script>
		function reqUpdate() {
			var popupWidth = 420;
			var popupHeight = 320;
			var popupX = (window.screen.width / 2) - (popupWidth / 2);
			var popupY= (window.screen.height / 2) - (popupHeight / 2);
			var num = document.location.href.split("=");
			window.open('${ applicationScope.contextPath }/views/admin/pages/adminPaySendPopup1.jsp?num=' + num[1], '', 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
		};
	</script>	
	<script>
		function paySend() {
			var popupWidth = 420;
			var popupHeight = 320;
			var popupX = (window.screen.width / 2) - (popupWidth / 2);
			var popupY= (window.screen.height / 2) - (popupHeight / 2);
			var num = document.location.href.split("=");
			window.open('${ applicationScope.contextPath }/views/admin/pages/adminPaySendPopup1.jsp?num=' + num[1], '', 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
		};
	</script>
	<script>
		function payCancel() {
			var popupWidth = 420;
			var popupHeight = 320;
			var popupX = (window.screen.width / 2) - (popupWidth / 2);
			var popupY= (window.screen.height / 2) - (popupHeight / 2);
			var num = document.location.href.split("=");
			window.open('${ applicationScope.contextPath }/views/admin/pages/adminPayCancelPopup1.jsp?num=' + num[1], '', 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
		};
	</script>
	<script>
		function reqCancel() {
			var popupWidth = 420;
			var popupHeight = 520;
			var popupX = (window.screen.width / 2) - (popupWidth / 2);
			var popupY= (window.screen.height / 2) - (popupHeight / 2);
			var num = document.location.href.split("=");
			window.open('${ applicationScope.contextPath }/views/admin/pages/adminReqCancelPopup1.jsp?num=' + num[1], '', 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
		};
	</script>
</body>
</html>


















