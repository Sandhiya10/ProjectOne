<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<b>Details about the Product</b>
<table>
<tr>
<td>Product Name:</td><td> ${product.productName}</td>
</tr>
<tr>
<td>Price:</td><td> ${product.price}</td>
</tr>
<tr>
<td>Description:</td><td> ${product.description}</td>
</tr>
<tr>
<td>Quantity:</td><td> ${product.quantity}</td>
</tr>
</table>
<c:url value="/all/product/getallproducts" var="url1"></c:url>
<a href="${url1 }" > Back to product list</a><br>

</body>
</html>