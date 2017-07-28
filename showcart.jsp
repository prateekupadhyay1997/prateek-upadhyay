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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CART</title>
</head>
<body background="background/background3.jpg">
<h1>
<a >CART</a>
<table width="100%" border=1>

 <td width="167" height="58"><div align="right"><img src="myimages/logo3.jpg"/></div></td>
      <td width="480"><div align="right">
        <button class="button" name="home" onclick="home();" value="home">Home</button>
      </div></td>
<%
	//String sid=request.getParameter("id");
//String ivar=request.getParameter("ivar");
//out.println("id is"+sid);
String i=null;String name=null;String price=null;String ivar=null;
    %>
    <% try{
	     Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
	     String query="select * from cart" ;
	     Statement st=conn.createStatement();
	     ResultSet rs=st.executeQuery(query);
	     while(rs.next()){
	      i=rs.getString(1);
	      name=rs.getString(2);
	      price=rs.getString(3);
	      ivar=rs.getString(4);
	      %>
	       <tr>
   <td ><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
   <td><%=rs.getString(2)%></td>
   <td>RS.<%=rs.getString(3)%></td>
   <td><input type="hidden" name="ivar" value="<%=rs.getString(4)%>"></td>
   <td><a href="home2.jsp?id=<%=rs.getString(1)%>&ivar=<%=rs.getString(4)%>">VIEW</a></td>
   <td><a href="deletecart.jsp?id=<%=rs.getString(1)%>">DELETE</a></td>
   
	     <%
	          }
               }catch(Exception e){e.toString();}
	      %>
	       <script type="text/javascript">
  function home(){
    window.location = "home.jsp";
  }
 

</script>
	      
	      </tr>
	      
</table>
</h1>	      
</body>
</html>