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
		

	</center>
</body>
</html>