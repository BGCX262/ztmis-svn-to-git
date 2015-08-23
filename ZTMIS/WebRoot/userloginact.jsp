<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	//连接数据库

	String url="jdbc:mysql://localhost/school?user=root&useUnicode=true&characterEncoding=UTF-8";   
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection(url);
	Statement statement = connection.createStatement();

	String sql;

	String username = new String(request.getParameter("user").getBytes(
			"iso-8859-1"));
	String pass = new String(request.getParameter("password").getBytes(
			"iso-8859-1"));
	String rand = (String) session.getAttribute("rand");
	String useryz = request.getParameter("useryz");
	String usertype = request.getParameter("usertype");
	if (rand.equals(useryz))
	{
		if (usertype.equals("0"))
		{

			sql = "select * from admin where name='" + username
					+ "' and password='" + pass + "'";
			ResultSet rs = statement.executeQuery(sql);

			if (rs.next())
			{

				out.print("管理员登陆成功！");
				response.sendRedirect(basePath + "admin/manage.jsp");

			}

			else
			{
				out.print("<script>");
				out.print("alert('用户名或密码错误');");
				out.print("window.location.href='userlogin.jsp';");
				out.print("</script>");
			}
		} else
		{
			if (usertype.equals("1"))
			{
				sql = "select * from teacher where name='" + username
						+ "' and password='" + pass + "'";
				ResultSet rs = statement.executeQuery(sql);

				if (rs.next())
				{

					out.print("教员登陆成功！");

					response.sendRedirect("teacher.jsp");

				}

				else
				{
					out.print("<script>");
					out.print("alert('用户名或密码错误');");
					out.print("window.location.href='userlogin.jsp';");
					out.print("</script>");
				}
			} else
			{

				sql = "select * from student where name='" + username
						+ "' and password='" + pass + "'";
				ResultSet rs = statement.executeQuery(sql);

				if (rs.next())
				{

					out.print("学生登陆成功！");

					response.sendRedirect("student.jsp");

				}

				else
				{
					out.print("<script>");
					out.print("alert('用户名或密码错误');");
					out.print("window.location.href='userlogin.jsp';");
					out.print("</script>");
				}
			}
		}
	}

	else
	{

		out.print("<script>");
		out.print("alert('验证码输入有误!请核对!');");
		out.print("window.location.href='userlogin.jsp';");
		out.print("</script>");
	}
%>