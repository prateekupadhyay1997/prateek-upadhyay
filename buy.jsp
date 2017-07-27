<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="form1" method="post" action="">
  <table width="1002" height="156" border="1">
    <tr>
      <th width="460" height="36" scope="col">DELIVERY ADDRESS</th>
      <th width="526" scope="col">PRICE RATE </th>
    </tr>
    <tr>
      <th align="left" scope="row">ADDRESS:
        <label>
          <textarea name="textarea" id="textarea" cols="45" rows="5"></textarea>
      </label></th>
      <td><table width="200" border="1">
        <tr>
          <th scope="col">PRICE :</th>
          <th scope="col"><label>
            <input type="text" name="textfield" id="textfield">
          </label></th>
        </tr>
        <tr>
          <th scope="row">DELIVERY ADDRESS:</th>
          <td><label>
            <input type="text" name="textfield2" id="textfield2">
          </label></td>
        </tr>
        <tr>
          <th scope="row">AMOUNT PAYABLE:</th>
          <td><label>
            <input type="text" name="textfield3" id="textfield3">
          </label></td>
        </tr>
      </table></td>
    </tr>
  </table>
  <p>
    <input type="submit" name="button" id="button" value="DELIVER HERE">
    <input type="submit" name="button2" id="button2" value="CHANGE">
  </p>
</form>
<p>&nbsp;</p>

</body>
</html>