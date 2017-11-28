<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div>
<br>
<br>
<form action="deleteStudent.do" Method="post">

<div class="form-group">
                        <label class="col-sm-2 control-label" for="name">Student Name</label>
                        <div class="col-sm-4">
                            <input type="text" placeholder="Enter Name"  class="form-control" name="name" required>
                        </div>
<button type="submit" class="btn btn-info" >Delete</button>
</div>
</form>

</div>

</body>
</html>