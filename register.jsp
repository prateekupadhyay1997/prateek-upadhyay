<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
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
th {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 30px;
	color: #099;
}
body {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 24px;

}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body  background="background/background3.jpg">
<form id="form1" name="form1" method="post" action="home.jsp">
  <table width="100%">
    <tr>
     
      <td width="165"><div align="right">
        <input type="submit" class="button" name="home" value="Home" />
      </div></td>
    </tr>
  </table>
</form>
<form  name="form1"  action="registration.jsp">
  <table width="421" border="1">
    <tr>
      <th height="38" colspan="2" scope="col">CREATE ACCOUNT</th>
      <td width="299"><div align="center"></div></td>
    </tr>
    <tr>
      <td height="36"><div align="center">Your Name</div></td>
      <td><div align="center">
        <label for="textfield"></label>
        <input type="text" name="name" />
      </div></td>
    </tr>
    <tr>
      <td height="49"><div align="center">Mobile No.</div></td>
      <td><label for="textfield2"></label>
        <div align="center">
          <input type="text" name="mobile" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">Address</div></td>
      <td><label for="textarea"></label>
        <div align="center">
          <textarea name="address" cols="45" rows="5"></textarea>
      </div></td>
    </tr>
    <tr>
      <td height="49"><div align="center">Email Id(optional)</div></td>
      <td><label for="textfield3"></label>
        <div align="center">
          <input type="text" name="email" />
      </div></td>
    </tr>
    <tr>
      <td height="49" align="center">City</td>
      <td><label>
        <select name="city">
          <option>kolkata</option>
          <option>Chinsurah</option>
          <option>Delhi</option>
          <option>Howrah</option>
          <option>Mumbai</option>
          <option>Bangalore</option>
          <option>Gazipur</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td height="49" align="center"><div align="center">Pincode</div></td>
      <td><label>
        <div align="center">
          <input type="text" name="pincode" />
        </div>
      </label></td>
    </tr>
     <tr>
       <td height="35"><div align="center">State</div></td>
       <td> <label for="select"></label>
         <div align="left">
           <select name="state" >
             <option>West Bengal</option>
             <option>Delhi</option>
             <option>Rajasthan</option>
             <option>Kerala</option>
             <option>Uttar Pradesh</option>
             <option>Bihar</option>
           </select>
       </div></td>
     </tr>
     <tr>
      <td height="35"><div align="center">Password</div></td>
      <td><label for="textfield4"></label>
        <div align="center">
          <input type="text" name="password">
      </div></td>
    </tr>
    <tr>
      <td height="35"><div align="center"></div></td>
      <td><div align="center">
        <input type="submit" class="button" name="register" value="Register" />
      </div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Already have an account?<a href="login.html">Log in</a></td>
    </tr>
  </table>
</form>
</body>
</html>