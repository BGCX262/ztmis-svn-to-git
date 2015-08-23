<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
	String msg;
	String username = request.getParameter("searchid");

	//连接数据库

	String url="jdbc:mysql://localhost/school?user=root&useUnicode=true&characterEncoding=UTF-8";   
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection(url);
	Statement statement = connection.createStatement();

	String sql = "select * from student where name='" + username + "'";
	ResultSet rs = statement.executeQuery(sql);
	if (rs.next()) {
		msg = "很遗憾，" + username + " 已经被注册!";
	} else {
		msg = "恭喜你，" + username + " 还没被抢注!";
	}
	//out.print(msg);
	//out.close();
%>
<html>
	<script language="JavaScript">
alert("<%=msg%>
	");
	window.close();
</script>
</html>