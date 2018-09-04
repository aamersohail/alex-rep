<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Employee Details</title>
</head>
<body>
	
	<h1>All Employees</h1>
	
<div class="container">
	<!-- Create a table to display all the employee records -->
	
	<table class="table table-striped">
		<thead>
			<tr> <th> Employee Id </th>  <th> Employee Name </th> <th> Designation </th> <th> Salary </th> <th> Address </th> <th> Edit </th> <th> Remove </th> </tr>
		</thead>
		<c:forEach var="allEmployee" items="${allEmployee}">
		<tbody>
			<tr> <td> ${allEmployee.employeeId} </td> <td> ${allEmployee.employeeName} </td> <td> ${allEmployee.designation} </td> <td> ${allEmployee.salary} </td> <td> ${allEmployee.address} </td> <td> <a href="edit/${allEmployee.employeeId}">Edit</a> </td>  <td> <a href="remove/${allEmployee.employeeId}">Remove</a> </td>  </tr>
		</tbody>
		</c:forEach>
	</table>
	<a href="form">Add Employee</a>
</div>
</body>
</html>