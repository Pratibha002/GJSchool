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
            
	 function displayChequeDetails()
     {	
		 var paymentMode = document.getElementById("paymentMode");
		 var chequeDetails =  document.getElementById("displayChequeDetails");
		 
		 chequeDetails.style.display = paymentMode.value == "cheque" ? "block" : "none";
		
     }	 
	 
	 
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
	<hr>
		
		<form action="feesProcessing" onsubmit="return validateform()" >
		
		<input type ="hidden" name="rollNo" value="${scholarNumber}">
		
		<label> Payment Mode :</label> 
	<select name="paymentMode" id="paymentMode" onchange = "displayChequeDetails()"> 
	<option value="cash"> Cash</option>
	<option value="online"> Online</option>
	<option value="cheque"> Cheque</option>	
	</select>
		
		<div id="displayChequeDetails" style="display: none"> 
		<br> 
		<label> Bank Name </label> <input type="text" name="bankName" Placeholder="Bank Name"> 
		<label> Cheque No </label> <input type="text" name="chequeNo" Placeholder="Cheque Number"> <br> 
		<label>  Cheque Date</label> <input type="date" name="chequeDate"> 
		<label> Account Number </label> <input type="text" name="accNo" Placeholder="Account Number"> <br>
		<label>Receiver Bank</label> <input type="text" name="recBank" Placeholder="Receiver Bank Name"> <br>
		<br>
		</div>
		
		
				<label> Amount : </label> <input type ="text"  id ="amount" name="amount">
				<label> Date of Transaction : </label> <input type ="date" id ="date" name="date">
		
		 <hr>
		<label> Remark</label> <input type="text" name="remark" Placeholder="Remark"><br>
		
		
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
				<td>Payment Mode </td>
				<td> Sender Bank </td>
				<td> Cheque No</td>
				<td> Cheque Date</td>
				<td> Account Number</td>
				<td> Receiver Bank</td>
				<td> Remark</td>
			</tr>
			
			<j:forEach var="fees" items="${feesDto}">
				<tr>
					<td></td>
					<td>${stuDto.name}</td>
					<td>${stuDto.stuClass}</td>
					<td>${fees.scholarNumberOrName}</td>
					<td>${fees.amount}</td>
					<td>${fees.date}</td>
					
					<td>${fees.paymentMode}</td>
					<td>${fees.senderBankName}</td>
					<td>${fees.chequeNo}</td>
					<td>${fees.chequeDate}</td>
					<td>${fees.accNo}</td>
					<td>${fees.recBank}</td>
					<td>${fees.remark}</td>
				
				
				
				
				</tr>
			</j:forEach>
		</table>
		
		<br> 
		<a  href="studentsList">StudentList</a>

	</center>
</body>
</html>