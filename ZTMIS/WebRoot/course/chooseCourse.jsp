<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dao.Course"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
 
<html> 
	<head>
		<title>JSP for ChooseCourseForm form</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link href="/ZTMIS/css/course.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="/ZTMIS/menu/menu.js"></script>
		<%request.setCharacterEncoding("utf-8"); %>
		<%!List chooseList = new java.util.Vector(); 
		List courseList;%>
	</head>
	<body>
	<div id="main">
		<div id="menu">
			<script type="text/javascript">
	mpmenu1 = new mMenu('首页', 'manage.jsp', 'self', '', '', '', '');

	mpmenu2 = new mMenu('课程管理', '../courseAction.do?method=courseList', 'self',
			'', '', '', '');
	mpmenu2.addItem(new mMenuItem('添加课程', '../course/addCourse.jsp', 'self', false, '',
			null, '', '', '', ''));
	mpmenu2.addItem(new mMenuItem('查看课程信息',
			'../courseAction.do?method=courseList', 'self', false, '', null,
			'', '', '', ''));

	mpmenu3 = new mMenu('教师管理', '', 'self', '', '', '', '');
	mpmenu3.addItem(new mMenuItem('添加教师', 'addTeacher.jsp', 'self', false, '', null, '',
			'', '', ''));
	
	mpmenu4 = new mMenu('学生管理', 'url', 'self', '', '', '', '');
	mpmenu4.addItem(new mMenuItem('选课','/ZTMIS/showCourse.do', 'self', false, '', null, '','', '', '')	);
	mpmenu4.addItem(new mMenuItem('查看已选课程','/ZTMIS/choiceCourse.do?method=choiceList', 'self', false, '', null, '','', '', '')	);

	mpmenu5 = new mMenu('FAQ管理', '../faqAction.do?method=viewFaqList', 'self', '', '', '', '');
	mpmenu5.addItem(new mMenuItem('添加FAQ', 'addFAQ.jsp', 'self', false, '', null, '',
			'', '', ''));
	mpmenu5.addItem(new mMenuItem('FAQ列表', '../faqAction.do?method=viewFaqList', 'self', false, '', null, '',
			'', '', ''));

	
	mpmenu6 = new mMenu('退出', '../userlogin.jsp', 'self', '', '', '', '');
	
	mwritetodocument();
</script>
		</div>
			欢迎来到管理首页，请点击上面的菜单来进行操作。
		
		<!-- 
		<table width="35%" border="1" align="center" cellspacing="1" cellpadding="0">
		<c:forEach items="${courseList}" var="courseList">
		<tr>
		<form method="post" action="/ZTMIS/course/chooseCourse.jsp">
		<td>
		课程名：${courseList.courseName}<input type="hidden" name="chooseCourse" value="${courseList.courseName}"/>
		</td>
		</form>
		</tr>
		
		</c:forEach>
		</table>
		 -->
		
		
		
		
	
	<table width="35%" border="1" align="center" cellspacing="1" cellpadding="0">
		<%
		if(courseList==null)
		{
			courseList =(java.util.List) (session.getAttribute("courseList"));
		}
		if(courseList!=null)
		{
			for(int i=0;i<courseList.size();i++)
			{
			%>
			<form method="post" action="/ZTMIS/course/chooseCourse.jsp">
			<tr >
				<td>课程名：</td>
				<td><%=(((Course)(courseList.get(i))).getCourseName()) %></td>
				
				<input type="hidden" name="chooseCourseIndex" value="<%=i %>"/>
				<td><input type="submit" name="submit" value="添加到预选课程" /></td>		
			</tr>
			</form>
			<%
			}
		}
		%>
		</table>
		<hr />
		<table width="35%" border="1" align="center" cellspacing="1" cellpadding="0">
		<%
		
		if((request.getParameter("chooseCourseIndex"))!=null)
		{
			int j = Integer.parseInt(request.getParameter("chooseCourseIndex"));
			if(request.getParameter("submit").equals("添加到预选课程"))
			{
				
				if(chooseList.contains(courseList.get(j)))
				{
				
				}
				else
				{
					chooseList.add(courseList.get(j));
				}
				
			}
			else if(request.getParameter("submit").equals("删除预选课程"))
			{
				if(chooseList.contains(chooseList.get(j)))
				{
					chooseList.remove(chooseList.get(j));
				}
				else
				{
					
				}
								
			}
			
		}
		
			
		if(chooseList!=null)
		{	
			for(int i=0;i<chooseList.size();i++)
			{ 
				%>
		<form method="post" action="/ZTMIS/course/chooseCourse.jsp">
		<tr >
			<td>已选课程：</td>
			<td><%=(((Course)(chooseList.get(i))).getCourseInfo()) %></td>
					<input type="hidden" name="chooseCourseIndex" value="<%=i %>"/>
			<td><input type="submit" name="submit" value="删除预选课程" /></td>
		</tr>
		</form>
				
			<%
			}
			%>
			</table>
			<table width="35%" border="1" align="center" cellspacing="1" cellpadding="0">
			<tr >
			<td>
		<form method="post" action="/ZTMIS/chooseCourse.do">
		<% 
		request.getSession().setAttribute("choice",chooseList);
		out.print("<input type=\"submit\" name=\"submit\" value=\"提交选课结果\" />");
		out.print("</form>");
		%>
			<%
		}
		else
		{
			out.print("您还没有预选课程。");
		}
		%>
		</td>
		</tr>
		</table>
		</div>
	</body>
</html>

