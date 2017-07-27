<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<jsp:include page='header2.jsp' />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>

.button1{
width:140px;
height:65px;
    background-color: #4CAF50;
    border: none;
    color: white;
    text-decoration: none;
    display: inline-block;
    font-size: 17px;
    margin: 4px 2px;
    cursor: pointer;
}
.body{
background-image:url("myimages/add.jpg");
}
.mySlides {display:none;}
body,td,th {
	font-family: Verdana, Geneva, sans-serif;
	color: #000;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insert title here</title>
</head>
<body background="background/background3.jpg">
<form id="form1" name="form1" method="post" action="update.jsp">
  
  <p>ADDRESS:
    <label for="textarea"></label>
    <textarea name="address" id="textarea" cols="45" rows="5"></textarea>
    <label for="textfield"></label>
  </p>
  <p> CITY:
    <label for="textfield"></label>
    <input type="text" name="city">
  </p>
  <p>PINCODE:
    <label for="textfield2"></label>
    <input type="text" name="pincode" >
  .</p>
   <p>STATE:
    <label for="textfield2"></label>
    <input type="text" name="state" >
  .</p>
  <p>&nbsp;</p>
 <input type="submit" class="button1" name="Submit" value="CHANGE">
</form>
<p>&nbsp;</p>
</body>
</html>