<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>REGISTER PAGE</title>
</head>
<body>
<div class="container">
<form:form action="register" method="post" commandName="user">
    <div class="form-group">
    <label><b>FirstName</b></label>
    <form:input type="text" path="firstname" class="form-control" required="true"/><br>
  	<br><label><b>LastName</b></label>
    <form:input type="text" path="lastname" class="form-control" required="true"/> <br>
    
    <br><label><b>UserName</b></label>
    <form:input type="text" path="username" class="form-control" required="true"/><br>
   
     <br><label><b>Password</b></label>
    <form:input type="password" path="password" class="form-control" required="true"/> <br>
    
    <br><label><b>Address</b></label> 
    <form:input type="text" path="address" class="form-control" required="true"/><br>
    
     <br><label><b>Email-Id</b></label>
    <form:input type="email" path="email" class="form-control" required="true"/><br>
   
     <input type="submit" class="btn btn-default" value="Submit"/>
    </div>
  </form:form>
 </div>
</body>
</html>