<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body  background="background/background3.jpg">
<%
String i=(String)session.getAttribute("loginn");
if(i.equals("1"))
{
%>
 <jsp:include page='header2.jsp' />
 <%
}else{
 %>
  <jsp:include page='header.jsp' />
  <%} %>
  <table width="100%" border="1">
    <tr>
      <td width="265" height="300"><div align="right">
<%
	String sid=request.getParameter("id");
String ivar=request.getParameter("ivar");
    %>
    <%
	     Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
	     String query="select * from watches where id='"+sid+"'";
	     Statement st=conn.createStatement();
	     ResultSet rs=st.executeQuery(query);
	     String id=null;
	  
	    	 
	    		 session.setAttribute("watch",sid);
	    		String s= (String)session.getAttribute("watch");
	    	    %>
	    	    
        <img style='height: 100%; width: 100%; object-fit: contain' src="<%= ivar %>" />
      </div></td>
      <% while(rs.next()){
	    	 id=rs.getString(1); %>
      <td width="500"><label for="textarea"></label>
        <div align="left">
          <label for="textarea2"></label>
          <textarea name="features" cols="45" rows="5"  disabled="disabled" style="width:1040px;  height:500px"><%=rs.getString(4)%></textarea>
      </div></td>
      </tr>
      <%} %>
  </table>
  <table width="400">
    <tr>
      <td width="164" height="90"><label for="textfield">
       
          <button  name="cart" value="ADD TO CART" onclick="cart();" style="  color: white; font-size: 15px;  background-color: #4CAF50; height:50px; width:110px">Add To Cart</button>
      </label></td>
      <td width="201"><label for="textfield2">
          <button name="buy" value="BUY NOW" onclick="buy();" style="  color: white; font-size: 15px;  background-color: #4CAF50; height:50px; width:110px">Buy Now</button>
         <% out.println("session is"+s); %>
            </label></td>
    </tr>
  </table>
  <script type="text/javascript">
 
  function cart(){
	    window.location = "cart.jsp?id="<%=sid%>"";
	  }
  function buy(){
    window.location = "login1.jsp?kid=2";
  }

</script>
 
</body>
</html>