 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%--   <link href="<c:url value="/webapp/WEB-INF/resources/css/ListStyle.css" />" rel="stylesheet" type="text/css" >
 --%>
 <style type="text/css">
body{
margin-right:10px;
}
.box
{
    background-color: transparent;
    width: 380px;
    border-bottom:1px solid white;
    padding: 3px;
    position: absolute;
    margin-top:40px;
 }
h2{
color:black;}
hr{
boder-style:double;}
table {
    border-collapse: collapse;
    width: 130%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
tr:nth-child(odd){background-color: #FAE5D3}
th {
    background-color: #4CAF50;
    color: white;
}</style>
  </head>

<body>

<h2 >Student Details</h2>

<div class="container" >
<div class="row">
<div class="col-xs-1"></div>
<div class="col-xs-10">
<div class="box">
<hr>

<div align="center">
<table border="1" cellpadding="5">
<tr>
<th>Name</th>
<th>Course</th>
<th>Address</th>
<th>EMail id</th>
</tr>
<c:forEach var="Student" items="${list}"  >
<tr>
<td><c:out value="${Student.name}"/></td>
<td><c:out value="${Student.course}"/></td>
<td><c:out value="${Student.address}"/></td>
<td><c:out value="${Student.email}"/></td></tr></c:forEach></table></div>
<br>
</div>
</div>
<div class="col-xs-1"></div>
</div>
</div>
</body>
</html>