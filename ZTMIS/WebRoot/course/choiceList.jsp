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
	mpmenu4.addItem(new mMenuItem('查看已选课程','/ZTMIS/courseAction.do?method=choiceList', 'self', false, '', null, '','', '', '')	);

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
		

		<table width="35%" border="1" align="center" cellspacing="1" cellpadding="0">
		<tr>
		<td>
		已经选择的课程有：
		</td>
		</tr>
		<c:forEach items="${choiceList}" var="choiceList">
		<tr>
		<form method="post" action="/ZTMIS/course/chooseCourse.jsp">
		<td>
		课程名：${choiceList.courseName}
		</td>
		</form>
		</tr>
		
		</c:forEach>
		</table>

		
		
		</div>
		</body>
		</html>