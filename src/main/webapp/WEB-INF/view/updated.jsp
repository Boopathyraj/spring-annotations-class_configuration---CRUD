<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Student</title>
</head>
<body>
<h1>Update Form</h1>
			<br>
		  <form method="post" action="updateStudent.do" >  
				<div class="form-group">
						<label class="col-sm-2 control-label" for="name">Email id</label>
                        <div class="col-sm-4">
                            <input type="email"  value="${list[0].email}" name="email" class="form-control" readonly >
                        </div>
                        <br/>
                        <br>
                        <label class="col-sm-2 control-label" for="name">Student Name</label>
                        <div class="col-sm-4">
                            <input type="text"  value="${list[0].name}" name="name" class="form-control" required>
                        </div>
                        <br/>
                        <br>
                        <label class="col-sm-2 control-label" for="name">Student Course</label>
                        <div class="col-sm-4">
                            <input type="text"  value="${list[0].course}" name="course" class="form-control" required>
                        </div>
                        <br/>
                        <br>
                        <label class="col-sm-2 control-label" for="name">Address</label>
                        <div class="col-sm-4">
                            <input type="text"  value="${list[0].address}" name="address" class="form-control" required>
                        </div>
                        <input type="submit" class= "btn btn-default" value="Update">
                        </div>
                        </form>
</body>
</html>