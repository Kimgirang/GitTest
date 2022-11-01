<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%! String greeting = "상품목록";
		String tagline = "Welcome to Web Market!";
	%>
	
	<div class="jumbotron">
		<div class = "container">
			<h1 class = "display-3">
				<%= greeting %>	
			</h1>
		</div>
	</div>
	
	
</body>
</html>