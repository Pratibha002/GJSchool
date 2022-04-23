<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Fees Summary</title>
	 <script type="text/javascript">
            function validateform()
            {
            	
            	var regex1 = /^[0-9]+$/ ;

            	var isValid1 = regex1.test(document.getElementById("amount").value);
                
            	var amount = document.getElementById("amount");
            	var date = document.getElementById("date");
            
            	
            	if (!isValid1){
            		alert("Please Enter amount in Numbers"); 
                	isValid=false;
            	};
            	
            	 if(date.value.length<=0) {   alert("Please provide valid Date!");
                 isValid = false;
             }
            	
            	
                return isValid;
            };

            
        </script>


</head>
<body>
<jsp:include page="../../verMenu.jsp"></jsp:include>
	<center>
		
		
		
		<form action="feesProcessing" onsubmit="return validateform()" >
			<hr>
		
		<input type ="hidden" name="rollNo" value="${scholarNumber}">
		<label> Amount : </label> <input type ="text"  id ="amount" name="amount">
		<br> 
				<label> Date : </label> <input type ="date" id ="date" name="date">
		<br> 
		<input type ="submit" value ="submit Fees">
		</form>
		
		
		
		

		<h2>Fees Summary of Student</h2>

		<table border="">
			<tr>
				<td>S.No</td>
				<td>Name</td>
				<td>Class</td>
				<td>Scholar Number</td>
				<td>Amount</td>
				<td>Date</td>
			</tr>
			Aman
 
 
			<j:forEach var="fees" items="${feesDto}">
				<tr>
					<td></td>
					<td>${stuDto.name}</td>
					<td>${stuDto.stuClass}</td>
					<td>${fees.scholarNumberOrName}</td>
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