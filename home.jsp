<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
.button {
width:90px;
height:60px;
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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="background/background3.jpg">
<%
String i=(String)session.getAttribute("loginn");
if(i=="1")
{
%>
 <jsp:include page='header2.jsp' />
 <%
}else{
 %>
  <jsp:include page='header.jsp' />
  <%} %>
<form name="form1" >

  <table width="100%" >
    <tr>
      <td width="200" height="300" rowspan="2">
      <div style="width:100%;">
  <img class="mySlides" src="myimages/david-beckham.png" style='height: 100%; width: 100%; object-fit: contain'>
  <img class="mySlides" src="myimages/fastrackwatches499_add.jpg" style='height: 100%; width: 100%; object-fit: contain'>
  <img class="mySlides" src="myimages/fasttrack_add.jpg" style='height: 100%; width: 100%; object-fit: contain' >
</div>
      <script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
      
      
     
      
      
      </td>
      
	
      <td width="184" height="150">
      <a href="home2.jsp?id=1&ivar=myimages/g1.jpg">
      <img src="myimages/g1.jpg"/></a><h2>Lois Caron LC SERIES</h2><h3>RS.3000</h3></td>
      <td width="230" height="150">
      <a href="home2.jsp?id=2&ivar=myimages/g2.jpg">
      <img src="myimages/g2.jpg"/></a><h2>Titan 9477SL01j for men</h2><h3>RS.5499</h3></td>
    </tr>
    <tr>
      <td  width="230" height="150">
      <a href="home2.jsp?id=3&ivar=myimages/g3.jpg">
      <img src="myimages/g3.jpg"/></a><h2>IIK Collection </h2><h3>RS.15000</h3></td>
      <td  width="230" height="150" >
      <a href="home2.jsp?id=4&ivar=myimages/g4.jpg">
      <img src="myimages/g4.jpg"/></a><h2> Abrexo-BLK-GUCCI</h2><h3>RS.2500</h3></td>
    </tr>  
  </table>
  <table width="100%" border="none" cellspacing="0" cellpadding="0">
  <tr>
    <td width="926"><div align="right"><a href="aboutUs.html">About
     Us</a></div></td>
    <td width="94"><div align="right"><a href="adminlogin.html">Admin</a></div></td>
  </tr>
</table>
  
</form>

</body>
</html>