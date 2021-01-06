<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>

	body {
	font-family: "NanumGothic";
	font-weight: bolder;
	}
	.inner {
	display: flex;
	justify-content: center;
	}
	
	header {
	margin: 0 auto;
	width: 1200px;
	height: 60px;
	}
	
	.information{
	margin: auto;
	width: 1200px;
	height: 225px;

	}
	
	footer {
	margin: 0 auto;
	width: 1200px;
	height: 328px;
	}
	

	.section {
	width: 200px;
	height: 1123px;
	background: white;
	}

	.article{
	width: 1000px;
	height: 1123px;
	border: 1px solid gray;
	}
	
	
	
	table{
		margin:auto;
	}
	td{
		padding:10px;
	}
	input{
		height: 35px;
	
	}
	.save{
		background: orange;
		margin-top:150px;
		height:100px;
		cursor:pointer;
	}
	input[type=text]{
		background:#EBEFF2;
		border:1px solid gray;
	
	}
	

	.btn-radio {
	display: inline-block;
	margin-right: 10px;
	}
	.btn-radio input[type=radio] {
	display: none;
	}
	.btn-radio label {
	display: inline-block;
	background:#EBEFF2;
	cursor: pointer;
	padding: 0px 15px;
	line-height: 34px;
	border: 1px solid #999;
	border-radius: 6px;
	user-select: none;
	}
 
	/* Checked */
	.btn-radio input[type=radio]:checked + label {
	background: #ffe0a6;
	}
 
	/* Hover */
	.btn-radio label:hover {
	color: #666;
	}
</style>
</head>
<body>
	<header>
	<jsp:include page="../../common/menubar.jsp"/> 
	</header>
	<jsp:include page="../../common/searchQenq.jsp"/> 
	<div class="information">
	<jsp:include page="../../common/bsPagebar.jsp"/> 
	</div>
	<div class="inner">
		<div class="section">
		<jsp:include page="../../common/bsSidebar.jsp"/> 
		</div>
		<div class="article">
		<br>
		<h3 align="center">사업자 정보 수정</h3>
		<div class="changeform">
			<form id = "inputform" action="${ applicationScope.contextPath }/bsModify.me" method="post">
				<table>
					<tr>
						<td>사업자 번호 (수정불가) &nbsp;&nbsp;</td>
						<td colspan="3"><input type="text" size="50" name="bsNum" value="<c:out value="${ sessionScope.bsUser.bsNum }"/>" readonly></td>
					</tr>
					<tr>
						<td>사업등록신고일자(수정불가) &nbsp;&nbsp;</td>
						<td colspan="3"><input type="text" size="50" name="bsDate" maxlength="6" value="<c:out value="${ sessionScope.bsUser.bsNumDate }"/>" readonly></td>
					</tr>
					<tr>
						<td>경력</td>
						<td>
						<div class="btn-radio">
							<input type="radio" name="bsYear" id="bsYear-1" value="1년">
							<label for="bsYear-1">1년</label>
						</div>
						<div class="btn-radio">
							<input type="radio" name="bsYear" id="bsYear-2" value="5년">
							<label for="bsYear-2">5년</label>
						</div>
						<div class="btn-radio">
							<input type="radio" name="bsYear" id="bsYear-3" value="10년">
							<label for="bsYear-3">10년</label>
						</div>
						<div class="btn-radio">
							<input type="radio" name="bsYear" id="bsYear-4" value="15년">
							<label for="bsYear-4">15년</label>
						</div>
						<div class="btn-radio">
							<input type="radio" name="bsYear" id="bsYear-5"  value="20년">
							<label for="bsYear-5">20년</label>
						</div>

						</td>
					</tr>
					<tr>
						<td>상호명</td>
						<td colspan="3"><input type="text" size="50" name="bsTitle" value="<c:out value="${ sessionScope.bsUser.bsTitle }"/>" ></td>
					</tr>
					<tr>
						<td>사업자주소</td>
						<td colspan="3"><input type="text" size="50" name="bsAdd" value="<c:out value="${ sessionScope.bsUser.bsAdd }"/>"></td>
					</tr>
					<tr>
						<td>법인여부</td>
						<td>
						<div class="btn-radio">
							<input type="radio" name="bsCorp" id="bsCorpY" value="Y">
							<label for="bsCorpY">예</label>
						</div>
						<div class="btn-radio">
							<input type="radio" name="bsCorp" id="bsCorpN"  value="N">
							<label for="bsCorpN">아니오</label>
						</div>
						</td>
					</tr>
					<tr>
						<td>대표자명</td>
						<td colspan="3"><input type="text" size="50" name="bsName" value="<c:out value="${ sessionScope.bsUser.bsName }"/>"></td>
					</tr>
					<tr>
						<td>대표연락처</td>
						<td colspan="3"><input type="text" size="50" name="bsPhone" value="<c:out value="${ sessionScope.bsUser.bsPhone }"/>"></td>
					</tr>
					<tr>
						<td>AS가능 여부</td>
						<td>
						<div class="btn-radio">
							<input type="radio" name="bsAs" id="bsAsY"  value="Y">
							<label for="bsAsY">예</label>
						</div>
						<div class="btn-radio">
							<input type="radio" name="bsAs" id="bsAsN" value="N">
							<label for="bsAsN">아니오</label>
						</div>
						</td>
					</tr>
						<tr>
						<td>계약금</td>
						<td>
						<div class="btn-radio">
							<input type="radio" name="bsDeposit" id="bsDeposit-1" value ="5">
							<label for="bsDeposit-1">5%</label>
						</div>
						<div class="btn-radio">
							<input type="radio" name="bsDeposit" id="bsDeposit-2" value="10">
							<label for="bsDeposit-2">10%</label>
						</div>
						<div class="btn-radio">
							<input type="radio" name="bsDeposit" id="bsDeposit-3" value="20">
							<label for="bsDeposit-3">20%</label>
						</div>
						<div class="btn-radio">
							<input type="radio" name="bsDeposit" id="bsDeposit-4" value="30">
							<label for="bsDeposit-4">30%</label>
						</div>
						<div class="btn-radio">
							<input type="radio" name="bsDeposit" id="bsDeposit-5" value="40">
							<label for="bsDeposit-5">40%</label>
						</div>
						
						
						</td>
					</tr>
						<tr>
						<td>거래은행</td>
						<td colspan="3"><input type="text" size="50" name="bsBank" value="<c:out value="${ sessionScope.bsUser.bsBank }"/>"></td>
					</tr>
					<tr>
						<td>계좌번호</td>
						<td colspan="3"><input type="text" size="50" name="bsAct" value="<c:out value="${ sessionScope.bsUser.bsAct }"/>"></td>
					</tr>
				</table>
            	<div class="save" align="center">
            		<p style="font-size:40px; color:white; padding-top:20px;">저장</p>
            	</div>
			</form>
		</div>
	</div>
	</div>
	<footer>
		<jsp:include page="../../common/footer.jsp"/> 
	</footer>
	<script>
	$(".save").click(function() {
		$("#inputform").submit();
	});
	</script>
</body>
</html>