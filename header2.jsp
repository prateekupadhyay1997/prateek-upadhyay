<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
  <table width="100%">
    <tr>
      <td width="167" height="58"><div align="left"><img src="myimages/logo3.jpg"/></div></td>
      <td width="204"><div align="right">
          <button class="button" name="home" onclick="home();" value="home">Home</button>
      </div></td>
      <td width="233"><div align="right">
         <%!int i=0; %>
           <button class="button" name="cart" onclick="cart();" value="cart(<%=i %>)">Cart</button>
      </div></td>
      <td width="222"><div align="right">
          <button class="button" name="logout" onclick="logout();" value="logout">Logout</button>
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
  function logout(){
    window.location = "logout.html";
  }
</script>

  
</body>
</html>
