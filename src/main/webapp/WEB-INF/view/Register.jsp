<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Registration Page</title>
</head>
<body>
<!-- <div class="container" >
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<div class="box"> -->
<h3 Style="text-align:left;">Register Form</h3>
        
               <br>
               <form method="post" action="addStudent.do" >  
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="name">Student Name</label>
                        <div class="col-sm-4">
                            <input type="text" placeholder="Enter Name"  class="form-control" name="name" required>
                        </div>
                        <br/>
                        <br>
                        <label class="col-sm-2 control-label" for="course">Course</label>
                        <div class="col-sm-4">
                            <input type="text" placeholder="Student course"  class="form-control" name="course" required>
                        </div>
                        <br/>
                        <br>
                        <label class="col-sm-2 control-label" for="address">Address</label>
                        <div class="col-sm-4">
                            <input type="text" placeholder="Enter your Address"  class="form-control" name="address" required>
                        </div><br/>
                        <br>
                        <label class="col-sm-2 control-label" for="email">EmailID</label>
                        <div class="col-sm-4">
                                <input type="email" placeholder="Enter your email id"  class="form-control" name="email" required>
                                <br>
                                 <input type="submit" class= "btn btn-default" value="Submit">
                                  <!-- <button type="button" class="btn btn-default" id="del">del</button> -->
                        </div>
                    </div>

</form> 
</body>
</html>