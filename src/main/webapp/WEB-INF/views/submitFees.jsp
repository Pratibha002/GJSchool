<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>

		<form action="submitFeesProcessing" method="get">

			<label>Select Student : </label> <select name="roll_No">
				<j:forEach var="stu" items="${studentsList}">
					<option value="${stu.roll_no}">${stu.name}+ ${stu.classes}
					</option>
				</j:forEach>
			</select><br> <label>Amount : </label> <input name="amount" /> <Br>
			<label>Date : </label> <input name="date" placeholder="dd/mm/yyyy" />
			<Br> <input type="submit" value="submit">

		</form>

		<br>
		<h2>Fees Summary of Student</h2>

		<form action="feesSummary" method="get">

			<label>Select Student : </label> <select name="roll_No">
				<j:forEach var="stu" items="${studentsList}">
					<option value="${stu.roll_no}">${stu.name}+ ${stu.classes}
					</option>
				</j:forEach>
			</select><br> <input type="submit" value="Summary">
		</form>

		<table border="">
			<tr>
				<td>S.No</td>
				<td>Name </td>
				<td> Class</td>
				<td>Roll-No</td>
				<td>Amount</td>
				<td>Date</td>
			</tr>

			<j:forEach var="fees" items="${feesList}">
				<tr>
					<td></td>
					<td>${dto.name} </td>
					<td> ${dto.classes}</td>
					<td>${fees.roll_no}</td>
					<td>${fees.amount}</td>
					<td>${fees.date}</td>
				</tr>
			</j:forEach>
		</table>


	</center>
</body>
</html>