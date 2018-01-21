<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
<div class="container-fluid">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
<span class="sr-only">Toggle Navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<div class="collapse navbar-collapse" id="collapse-example">
<ul class="nav navbar-nav">
<c:url value="/home" var="url1"></c:url>
<li class="active"><a href="${url1}">Home <span class="sr-only">Home page</span></a></li>
<c:url value="/aboutus" var="url2"></c:url>
<li><a href="${url2}">About us</a></li>
<c:url value="/getproductform" var="url3"></c:url>
<li><a href="${url3}">Add Product</a></li>
<c:url value="/admin/getcategoryform" var="url5"></c:url>
<li><a href="${url5}">Add Category</a></li>
<c:url value="/all/product/getallproducts" var="url4"></c:url>
<li><a href="${url4}">Browse All Products</a></li>

</ul>


</div>
</div>
</nav>
</body>
</html>