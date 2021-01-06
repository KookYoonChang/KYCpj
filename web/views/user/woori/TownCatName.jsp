<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 사는 그집</title>
<style>


	.townPhoto {
		width:1200px;
		height:3000px;
		margin:0 auto;
	}
	.portfolio {
		width:380px;
		display:inline-block;
		margin:10px;
	}
	.portfolio {
		opacity:0.8;
		cursor:pointer;
	}
	#bsTitle {
		font-size:22px;
		color:orange;
	}
	.imgDiv {
		width:380px;
		height:290px;
	}

	#portNote {
	 overflow: visible;
	}
</style>
</head>
<body>
<div class="wrap">
    <jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/searchQenq.jsp"/>
  	<jsp:include page="../common/Kategorie.jsp"/>
    <jsp:include page="../common/locateSelectbar.jsp"/>  

  <%--우리동네 포트폴리오 --%>
    <div class="townPhoto">
		<c:forEach var="list" items="${ requestScope.list }"> 
	 	<div class="portfolio"> 	
			<div class="thumb-list" align="center">	
			
				<div id="imgDiv">
					<input type="hidden" name="str" value="<c:out value="${ list.bno }"/>">
					<input type="hidden" name="str" value="<c:out value="${ list.cno }"/>">
					<img id="tPhoto" src="${ applicationScope.contextPath }/resources/upLoadFiles/portfolio/<c:out value="${ list.changeName}"/>
						"width="380px" height="290px">
				</div>
				
				<p><c:out value="${ list.bsAdd }"/>
				<c:out value="${list.catName }"/>
				비용 : <c:out value="${ list.portPrice }"/><br></p>
				<p id="bsTitle" ><c:out value="${ list.bsTitle }"/><br></p>
				<p><c:out value="${ list.portNote }"/></p>
				
			</div>
	
		</div> 
		</c:forEach>
		
    </div>
    
    <jsp:include page="../common/footer.jsp"/>
    </div>
    </body>
    
    
    