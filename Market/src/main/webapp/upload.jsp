<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<%@ page import="com.oreilly.servlet.*" %> 
<%@ page import="com.oreilly.servlet.multipart.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<!-- 	<img src=".\img/zzz.png"> -->
	
	<%
		request.setCharacterEncoding("UTF-8");
		String realFolder = request.getSession().getServletContext().getRealPath("D:\\김기랑\\eclipse22_workspace\\Market\\src\\main\\webapp\\img");
// 		String realFolder = request.getSession().getServletContext().getRealPath("/img");
		
		MultipartRequest multi = new MultipartRequest(request,realFolder,5*1024*1024,"utf-8",new DefaultFileRenamePolicy()); //절대경로
// 		MultipartRequest multi = new MultipartRequest(request, realFolder, 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
	
	//상품 등록했을때
		String productID = multi.getParameter("id");	// 아이폰
		String pname = multi.getParameter("pname");
		Integer unitPrice = Integer.parseInt(multi.getParameter("unitPrice"));
		String description = multi.getParameter("comment");
		String menufacturer = multi.getParameter("menufacturer");
		String category = multi.getParameter("category");
		long unitsInstock = Long.parseLong(multi.getParameter("unitsInstock"));
		String condition = multi.getParameter("condition");
		
		
		
		
		
		Enumeration files = multi.getFileNames();
		String name = (String)files.nextElement(); 
		String filename = multi.getFilesystemName(name);
		
		// 물컵.txt
		productDAO.addProduct(productID, pname, unitPrice, description, menufacturer, category, unitsInstock, condition,filename);
 		response.sendRedirect("products.jsp");	
	
	
	
	
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>