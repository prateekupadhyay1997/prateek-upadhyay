<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String mobile= (String)session.getAttribute("mobile");
String address=request.getParameter("address");
String city=request.getParameter("city");
String pincode=request.getParameter("pincode");
String state=request.getParameter("state");
System.out.println(address+city+pincode+state+mobile);
try{
	   Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
	     PreparedStatement pst=conn.prepareStatement("update client1 set address='"+address+"',city='"+city+"',pincode='"+pincode+"',state='"+state+"' where mobile='"+mobile+"'");	
	     int i=pst.executeUpdate();
	if(i>0) {
		%><%=" Successfully inserted"%>
<%
response.sendRedirect("delivery.jsp");
	}
	else{out.println("unable to update");}
} catch(Exception e){
		System.out.println(e.toString());
	} %>
</body>
</html>