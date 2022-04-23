<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session</title>
</head>
<body>
<jsp:include page="../../verMenu.jsp"></jsp:include>
<center> 
<h2> Add Session here</h2>
 
<form:form action="addsession" method="get" modelAttribute="session">

			<label>Session Start : </label> <input type="date" name="sessionStart" placeholder="dd/mm/yyyy " />
			<Br>

		<label>Session End : </label> <input type="date" name="sessionEnd" placeholder="dd/mm/yyyy" />
			<Br>

			<input type="submit" value="Add Session">
			 
		</form:form>
		
		<br> <br>
		
		<table border="">
			<tr>
				<td>Session</td>
				<td> </td>
			</tr>
			
			<j:forEach var="session" items="${session}">
				<tr>
				<td>${session} </td>
				<td><a href="deletesession?session=${session}">Delete</a></td>
				</tr>
			</j:forEach>
			
			</table>
		
</center>
</body>
</html>