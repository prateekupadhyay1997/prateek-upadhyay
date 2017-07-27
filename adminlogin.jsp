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

  String id=request.getParameter("id");
String password=request.getParameter("password");
String mob=null;

try {
       Class.forName("oracle.jdbc.driver.OracleDriver");
   	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
   	Statement st= con.createStatement();
   	ResultSet rs= st.executeQuery("select id,password from admin where id='"+id+"' and password='"+password+"'");
      if(rs.next())
      {
    
    
   	   out.println("login successful");
   	   session.setAttribute("admin",id);
      response.sendRedirect("details.html");
     }
      else{

    	  out.println("incorrect id or password");
      }
}catch(Exception e) { System.out.println(e.toString());}

%>
</body>
</html>