<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <jsp:include page='header2.jsp' />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
body,td,th {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 18px;
	color: #099;
}

.button1{
width:200px;
height:80px;
    background-color: #4CAF50;
    border: none;
    color: white;
    text-decoration: none;
    display: inline-block;
    font-size: 17px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>

<body background="background/background3.jpg">
  <table width="898" height="163" border="1">
    <tr>
      <th height="38" colspan="2" scope="col">CHOOSE YOUR MODE OF PAYMENT</th>
    </tr>
    <tr>
      <th width="441" align="center" scope="row">
     
       <button class="button1" name="cash" onclick="cash();" value="cash">CASH ON DELIVERY</button>
      </th>
     
    </tr>
  </table>

<form name="form3" method="post" action="">
   <table width="100%">
    <tr>
    <td width="926"><div align="right"><a href="aboutUs.html">About
     Us</a></div></td>
    <td width="94"><div align="right"><a href="admin.html">Admin</a></div></td>
  </tr>
</table>
</form>
 <script type="text/javascript">
 
  function cash(){
    window.location = "cash.jsp";
  }
 

</script>

</body>
</html>