<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
img {
		margin: 0;
    	padding: 0;
    	border: 0;
    	font-size: 100%;
    	font-style: normal;
    	vertical-align: top;
    	box-sizing: border-box
	}
.wrap {
		width: 1200px;
		height:100%;
        margin: auto;
        font-weight: bold;
	}
.content{
		background: white;
		float: left;
		width: 900px;
		height: 450px;
	}
	.Kategorie {
		width: 100%;
		height: 30%;
	}
	.Kategorie-item {
		background: white;
		width: 900px;		
		float: left;
		margin-left: 0 auto;      
	}
	.item{
		width:100px;
		height:30px;
		margin: 50px;
		float:left;
		cursor:pointer;
		font-size:20px;
		color:navy;
    	text-align: center;
	}
	.connect {
		background: white;
		margin-top:30px;
		float: left;
		width: 300px;
		height: 450px;
	}
</style>
</head>
<body>
<div class="content">
    <div class="Kategorie">
    <div class="Kategorie-item">
			<div class="item" id="paper">
			<input type="hidden" name="str" value="C001"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item01.png" width="50" height="50"><br>
				<a>도배</a>
			</div>
			<div class="item">
			<input type="hidden" name="str" value="C002"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item02.png" width="50" height="50"><br>
			<a>장판</a>
			</div>
			<div class="item">
			<input type="hidden" name="str" value="C003"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item03.png" width="50" height="50"><br>
			<a>타일</a>
			</div>
			<div class="item">
			<input type="hidden" name="str" value="C004"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item04.png" width="50" height="50"><br>
			<a>마루</a>
			</div>
			<div class="item">
			<input type="hidden" name="str" value="C005"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item05.png" width="50" height="50"><br>
			<a>도어</a
			></div>
			<div class="item">
			<input type="hidden" name="str" value="C006"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item06.png" width="50" height="50"><br>
			<a>창호</a>
			</div>
			<div class="item">
			<input type="hidden" name="str" value="C007"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item07.png" width="50" height="50"><br>
			<a>조명</a>
			</div>
			<div class="item">
			<input type="hidden" name="str" value="C008"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item08.png" width="50" height="50"><br>
			<a>욕실</a>
			</div>
			<div class="item">
			<input type="hidden" name="str" value="C009"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item09.png" width="50" height="50"><br>
			<a>주방</a>
			</div>
			<div class="item">
			<input type="hidden" name="str" value="C010"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item10.png" width="50" height="50"><br>
			<a>페인트</a>
			</div>
			<div class="item">
			<input type="hidden" name="str" value="C011"/>
			<img src="<%=request.getContextPath()%>/resources/images/main/item11.png" width="50" height="50"><br>
			<a>블라인드</a>
			</div>
		</div>
    </div>   
    </div>
    <div class="connect">
    	<div class="connect-nav">
    		<div class="c-title" style="color:orange; font-size:50px;"><a>퀵:커넥트</a></div><br>
			<div class="citem" style="font-size:25px;"><a># 격식있는 스타일</a></div><br>
			<div class="citem" style="font-size:25px;"><a># 직선이 만들어낸 시원한 스타일</a></div><br>
			<div class="citem" style="font-size:25px;"><a># 아늑하고 따스한</a></div><br>
			<div class="citem" style="font-size:25px;"><a># 군더더기 없는 깔끔한 스타일</a></div><br>
		</div>
    </div>
    <script>
   
     
      $(function(){
		$(".item").click(function(){
			
			var str = $(this).find("input").val();
							
			location.href="${applicationScope.contextPath}/catNameSelect.cs?str=" + str; 
			
		})
	});  
			
    </script>
</body>
</html>











