<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
header {
	margin: 0 auto;
	width: 1200px;
	height: 50px;
}

.wrap {
	width: 1200px;
	height: 100%;
	margin: auto;
	font-weight: bold;
}

.middle {
	width: 1200px;
	height: auto;
	margin: auto;
}

.title {
	margin-top: 50px;
	width: 1200px;
	height: 100px;
}

.nav1 {
	background: #012E41;
	width: 100%;
	height: 20px;
}

.qna-area {
	background: #EBEFF2;
	width: 100%;
	height: 1100px;
}

.menuBtn {
	margin-top: 0px;
	width: 14%;
	height: 100%;
	float: left;
}

.menuList {
	background: #EBEFF2;
	color: #012E41;
	font-weight: bolder;
	font-size: 25px;
	width: 200px;
	height: 100px;
}

.aboutList {
	width: 80%;
	height: 100%;
	float: left;
	font-weight: bolder;
	font-size: 25px;
	margin-left: 52px;
}

.qna-formarea {
	background: white;
	border: 5px groove #ced4da;
	width: 930px;
	height: 95%;
	padding: 10px;
	margin-top: 10px;
}

.c {
	border-spacing: 0 25px;
	margin: auto;
}

.d {
	border-spacing: 0 40px;
	margin: auto;
}

