<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
.body{
background-image:url("myimages/add.jpg");
}
.mySlides {display:none;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="background/background3.jpg">
<form id="form1" name="form1" method="post" action="home">
  <table width="100%" border="none" cellspacing="0" cellpadding="0">
    <tr>
      <td width="74"><div align="right">WatchStore</div></td>
      <td width="162"><div align="right"> 
      <input type="submit" name="home" value="Home"  style="width:30%;height:1000%" />
      </div></td>
      <td width="173"><div align="right">
      <%!int i=0; %>
        <input type="submit" name="cart" value="Cart(<%=i %>)"  style="width:30%;height:1000%" />
      </div></td>
      <td width="66"><div align="right">
        <input type="submit" name="login" value="Login" style="width:50%;height:1000%" />
      </div></td>
      <td width="72">  <div align="right">
        <input type="submit" name="register" value="Register" style="width:50%;height:1000%"/>
      </div></td>
    </tr>
  </table>
  <table width="100%" border="none" cellspacing="0" cellpadding="0">
    <tr>
    <td width="926"><div align="right"><a href="aboutUs.html">About
     Us</a></div></td>
    <td width="94"><div align="right"><a href="admin.html">Admin</a></div></td>
  </tr>
</table>
  <p>&nbsp;</p>
</form>
<form name="form2" method="post" action="">
  <table width="740" height="155" border="1">
    <tr>
      <th width="360" scope="col">ORDER SUMMARY
        <p>WATCH:
          <label for="textarea"></label>
          <textarea name="textarea" id="textarea" cols="45" rows="5"></textarea>
      </p>
      <p>&nbsp; </p></th>
      <th width="364" align="center" valign="baseline" scope="col">FREE DELIVERY DATE WILL BE 
        <label for="textfield">:</label>
      <input type="text" name="textfield" id="textfield"></th>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
<form name="form3" method="post" action="">
  <input type="submit" name="Submit" id="button" value="CONTINUE">
</form>
<p>&nbsp;</p>
</body>
</html>