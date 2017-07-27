<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
   
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String z= (String)session.getAttribute("hom");
  String mobile=request.getParameter("mobile");
String password=request.getParameter("password");
String mob=null;

try {
       Class.forName("oracle.jdbc.driver.OracleDriver");
   	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
   	Statement st= con.createStatement();
   	ResultSet rs= st.executeQuery("select mobile,password from client1 where mobile='"+mobile+"' and password='"+password+"'");
      if(rs.next()) {
    	  mob=rs.getString(1);
    	  out.println("value of z is:"+z); 
    	  String a=z;
   	   out.println("login successful");
   	 session.setAttribute("mobile",mobile);
	 String i="1";
	  z= (String)session.getAttribute("hom");
 	 session.setAttribute("loginn",i);
     if(a.equals("1")){
    	 response.sendRedirect("home.jsp");
     }
     else{
     response.sendRedirect("delivery.jsp");}
   	  %>
   	 
     <%  }
      else{

    	  out.println("incorrect username or password");
      }
}catch(Exception e) {}





%>
</body>
</html>