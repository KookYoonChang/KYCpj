<jsp:directive.page language="java"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
body {
   font-family: "NanumGothic";
}

.menu {
   margin-top: 5px;
   float: left;
   width: 100px;
   height: 950px;
   background: white;

}
.step {
   width: 100px;
   height: 50px;
   background: #EBEFF2;
   border-bottom: 1px solid #C4C4C4;
}

.step1 {
   width: 100px;
   height: 50px;
   background: #C4C4C4;
}

.label {
   font-size: 11px;
}
</style>
</head>
<body>
   <div class="menu">
      <table>
         <tr>
            <th class="step">STEP1<br><label class="label">의뢰사항</label></th>
         </tr>
         <tr>
            <th class="step">STEP2<br><label class="label">의뢰인 정보 입력</label></th>
         </tr>
         <tr>
            <th class="step1">STEP3<br><label class="label">의뢰확인</label></th>
         </tr>
      </table>
   </div>
</body>
</html>