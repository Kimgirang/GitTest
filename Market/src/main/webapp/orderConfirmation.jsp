<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />   
	 
<!---- 주문 정보 ---->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.yellow {
	display: flex;	/* red 안에 있는 애들 가로로 정렬*/
}

#dd {
	float: right;	
	background: red;
}

.menu4{ 
	display:flex;
}
</style>
<title>Insert title here</title>
</head>


<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "주문 정보";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=greeting%></h1>
		</div>
	</div>

	<div class="container">
		<div class="blue" style="background:skyblue;">
			<div class="black">
				<h2 style="text-align: center">영수증</h2>
			</div>	
			<div class="red">
<!-- 				<p>배송주소 -->
<!-- 				<p id="dd">배송일 2020/12/24</p> -->
				배송주소 <i style="float: right;">배송일</i>
			</div>	
			
			<div class="red">
				<p>성명
				<p>우편번호
				<p>주소
				<p>(한국)	
			</div>

			<div class="yellow" style="background: yellow; color: black;">
				<p style="width: 200px">도서
				<p style="width: 100px">#
				<p style="width: 100px">가격
				<p style="width: 100px">소계
			</div>
			<div class="yellow" style="background: yellow; color: black;">
				<p style="width: 200px">1
				<p style="width: 100px">2
				<p style="width: 100px">3
				<p style="width: 300px">4
			</div>
			
			<div class="menu4">
				<p><input type="button" value="이전">
				<p><input type="button" value="등록">	
				<p><input type="button" value="취소" onclick="CheckAddProduct()">		
			</div>		
		</div>
	</div>
</body>
</html>