input[name="userName"], input[name="userId"], input[name="userPhone"],
	input[name="rno"] {
	width: 500px; /* 원하는 너비 설정 */
	height: auto; /* 높이값 초기화 */
	line-height: normal; /* line-height 초기화 */
	padding: .8em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	font-size: 20px;
	border: 1px solid #999;
	border-radius: 10px; /* iSO 둥근모서리 제거 */
	outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

input[name=tel1], input[name=tel2], input[name=tel3] {
	width: 133px;
	height: 35px;
	line-height: normal; /* line-height 초기화 */
	padding: .5em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	font-size: 20px;
	border: 1px solid #999;
	border-radius: 10px; /* iSO 둥근모서리 제거 */
	outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

select[name=qkno] {
	width: 520px;
	height: auto;
	line-height: normal;
	font-size: 20px;
	padding: .8em .5em;
	border: 1px solid #999;
	border-radius: 10px;
}

input[type="checkbox"] {
	width: 20px;
	height: 20px;
}

label[name="b"] {
	color: #F2A71B;
}

textarea {
	font-size: 20px;
}

.btns {
	margin-top: 35px;
}

button[type="submit"] {
	margin-top: 20px;
	background: #012E41;
	width: 100%;
	height: 60px;
	color: white;
	font-size: 25px;
}

.menuList:hover {
	background: #012E41;
	color: white;
}
</style>
<%String result = (String)request.getAttribute("result");
if(result == null){
	result = "";
	}
if(result.equals("동의")){%>
<script>
function opendialog(){
	alert('약관의 동의해주세요.');
}
</script>
<body onLoad="opendialog()">
<%}else if(result.equals("정보입력")){%>
<script>
function opendialog(){
	alert('문의 유형과 문의 내용을 작성하세요.');
}
</script>
<body onLoad="opendialog()">

<%}else{
	%>
<body>
<% 
}
%>
</head>
<body>

	<header>
		<jsp:include page="../common/menubar.jsp" />

	</header>
	<jsp:include page="../common/searchQenq.jsp" />
	<div class="wrap">
		<div align="center" class="middle">
			<div class="title">
				<h1 align="center">고객센터</h1>
			</div>
			<div class="nav1"></div>
			<div class="qna-area">
				<div class="menuBtn">
					<div>
						<a onclick="location.href='#'"><input type="submit"
							class="menuList" value="1:1 문의"></a>
					</div>
					<div>
						<a onclick="location.href='#'"><input type="submit"
							class="menuList" value="자주 묻는 질문"></a>

					</div>
				</div>

				<div class="aboutList">
					<div class="qna-formarea">
						<c:if test="${ !empty sessionScope.loginUser }">
							<form id="qnaForm"
								action="${ applicationScope.contextPath }/qnaInsert.qp"
								method="post">
								<table class="c" align="center">
									<tr>
										<td width="200px">이름</td>
										<td width="550px"><input type="text" name="userName"
											value="<c:out value="${ sessionScope.loginUser.userName }"/>" disabled //></td>
									</tr>
									<tr>
										<td>연락처</td>
										<td><input type="text" name="userPhone"
											value="<c:out value="${ sessionScope.loginUser.userPhone }"/>"
											disabled /></td>

									</tr>
									<tr>
										<td>아이디(이메일)</td>
										<td><input type="text" name="userId"
											value="<c:out value="${ sessionScope.loginUser.userId }"/>"
											disabled /></td>
									</tr>
									<tr>
										<td>의뢰번호</td>
										<td><input type="text" name="rno" placeholder="의뢰번호"
											onfocus="this.placeholder=''"
											onblur="this.placeholder='의뢰번호'" /></td>
									</tr>
									<tr>
										<td>문의 유형</td>
										<td><select id="qkno" name="qkno">
												<option value="">문의유형을 선택해 주세요.</option>
												<option value="QK001">리뷰 신고</option>
												<option value="QK002">사업체 관련 문의</option>
												<option value="QK003">계약 진행중 문의</option>
												<option value="QK004">공사 진행중 문의</option>
												<option value="QK005">공사 후 문의</option>
												<option value="QK006">기타 문의</option>
												<option value="QK007">사업자 신고</option>
										</select></td>
									</tr>
									<td>문의 내용</td>
									<td><textarea name="qnaNote" cols="40" rows="7"
											style="resize: none;"></textarea></td>
									<tr>
									<tr>
										<td></td>
										<td><input type="checkbox" id="v1" name="checkAll" value="">
											<label for="v1">전체 동의</label></td>
									</tr>
									<tr>
										<td></td>
										<td>&nbsp;<input type="checkbox" id="v2" name="checkOne" value="ess">
											<label for="v2" name="b">(필수)</label><label for="v2">개인정보 수집 및
												이용에 동의</label></td>
									</tr>
									<tr>
										<td></td>
										<td>&nbsp;<input type="checkbox" id="v3" name="checkOne" value="ess2">
										 <label for="v3" name="b">(필수)</label><label for="v3">개인정보
												제 3자 제공에 동의</label></td>
									</tr>
									<tr>
										<td></td>
										<td>&nbsp;<input type="checkbox" id="v4" name="checkOne" value="">
											<label for="v4" name="b">(선택)</label><label for="v4">인테리어 정보 및
												마케팅 수신에 동의</label></td>
									</tr>
								</table>
								<div class="btns" align="center">

									<button type="submit" id="qna">문의하기</button>

								</div>

							</form>
						</c:if>
						<%-- <c:if test="${ empty sessionScope.loginUser }">
							<form id="qnaForm"
								action="${ applicationScope.contextPath }/login.me"
								method="post">
								<table class="d" align="center">
									<tr>
										<td width="200px">이름</td>
										<td width="550px"><input type="text" name="userName"
											placeholder="이름" onfocus="this.placeholder=''"
											onblur="this.placeholder='이름'" /></td>
									</tr>
									<tr>
										<td>연락처</td>
										<td><input type="text" maxlength="3" name="tel1" size="2"
											placeholder="010" onfocus="this.placeholder=''"
											onblur="this.placeholder='010'" /> - <input type="text"
											maxlength="4" name="tel2" size="2" placeholder="1234"
											onfocus="this.placeholder=''"
											onblur="this.placeholder='1234'" /> - <input type="text"
											maxlength="4" name="tel3" size="2" placeholder="5678"
											onfocus="this.placeholder=''"
											onblur="this.placeholder='5678'" /></td>
									</tr>
									<tr>
										<td>문의 유형</td>
										<td><select id="qkno" name="qkno">
												<option value="ess">문의유형을 선택해 주세요.</option>
												<option value="qk001">리뷰 신고</option>
												<option value="qk002">사업체 관련 문의</option>
												<option value="qk003">계약 진행중 문의</option>
												<option value="qk004">공사 진행중 문의</option>
												<option value="qk005">공사 후 문의</option>
												<option value="qk006">기타 문의</option>
												<option value="qk007">사업자 신고</option>
										</select></td>
									</tr>
									<td>문의 내용</td>
									<td><textarea name="content" cols="40" rows="7"
											style="resize: none;"></textarea></td>
									<tr>
									<tr>
										<td></td>
										<td><input type="checkbox" id="checkAll" name="checkAll"
											value=""> <label for="checkAll">전체 동의</label></td>
									</tr>
									<tr>
										<td></td>
										<td>&nbsp;&nbsp;&nbsp;<input type="checkbox" id="ess"
											name="checkOne" value=""> <label for="" name="b">(필수)</label><label>개인정보
												수집 및 이용에 동의</label></td>
									</tr>
									<tr>
										<td></td>
										<td>&nbsp;&nbsp;&nbsp;<input type="checkbox" id="ess"
											name="checkOne" value="ess"> <label for="" name="b">(필수)</label><label>개인정보
												제 3자 제공에 동의</label></td>
									</tr>
									<tr>
										<td></td>
										<td>&nbsp;&nbsp;&nbsp;<input type="checkbox" id=""
											name="checkOne" value=""> <label for="" name="b">(선택)</label><label>인테리어
												정보 및 마케팅 수신에 동의</label></td>
									</tr> 
								</table> 

								<div class="btns" align="center">

									<button id="qna" type="submit">문의하기</button>
									

								</div>

							</form>
						</c:if>--%>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<jsp:include page="../common/footer.jsp" />
		</div>
	</div>

	<script>
	
	
	</script>

	<script>
 		function allCheckFunc(obj) {
			$("[name=checkOne]").prop("checked", $(obj).prop("checked"));
		}

		/* 체크박스 체크시 전체선택 체크 여부 */
		function oneCheckFunc(obj) {
			var allObj = $("[name=checkAll]");
			var objName = $(obj).attr("name");

			if ($(obj).prop("checked")) {
				checkBoxLength = $("[name=" + objName + "]").length;
				checkedLength = $("[name=" + objName + "]:checked").length;

				if (checkBoxLength == checkedLength) {
					allObj.prop("checked", true);
				} else {
					allObj.prop("checked", false);
				}
			} else {
				allObj.prop("checked", false);
			}
		} 
		$(function() {
			$("[name=checkAll]").click(function() {
				allCheckFunc(this);
			});
			$("[name=checkOne]").each(function() {
				$(this).click(function() {
					oneCheckFunc($(this));
				});
			});
		});
	</script>
</body>
</html>