 <%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Show product</title>
<style>
 
 
 
</style>

</head>
<body>
<%@ include file="header.jsp" %>
<div class="container">
<table class="table table-bordered">
    <thead>
 <tr bgcolor="gray">
	<th>Product Name</th>
	<th>Product ID</th>
	<th>Price</th>
	<th>Category</th>
	<th>Stock</th>
	<th>Photo</th>
	<th>Operation</th>
	</tr>
	</thead>

<c:forEach items="${productList}" var="product">
	<tr>
		<td>${product.productName}</td>
		<td>${product.productId}</td>
		<td>${product.price}</td>
		<td>${product.catId}</td>
		<td>${product.quantity}</td>
		<td>
	<!--  	<a href="<c:url value="productDesc/${product.productId}"/>"> -->
		<img src="<c:url value="/images/${product.productId }.jpg"/>" style="height:200px; width:60%" alt="Error on loading images"/></a>
		</td>
		<td>
			<a href="<c:url value="deleteproduct/${product.productId}"/>"><i class="fa fa-trash-o fa-3x"></i></a>
			<a href="<c:url value="updateproduct/${product.productId}"/>"><i class="fa fa-pencil-square fa-3x"></i></a>
		</td>
	<!--  	</a> -->
	</tr>
</c:forEach>
</table>
</div>
<br><br><br><br><br><br>

</body>
</html>