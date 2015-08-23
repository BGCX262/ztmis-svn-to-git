<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
	<head>
		<title>添加教员</title>
		<link href="css/admin.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../menu/menu.js"></script>
	</head>
	<body>
		<div id="main">
			<div id="menu">
				<script type="text/javascript">
	mpmenu1 = new mMenu('首页', 'manage.jsp', 'self', '', '', '', '');

	mpmenu2 = new mMenu('课程管理', '../courseAction.do?method=courseList', 'self',
			'', '', '', '');
	mpmenu2.addItem(new mMenuItem('添加课程', '../course/addCourse.jsp', 'self',
			false, '', null, '', '', '', ''));
	mpmenu2.addItem(new mMenuItem('查看课程信息',
			'../courseAction.do?method=courseList', 'self', false, '', null,
			'', '', '', ''));

	mpmenu3 = new mMenu('教师管理', '', 'self', '', '', '', '');
	mpmenu3.addItem(new mMenuItem('添加教师', 'addTeacher.jsp', 'self', false, '',
			null, '', '', '', ''));

	mpmenu4 = new mMenu('学生管理', 'url', 'self', '', '', '', '');

	mpmenu5 = new mMenu('FAQ管理', '../faqAction.do?method=viewFaqList', 'self',
			'', '', '', '');
	mpmenu5.addItem(new mMenuItem('添加FAQ', 'addFAQ.jsp', 'self', false, '',
			null, '', '', '', ''));
	mpmenu5.addItem(new mMenuItem('FAQ列表',
			'../faqAction.do?method=viewFaqList', 'self', false, '', null, '',
			'', '', ''));

	mpmenu6 = new mMenu('退出', '../userlogin.jsp', 'self', '', '', '', '');

	mwritetodocument();
</script>
			</div>
			<div id="list">
				<html:form action="/addTeacher" method="post">
					<table width="500" height="250" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="25" colspan="4" align="center">
								添加教员信息
							</td>
							<td height="25" colspan="4" align="center">
							</td>
						</tr>
						<tr>
							<td width="100" height="25">
								教员姓名：
							</td>
							<td width="200" colspan="2" align="left">
								<html:text size="26" property="name" />
							</td>
							<td width="200" align="left">
								<html:errors property="name" />
							</td>
						</tr>
						<tr>
							<td height="25">
								教员密码：
							</td>
							<td colspan="2" align="left">
								<html:text size="26" property="password" value="123456" />
							</td>
							<td align="left">
								<html:errors property="password" />
							</td>
						</tr>
						<tr>
							<td height="25">
								教员邮箱：
							</td>
							<td colspan="2" align="left">
								<html:text size="26" property="email" />
							</td>
							<td align="left">
								<html:errors property="email" />
							</td>
						</tr>
						<tr>
							<td height="25">
								教员职称：
							</td>
							<td colspan="2" align="left">
								<html:text size="26" property="title" />
							</td>
							<td align="left">
								<html:errors property="title" />
							</td>
						</tr>
						<tr>
							<td>
								教员简介：
							</td>
							<td colspan="2" align="left">
								<html:textarea cols="22" rows="6" property="description" />
							</td>
							<td align="left">
								<html:errors property="description" />
							</td>
						</tr>
						<tr>
							<td height="25">
								&nbsp;

							</td>
							<td align="right">
								<html:submit value="提交"></html:submit>
							</td>
							<td align="left">
								<html:reset value="重置"></html:reset>
								&nbsp;
							</td>
							<td align="left">
							</td>
						</tr>
					</table>
				</html:form>
	</body>
	</div>
	</div>
</html>

password :
<br />
title :
<br />
description :
<br />
email :
<br />

<html:submit />
<html:cancel />