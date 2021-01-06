<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/thil/resources/css/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="/thil/resources/js/jquery.bxslider.min.js"></script>
<meta charset="UTF-8">
<title>내가 사는 그집</title>
<style>
	body {
		margin: 0;
    	padding: 0;
    	border: 0;
    	font-size: 100%;
    	font-style: normal;
    	vertical-align: top;
    	box-sizing: border-box;
	}

	.wrap {
		width:1200px;
        height:4500px;
        margin:auto;
        font-weight:bold; 
        text-decoration: none;
	}
	.rivew-photo {
		width:1200px;
		height:500px;
		margin:0 auto;
		float:left;
		
	}
	.rivew-slider {
		float:left;
		margin:0 auto;
		cursor:pointer;
	}
	.bx-pager {
		position: absolute;
    	text-align: center;
		margin:40px;
	}

	
</style>
</head>
<body>
	<div class="wrap">
  <jsp:include page="../common/menubar.jsp"/> 
	<jsp:include page="../common/searchQenq.jsp"/> 
  	<jsp:include page="../common/Kategorie.jsp"/>
   <jsp:include page="../common/locateSelectbar.jsp"/>
   
    <div class="rivew-photo">
    	<ul class="rivew-slider">
    		<li><img src="<%=request.getContextPath()%>/resources/images/main/pic.PNG" width="1200" height="500"></li>
    		<li><img src="<%=request.getContextPath()%>/resources/images/main/pic2.PNG" width="1200" height="500"></li>
    		<li><img src="<%=request.getContextPath()%>/resources/images/main/pic3.PNG" width="1200" height="500"></li>
    		<li><img src="<%=request.getContextPath()%>/resources/images/main/pic4.PNG" width="1200" height="500"></li>
    		<li><img src="<%=request.getContextPath()%>/resources/images/main/pic5.PNG" width="1200" height="500"></li>
    	</ul>
</div>
	 <jsp:include page="../common/townArea.jsp"/>
	<div id="townArea"></div>
	<jsp:include page="../common/footer.jsp"/> 
</div>



  <script>
  $(function(){
	    $('.rivew-slider').bxSlider({
			auto:true,
			pager:true
			
		});
	});
  
	</script>
</body>
</html>









