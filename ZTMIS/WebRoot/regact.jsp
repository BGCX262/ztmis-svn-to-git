<%@ page contentType="text/html;charset=UTF-8"%>    
<%@ page import="java.sql.*"%> 
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>

<%!String regurl,msg,sign;%>
<%
request.setCharacterEncoding("UTF-8");
String msg;

String Name=new String(request.getParameter("name"));
String Password=new String(request.getParameter("password"));
String Email=new String(request.getParameter("email"));
String Gender=new String(request.getParameter("gender"));
String Phone=new String(request.getParameter("phone"));
String Dormitory=new String(request.getParameter("dormitory"));
String Major=new String(request.getParameter("major"));


//连接数据库


String url="jdbc:mysql://localhost/school?user=root&useUnicode=true&characterEncoding=UTF-8";     
Class.forName("com.mysql.jdbc.Driver").newInstance();  
Connection connection=DriverManager.getConnection(url);  
Statement stmt= connection.createStatement(); 


String sql="select * from student where name='"+Name+"'";
ResultSet rs=stmt.executeQuery(sql); 

if (rs.next()){
       
        
	out.println("<p>此用户名已存在,请选择其他的用户名!</p>");
	out.println("<A HREF=javascript:window.history.back()>[重新注册]</A>");
	out.close();     
		}
else {
   sql="insert into student(name,password,email,gender,phone,dormitory,major) ";
   sql=sql+" values('"+Name+"','"+Password+"','"+Email+"','"+Gender+"','"+Phone+"','"+Dormitory+"','"+Major+"')";
   
    stmt.executeUpdate(sql);
	
out.println("<p>注册成功</p>");

response.sendRedirect("student.jsp");
    
	}
%>
