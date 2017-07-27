<%@page language="java"%>
<%@page import="java.sql.*"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%

   String email=request.getParameter("email");
   String name=request.getParameter("name");
   String mobile=request.getParameter("mobile");
   String address=request.getParameter("address");
   String city=request.getParameter("city");
   String pincode=request.getParameter("pincode");
   String password=request.getParameter("password");
   String state=request.getParameter("state");
 System.out.println(email+name+mobile+address+city+pincode+password);
   try{
	   Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
	PreparedStatement pst=conn.prepareStatement("insert into client1(name,mobile,address,email,city,pincode,password,state) values('"+name+"','"+mobile+"','"+address+"','"+email+"','"+city+"','"+pincode+"','"+password+"','"+state+"')");
	int i=pst.executeUpdate();
	if(i>0) {
		%><%=" Successfully inserted"%>
		
	<% }
	//pst.executeUpdate("update employee set emp_name='"+name+"',emp_add='"+address+"',emp_phn="+contact+" where emp_id='"+ide+"'");
	response.sendRedirect("login1.html");
    }
    catch(Exception e){
		System.out.println(e.toString());
	}
%>
</body>
</html>
