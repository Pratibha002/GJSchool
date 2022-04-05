<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Classes</title>
</head>
<body>
<jsp:include page="../../verMenu.jsp"></jsp:include>
<center> 
<h2> Add Classes here</h2>
 
<form:form action="addClasses" method="get" modelAttribute="classes">

			<label>Class : </label> <input type="text" name="className" placeholder="Enter Class in Roman Number" />
			<Br>
			<input type="submit" value="Add Class">
			 
		</form:form>
		
		<br> <br>
		
		
		<table border="">
			<tr>
				<td>Classes</td>
				<Td> </Td>
			</tr>
			
			<j:forEach var="classes" items="${classes}">
				<tr>
				<td> </td>
					<td>${classes}</td>
					<td><a href="deleteclasses?classes=${classes}">Delete</a></td>
				</tr>
			</j:forEach>
			
			</table>
</center>
</body>
</html>