<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>CRUD</title>
</head>
<body>
<div class="container" >
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<div class="box">
<h3>Menu</h3>
<hr>
<button onclick="location.href ='Register.do';" id="myButton" class="btn btn-info">Add Student</button>
<button onclick="location.href ='display.do';" id="myButton" class="btn btn-info">View Student</button>
 <button onclick="location.href ='deletepage.do';" id="myButton" class="btn btn-info">Delete</button>
<button onclick="location.href ='updatepage.do';" id="myButton" class="btn btn-info">Update</button>
 

<br><br>
<h4 Style="text-align:left;color:black">${Status}</h4>

</div>
</div>
<div class="col-sm-3"></div>
</div>
</div>
</body>
</html>