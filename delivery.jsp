<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
 <jsp:include page='header2.jsp' />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
.button1{
width:140px;
height:65px;
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
<%
String s= (String)session.getAttribute("watch");
String mobile= (String)session.getAttribute("mobile");

int val=0;
int charges=0;
int amount=0;

//out.println("session is"+s);
%>
<form name="form2"  action="">
  <table width="1116" border="1">
    <tr>
      <th width="361" scope="col">DELIVERY ADDRESS
        <label>
          <textarea name="textarea" cols="45" rows="5" id="textarea">
          
        <% 
        out.println("session is"+s);
        try{
	     Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
	     String query="select * from client1 where mobile='"+mobile+"'";
	     Statement st=conn.createStatement();
	     ResultSet rs=st.executeQuery(query);
	   
	    	    %>
 <% while(rs.next())
 {
	    	  %>
<%=rs.getString(3) %>
<%=rs.getString(5) %><%="-"+rs.getString(6) %>
<%=rs.getString(8) %>

<%} 
        }catch(Exception e){e.toString();}
 %>

</textarea>
          <br>
          <br>
          <br>
      </label></th>
      <th width="739" scope="col">PRICE DETAILS
        <p>Price:RS.
          <label for="textfield">
          <%
          try{
     	     Class.forName("oracle.jdbc.driver.OracleDriver");
     	     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
     	     String query1="select * from watches where id='"+s+"'";
     	     Statement st1=con.createStatement();
     	     ResultSet rs1=st1.executeQuery(query1);
     	    	    
          while(rs1.next())
        	  {
        	  val=Integer.parseInt(rs1.getString(2));
        	  charges=Integer.parseInt(rs1.getString(7));
        	  amount=val+charges;
        	  out.println(val);
        	     %>
 
    
           </label>
      </p>
      <p>Delivery charges:RS.
        <label for="textfield2"><% out.println(charges); %> </label>
      </p>
      <p>Amount payable:RS.
        <label for="textfield3"><% out.println(amount); %> </label>
          <%    
      }
           }catch(Exception e){e.toString();}%>
      </p></th>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>

 <button class="button1" name="deliver" onclick="redirect();" value="Deliver Here">Deliver Here</button>
 <button class="button1" name="change" onclick="redirect1();" value="change">Change</button>
   <table width="100%">
    <tr>
    <td width="926"><div align="right"><a href="aboutus.html">About
     Us</a></div></td>
    <td width="94"><div align="right"><a href="admin.html">Admin</a></div></td>
  </tr>
</table>

<script type="text/javascript">
  function redirect(){
    window.location = "paymentmode.jsp";
  }
  function redirect1(){
    window.location = "change.jsp";
  }

</script>
</body>
</html>