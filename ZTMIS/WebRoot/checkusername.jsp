<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
	String msg;
	String username = request.getParameter("searchid");

	//�������ݿ�

	String url="jdbc:mysql://localhost/school?user=root&useUnicode=true&characterEncoding=UTF-8";   
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection(url);
	Statement statement = connection.createStatement();

	String sql = "select * from student where name='" + username + "'";
	ResultSet rs = statement.executeQuery(sql);
	if (rs.next()) {
		msg = "���ź���" + username + " �Ѿ���ע��!";
	} else {
		msg = "��ϲ�㣬" + username + " ��û����ע!";
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