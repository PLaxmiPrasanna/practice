<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
	
 	.container{ 
		width: 100%;
		
	}
	.container th {
		background-color: #412252;	
		opacity: 0.8;
   color:white;		
	}
	.container table {
		position: absolute;
		top: 15%;
		left: 30%;
		background-color: #ced2cc;
border-style:none;		
	}
	.container tr {
		background-color: #ced2cc;
		color: black;
	}
	.viewPolicy {
			width: 590px;
			height: 590px;
			background: none;
			color: green;
			top: 290px;
			left: 293px;
			position: absolute;
			transform: translate(-50%, -50%);
		}
		.header {
			background-color: black;
			width:327%;
			height: 17%;
		}
		.header a {
			float:left;
			color: white;
			background-color: rgba(117, 149, 199, 0.1);
			cursor: pointer;
			text-align: right;
			padding: 35px 40px;
			text-decoration: none;
			font-size: 25px;
			top:250px;
			left:100px;
		}
		.header-right {
			float: right;
			left: 110px;
		}

		.header a:hover {
			background-color: #ccc;
			color: black;
			
		} 
		.table {
			height: 70px;
			width: 900px; 
			text-align:center;
			font-family:"Times New Roman";
				
		}
		
</style>

</head>
<body>
	<div class="viewPolicy">
		<div class="header">
			<a href="#default" class="logo">CompanyLogo</a>
			<div class="header-right">
				<a class="active" href="adminhome.html">back</a>
				<a class="active" href="adminhome.html">Logout</a>
			</div> 
		</div>
	</div>
	<div class = "container">
	
	
	<table class = "table" cellpadding="20px" border="0px">
		<th>Policy Number
		<th>Policy Premium
		<th>Account Number
		<th>
		<c:forEach items="${policies}" var="policy">
			<tr class = "tr">
				<td><c:out value="${policy.policyNumber}" /><br>
				<td><c:out value="${policy.policyPremium}" /><br>
				<td><c:out value="${policy.accNumber }" /><br>
				<td><a href="ReportGenerationServlet?accNumber=${policy.accNumber}&polNumber=${policy.policyNumber}">View Policy</a>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>