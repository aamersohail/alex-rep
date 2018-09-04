<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Employee Form</title>
<style type="text/css">
	input[type=text],  input[type=submit]{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}



</style>

</head>

<body style="background-color:#C14CF3;">
	<h1 align="center">Edit Employee Record</h1>
	<div class="container" align="center">
		<form:form class="form-horizontal" method="POST" action="/AlexSolutions/edit-save-employee">

			<table>
				<tr>
					<td></td>
					<td><form:hidden path="employeeId" /></td>
				</tr>
				<tr>
					<td>Employee Name :</td>
					<td><form:input path="employeeName" /></td>
				</tr>
				<tr>
					<td>Designation :</td>
					<td><form:input path="designation" /></td>
				</tr>
				<tr>
					<td>Salary :</td>
					<td><form:input path="salary" /></td>
				</tr>
				<tr>
					<td>Address :</td>
					<td><form:input path="address" /></td>
				</tr>


				<tr>
					<td></td>
					<td><input type="submit" value="Edit Save" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>
