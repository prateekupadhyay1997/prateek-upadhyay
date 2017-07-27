<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="background/background3.jpg">

  <table width="100%">
    <tr>
      <td width="167" height="58"><div align="right"><img src="myimages/logo3.jpg"/></div></td>
      <td width="480"><div align="right">
        <button class="button" name="home" onclick="home();" value="home">Home</button>
      </div></td>
      <td width="129"><div align="right">
        <%!int i=0; %>
         <button class="button" name="cart" onclick="cart();" value="Cart(<%=i %>)">Cart</button>
      </div></td>
      <td width="150"><div align="right"> 
        <button class="button" name="login" onclick="login();" value="login">Login</button>
      </div></td>
      <td width="165"><div align="right">
        <button class="button" name="register" onclick="register();" value="Register">Register</button>
      </div></td>
    </tr>
    
  </table>
  <script type="text/javascript">
  function home(){
    window.location = "home.jsp";
  }
  function cart(){
	    window.location = "cart.jsp";
	  }
  function login(){
 window.location="login1.jsp?kid=1";
  }
  function register(){
	    window.location = "register.jsp";
	  }

</script>


</body>
</html>
