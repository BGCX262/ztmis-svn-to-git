<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" errorPage="errorinfo.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>


<%
	String sql;
	String bpassword = new String(request.getParameter("bpassword")
			.getBytes("iso-8859-1"));
	String password = new String(request.getParameter("password")
			.getBytes("iso-8859-1"));
	String name = new String(request.getParameter("username").getBytes(
			"iso-8859-1"));

	//连接数据库

	String url = "jdbc:mysql://localhost/school?user=root&useUnicode=true&characterEncoding=UTF-8";
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection(url);
	Statement stmt = connection.createStatement();

	sql = "select * from student where name='" + name
			+ "' and password='" + bpassword + "'";
	ResultSet rs = stmt.executeQuery(sql);

	if (rs.next())
	{

		sql = "update student set password='" + password
				+ "'where name='" + name + "'";
		stmt.executeUpdate(sql);
		out.print("<script>");
		out.print("alert('恭喜你，修改个人密码成功!');");

	} else
	{
		out.print("<script>");
		out.print("alert('输入的用户名或原始密码错误');");
		out.print("window.location.href='modpsw.jsp';");
		out.print("</script>");
	}

	out.print("window.location.href='student.jsp';");
	out.print("</script>");
%>