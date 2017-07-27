<%@page language="java"%>
<%@page import="java.sql.*"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Admin Registration</title>
</head>

<body>
<%

   String id=request.getParameter("id");
   String name=request.getParameter("name");
   String password=request.getParameter("password");
  
 System.out.println(name+password);
   try{
	   Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
	PreparedStatement pst=conn.prepareStatement("insert into admin(id,name,password) values('"+id+"','"+name+"','"+password+"')");
	int i=pst.executeUpdate();
	if(i>0) {
		%><%=" Successfully inserted"%>
		
	<% }
	//pst.executeUpdate("update employee set emp_name='"+name+"',emp_add='"+address+"',emp_phn="+contact+" where emp_id='"+ide+"'");
    }
    catch(Exception e){
		System.out.println(e.toString());
	}
%>
</body>
</html>
