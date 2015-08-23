<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>

<html:html lang="true">
<head>
  <html:base />
	<title>课程详情</title>
	<link href="css/course.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="../menu/menu.js"></script>
  <html:base/>
</head>

<body>
<div id="main">
  <div id="menu">
    <script type="text/javascript">
mpmenu1=new mMenu('首页','url','self','','','','');

mpmenu2=new mMenu('课程管理','../courseAction.do?method=courseList','self','','','','');
mpmenu2.addItem(new mMenuItem('添加课程','addCourse.jsp','self',false,'',null,'','','',''));
mpmenu2.addItem(new mMenuItem('查看课程信息','../courseAction.do?method=courseList','self',false,'',null,'','','',''));

mpmenu3=new mMenu('教师管理','','self','','','','');
mpmenu3.addItem(new mMenuItem('添加教师','url','self',false,'',null,'','','',''));
mpmenu3.addItem(new mMenuItem('查看教师信息','url','self',false,'',null,'','','',''));

mpmenu4=new mMenu('学生管理','url','self','','','','');

mpmenu5=new mMenu('FAQ管理','url','self','','','','');

mpmenu6=new mMenu('个人信息','url','self','','','','');
mpmenu6.addItem(new mMenuItem('查看个人信息','url','self',false,'',null,'','','',''));
mpmenu6.addItem(new mMenuItem('退出','url','self',false,'',null,'','','',''));

mwritetodocument();
</script>
  </div>
  <div id="list">
<table>
		<tr>
			<td align="left">
				课程名称
				<bean:write name="course" property="courseName" filter="true" />
			</td>
		</tr>
		<tr>
			<td align="left">
				课程简介
				<bean:write name="course" property="courseInfo" filter="true" />
			</td>
		</tr>
		<tr>
			<td align="left">
				费用
				<bean:write name="course" property="fee" filter="true" />
			</td>
		</tr>
				<tr>

			<td align="left">
			时间
				<bean:write name="course" property="courseTime" filter="true" />
			</td>
		</tr>
		<tr>

			<td align="left">
			地点
				<bean:write name="course" property="coursePlace" filter="true" />
			</td>
		</tr>
		<tr>
			<td align="left">
				当前选课人数
				<bean:write name="counter" property="count" filter="true" />
			</td>
		</tr>
	</table>
	</div>
</div>
	
</body>
</html:html>
