<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Employee Form</title>
</head>

<body>
	<h1 align="center">Add New Employee</h1>
	<div class="container">
		<form class="form-horizontal" action="add-employee" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="emplyeeName">Employee Name:</label>
				<div class="col-sm-10">
        			<input type="text" class="form-control" id="emplyeeName" placeholder="Enter Name" name="emplyeeName">
      			</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="designation"> Designation: </label>
				<div class="col-sm-10">
        			<input type="text" class="form-control" id="designation" placeholder="Enter Designation" name="designation">
      			</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="salary"> Salary: </label>
				<div class="col-sm-10">
        			<input type="text" class="form-control" id="salary" placeholder="Enter Salary" name="salary">
      			</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="address"> Address: </label>
				<div class="col-sm-10">
        			<input type="text" class="form-control" id="address" placeholder="Enter Address" name="address">
      			</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="address"> Address: </label>
				<div class="col-sm-10">
        			<input type="text" class="form-control" id="address" placeholder="Enter Address" name="address">
      			</div>
			</div>
			<div class="form-group">        
      			<div class="col-sm-offset-2 col-sm-10">
        			<button type="submit" class="btn btn-default">Submit</button>
      			</div>
    		</div>
			
		</form>
	</div>
</body>

</html>

