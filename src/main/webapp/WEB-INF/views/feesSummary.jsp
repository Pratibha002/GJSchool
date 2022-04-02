<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Fees Summary</title>
</head>
<body>
<jsp:include page="../../verMenu.jsp"></jsp:include>
	<center>
		

		<h2>Fees Summary of Student</h2>

		<table border="">
			<tr>
				<td>S.No</td>
				<td>Name</td>
				<td>Class</td>
				<td>Roll-No</td>
				<td>Amount</td>
				<td>Date</td>
			</tr>

			<j:forEach var="fees" items="${feesDto}">
				<tr>
					<td></td>
					<td>${stuDto.name}</td>
					<td>${stuDto.classes}</td>
					<td>${fees.roll_no}</td>
					<td>${fees.amount}</td>
					<td>${fees.date}</td>
				</tr>
			</j:forEach>
		</table>
		
		<br> 
		<a  href="studentsList">StudentList</a>

	</center>
</body>
</html>