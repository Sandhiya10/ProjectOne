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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Category</title>

<style> 
input[type=submit] {
    background-color: 	#40E0D0;
    border: none;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
input[type=text] {
    
    padding: 12px 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #99ff99;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}

input[type=text]:focus {
    border: 3px solid #ff66b3;
}

</style>

</head>
<body>
<%@ include file='header.jsp' %>
<!-- <form action="AddCategory" method="post">-->

<form:form action="AddCategory"  commandName="category">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2"><h1>Category Module</h1></td>
	</tr>
	
	<tr>
		<td>Category ID</td>
		 <td><form:input path="catId" type="hidden" /></td>
	</tr>
	<tr>
		<td>Category Name</td>
		 <td><form:input path="catName" /></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		 <td><form:input path="catDesc" required="required"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Insert"/></center>
						
		</td>
	</tr>

</table>
</form:form>

<div class="container">
<table class="table table-bordered">
    <thead>
    <tr bgcolor="#ffcccc">
	<th>Category ID</th>
	<th>Category Name</th>
	<th>Category Description</th>
	<th>Operation</th>
</tr>
</thead>
<c:forEach items="${categoryList}" var="category">
	<tr bgcolor="#cce0ff">
		<td>${category.catId}</td>
		<td>${category.catName}</td>
		<td>${category.catDesc}</td>
		<td>
			<a href="<c:url value="deleteCategory/${category.catId}"/>"><i class="fa fa-trash-o fa-3x"></i></a>
			<a href="<c:url value="updateCategory/${category.catId}"/>"><i class="fa fa-pencil-square fa-3x"></i></a>
		</td>
	</tr>
</c:forEach>

</table>
 </div>
 <br><br><br><br><br><br>

</body>
</html>