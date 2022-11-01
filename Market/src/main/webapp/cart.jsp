<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<%@ page import = "java.util.ArrayList" %>	
<!DOCTYPE html>
<html>
<head>
<style>

/* 장바구니 */

#table {
	display: table;
	width: 100%;
}

.row {
	display: table-row;
	width: 100%;
}

.cell {
	display: table-cell;
	padding: 3px;
	border-bottom: 1px solid #DDD;	
}


.red {
	display: flex;	/* red 안에 있는 애들 가로로 정렬*/
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%
		String greeting = "장바구니";
		request.setCharacterEncoding("UTF-8");
		// 장바구니 시작 부분 (상세정보페이지에서 저장된 정보를 불러옴(get))
		String ProductID = (String)session.getAttribute("ProductID");
		String Pname 	 = (String)session.getAttribute("Pname");
		Integer UnitPrice = (Integer)session.getAttribute("UnitPrice"); 
		
		// 
		productDAO.setCart(ProductID, Pname, UnitPrice, 1);
	%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=greeting%></h1>
		</div>
	</div>

<!-- 	<div class="container"> -->
<!-- 		<div class="flex_wrap"> -->
<!-- 			<a href="product.jsp"><button>삭제하기</button></a>  -->
<!-- 			<a href="product.jsp" style="float: right;"><button>주문하기</button></a><hr> -->
<!-- 		    <a href="product.jsp"><button>쇼핑 계속하기</button></a> -->
<!-- 		</div> -->
<!-- 	</div> -->
	<div class="container">
		<p><a href="product.jsp"><button>삭제하기</button></a>
		   <a href="product.jsp" style="float: right;"><button>주문하기</button></a></p>
	</div>

	
	<div class="container">
		<div class="black" style="background: black; color: white; height: 500px">
			<div class="red" style="background: red; color: white;">
				<p style="width: 100px">상품
				<p style="width: 100px">가격
				<p style="width: 100px">수량
				<p style="width: 100px">소계
				<p style="width: 100px">비고
			</div>
			
			<%
				for (int i = 0; i < productDAO.getCart().size(); i++) {
			%>
					<div class="red" style="background: blue; color: white;">
						<p style="width: 100px"><%=productDAO.getCart().get(i).getCount() %>
						<p style="width: 100px"><%= productDAO.getCart().get(i).getProductID()%>
						<p style="width: 100px"><%=productDAO.getCart().get(i).getPname() %>
						<p style="width: 100px"><%=productDAO.getCart().get(i).getUnitPrice() %>
						<p style="width: 100px"><%=1 %>
					</div>
			<%
				}
			%>
			
			
			
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<div class="container">
		<p><a href="products.jsp"><button>쇼핑 계속하기</button></a></p>
	</div>
	<hr>
<!-- 	<a href="product.jsp"><button>삭제하기</button></a>  -->
<!-- 	<a href="product.jsp" style="float: right;"><button>주문하기</button></a><hr> -->
<!--     <a href="product.jsp"><button>쇼핑 계속하기</button></a> -->

	<%@ include file="footer.jsp"%>
</body>
</html>

