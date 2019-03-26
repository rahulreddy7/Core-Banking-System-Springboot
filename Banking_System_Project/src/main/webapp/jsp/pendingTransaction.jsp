<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Transactions</title>
        <link rel="stylesheet" href="css/cstyles.css"/>   
	</head>
	<body>
		
		<div class="content-container">
		
			<table>
				<thead>
					<tr>
						<th>Date</th>
						<th>Transaction ID</th>
						<th>Transaction Type</th>
						<th>Recipient/Sender Account Number</th>
						<th>Amount</th>
						<th>Status</th>
					</tr>
				</thead>
				
				
				    					
				    		
				    		
				<tbody>
				
				
				    <c:forEach items="${transactions}" var="transaction" varStatus="i">
				    
				    	<tr>
				    	
				    	
				    		<td>${transaction.date}</td>
				    		<td>${transaction.transactionID}</td>
				    		<td>
				    			<c:choose>
				    				<c:when test="${transaction.payee.accountNumber == accountid}">Credit</c:when>
				    				<c:otherwise>Debit</c:otherwise>
				    			</c:choose>
				    		</td>
				    		<td>
				    			<c:choose>
				    				<c:when test="${transaction.payee.accountNumber == accountid}">${transaction.payer.accountNumber}</c:when>
				    				<c:otherwise>${transaction.payee.accountNumber}</c:otherwise>
				    			</c:choose>
				    		</td>
				    		<td>
				    		<c:choose>
				    				<c:when test="${transaction.payee.accountNumber == accountid}">$ ${transaction.amount}</c:when>
				    				<c:otherwise>-$ ${transaction.amount}</c:otherwise>
				    			</c:choose>
				    		</td>
				    		<td>
				    			<c:choose>
				    				<c:when test="${transaction.approvalStatus}">Approved</c:when>
				    				<c:otherwise>Pending</c:otherwise>
				    			</c:choose>
				    		</td>
				    		<td>
				    		 <form method="post" action="/authorize" id="authorize">
				    		
				    		<input name="transaction1" id="transaction1" value="${transaction.transactionID}">
				    		
				    		
				    		<input type="submit" value="Authorize">
				    		</form>
				    		</td>
				    						    	</tr>
				    
				    </c:forEach>
				    
			    </tbody>
		    </table>
		   
		</div>
	</body>
</html>