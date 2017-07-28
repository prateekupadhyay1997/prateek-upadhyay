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
 <table>
<%
	String sid=request.getParameter("id");
	try{
	     Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection conn=DriverManager.getConnection("jdbc:oracle:thin://@localhost:1521:XE","system","system");
	     String query="delete * from cart where  id='"+sid+"'";
	     Statement st=conn.createStatement();
	     ResultSet rs=st.executeQuery(query);
	     response.sendRedirect("showcart.jsp");
	     while(rs.next()){
	     %>
	     <tr>
	     <td><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
	     <td><input type="text" name="name" value="<%=rs.getString(2)%>"></td>
	     <td><input type="text" name="price" value="<%=rs.getString(3)%>"></td>
	     <td><input type="text" name="ivar" value="<%=rs.getString(4)%>"></td>
	     
	     </tr>
	     <tr>
	     <td><input type="submit" name="submit" value="Update" style="background-color:#49743;font-weight:bold;color:#ffffff;">
	     </td>
	     
	     </tr>
	     <%
	     }
	     }
	     catch(Exception e){}
	     %>
	     </table>
</body>
</html>