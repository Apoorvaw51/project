<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<!-- enctype is used to upload multiple files -->
	<form method="post" action="productlist.demo" enctype="multipart/form-data">
	
	<!-- name given for the input types must be same as the class's variables (ProductList.java)-->
	
		Enter the product name <input type="text" name="productId">
		Enter your product info <input type="text" name="productName">
		Select your picture<input type="file" name="productPic">
		<button type="submit">Buy</button>
	</form>
</body>
</html>

