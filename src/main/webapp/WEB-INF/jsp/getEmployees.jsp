<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Show Employee List</title>

 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

<style>
table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	border: 1px solid #ddd;
}

th, td {
	text-align: left;
	padding: 16px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style>
</head>
<jsp:include page="menu.jsp" />
<body>
<div class="shadow-lg p-3 mb-5 bg-white rounded">

<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
	
			
<h3 style="color: green;">Employee Details...</h3>
	<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
			<c:forEach var="listValue" items="${employees}">
				<%-- <li>${listValue}</li> --%>
				<tr>
					<td>${listValue.empId}</td>
					<td>${listValue.empName}</td>
				</tr>
			</c:forEach>
	</table>
			
	
	</div>
	<div class="col-sm-2"></div>

</div>	</div>
</body>
</html>
