<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
body {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size: 24px;

</style>
<title>LOGIN PAGE</title>
</head>

<body  background="background/background3.jpg">

  <table width="100%">
    <tr>
     
      <td width="165"><div align="right">
         <button class="button" name="home" onclick="home();" value="Home">Home</button>
         <script type="text/javascript">
  function home(){
    window.location = "home.jsp";
  }

</script>
      </div></td>
   
    </tr>
    
  </table>
  <% 
String kid=request.getParameter("kid");
  out.println("value of id is:"+kid);
  session.setAttribute("hom",kid);
%>
<form  name="form1" action="login.jsp">

  <table width="700" border="1">
    <tr>
      <td width="1">&nbsp;</td>
      <td width="300">Mobile No.<input type="text" name="mobile"  /></td>
    </tr>
    <tr>
      <td height="38">&nbsp;</td>
      <td>Password
      <label for="textfield2">
        <input type="text" name="password"  />
      </label></td>
    </tr>
    <tr>
      <td><div align="center"></div></td>
      <td><div align="center">
        <input type="submit" class="button" name="login"  value="Log In" />
      </div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center"></div></td>
      <td><div align="center"><font size="5">New here?</font><a href="../../Register.html"> <font size="5">Register</font></a></div></td>
    </tr>
  </table>
</form>
</body>
</html>
