<jsp:include page='header2.jsp' />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style>
.button1 {
width:120px;
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
<form id="form1" name="form1" method="post" action="successful.html">
  <table width="100%" >
    <tr>
     <%
     String s= (String)session.getAttribute("watch");
     int val=0;
     int charges=0;
     int amount=0;
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
        	     %>
 
      <td width="210"><h1>Amount Payable on Delivery:-Rs.<% out.println(amount); %></h1></td>
      <td width="402"><label for="textfield"></label></td>
  
          <%    
      }
           }catch(Exception e){e.toString();}%>
    </tr>
    <tr>
      <td height="93" colspan="2"><div align="center">
        <input type="submit" name="button" class="button1" value="Place Order" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
