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
<body>
<%
	String sid=request.getParameter("id");
String ivar=request.getParameter("ivar");
out.println("id is"+sid);
String i=null;String name=null;String price=null;
    %>
    <% try{
	     Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
	     String query="select * from watches where id='"+sid+"'";
	     Statement st=conn.createStatement();
	     ResultSet rs=st.executeQuery(query);
	     while(rs.next()){
	      i=rs.getString(1);
	      name=rs.getString(3);
	      price=rs.getString(2);
	     }
    }catch(Exception e){e.toString();}
	      %>
	      <%

try{
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
	PreparedStatement pst=con.prepareStatement("insert into cart(id,price,name,ivar) values('"+i+"','"+price+"','"+name+"','"+ivar+"')");
int j=pst.executeUpdate();
if(j>0)
{
%>	
<%="successfully inserted "%>
<%response.sendRedirect("home.jsp"); 
 }%>
<% 
con.close();
}catch(Exception e){System.out.println(e.toString());}
%>
</body>
</html>