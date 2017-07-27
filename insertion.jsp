 <%@page import="java.sql.*"%>
    <%@page import="java.io.PrintWriter"%>
        <%@page import="java.io.IOException"%>
   <%@include file="details.html" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String url="jdbc:oracle:thin://@localhost:1521:XE";
String driver="oracle.jdbc.driver.OracleDriver";
String userName="system";
String password="123";
%>
<%
String id=request.getParameter("id");
String price=request.getParameter("price");
String name=request.getParameter("name");
String features=request.getParameter("features"); 
String seller=request.getParameter("seller");
String charges=request.getParameter("charges");
String category=request.getParameter("category"); 
try{
   Class.forName(driver);
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","prateek","prateek");
	PreparedStatement pst=con.prepareStatement("insert into watches(id,price,name,features,seller,category,charges) values('"+id+"','"+price+"','"+name+"','"+features+"','"+seller+"','"+category+"','"+charges+"')");
int i=pst.executeUpdate();
if(i>0)
{
%>	
<%="successfully inserted "%>
<% 
 }%>
<% 
con.close();
}catch(Exception e){System.out.println(e);}
%>

</body>
</html>