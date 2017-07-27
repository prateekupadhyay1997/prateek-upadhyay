<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page='header2.jsp' />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="background/background3.jpg">
<h1>Pay Using Cash-On-Delivery </h1>
<form id="form1" name="form1" method="post" action="">
  <table width="100%" border="1">
    <tr>
      <td width="210">Amount Payable on Delivery:-Rs.</td>
      <td width="402"><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
    <tr>
      <td height="93" colspan="2"><div align="center">
        <input type="submit" name="button" id="button" value="Place Order" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>