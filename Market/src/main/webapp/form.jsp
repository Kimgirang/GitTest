<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />

<!-- 상품 등록 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.flex_wrap {
	display: flex;
	line-height:100%;	
}
.wrap {
	width: 100%;
	text-align: center;
	display: flex;
}
.item {
	display: flex;
}
#menu2 {
	width: 30%;
	float: left;
}
#menu2 p{
	margin-bottom: 22px;
}

#form2 {
   width: 50%;
   float: left;

}


</style>
</head>
<body>
	<%@ include file="menu.jsp"%>
		<%! String greeting = "상품등록";
	%>
	
	<script type="text/javascript">
	
	function CheckAddProduct() {
		
// 		var _pattern1 = /^[P][0-9]{5,12}$/;
// 		if (!_pattern1.test(document.member.id.value)) {
// 			alert('p포함 5글자 이상 12글자까지');
// 		} 
		

// 		var pattern2 = /^.{4,12}$/;
// 		if (!pattern2.test(document.member.pname.value)) {
// 			alert('글자수 4~12자리');
// 		}
		    
			    
// 		var pattern3 = /^[0-9]+\-?(\d{1,3}([.]+\d{0,2})?)?$/;
//  		if (!pattern3.test(document.member.unitPrice.value)) {
// 			alert('슷자만 입력, 음수는 입력안되고 소수점은 둘째자리까지');
// 		}		    
		    
//  		var check = /^[0-9]+$/;
// 		if (!check.test(document.member.unitsInstock.value)) {
// 			alert('숫자만 입력');
// 		}
		document.member.submit();
	}		
	</script>


	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>

	<div class="container">
		<div class="item">
			<div id="menu2">
				<p>상품코드
				<p>상품명
				<p>가격
				<p style="margin-bottom: 76px">상세정보
				<p>제조사
				<p>분류
				<p>재고수
				<p>상태
				<p>이미지
				<p><input type="button" value="등록" onclick="CheckAddProduct()">
			</div>
			<div id="form2">
				<form action="upload.jsp" name="member" method="post" enctype="multipart/form-data">
					<p><input type="text" name="id">
					<p><input type="text" name="pname" minlength="4" maxlength="12">
					<p><input type="text" name="unitPrice">
					<p><textarea name="comment" rows="3" cols="30"></textarea>
					<p><input type="text" name=" menufacturer">
					<p><input type="text" name="category">
					<p><input type="text" name="unitsInstock">							
					<p><input type="radio" name="condition" value="신규제품">신규제품 
						<input type="radio" name="condition" value="중고제품">중고제품 
						<input type="radio" name="condition" value="재생제품">재생제품
					<p><input type="file" name="filename">	
				</form>				
			</div>
		</div>
	</div>
</body>
</html>