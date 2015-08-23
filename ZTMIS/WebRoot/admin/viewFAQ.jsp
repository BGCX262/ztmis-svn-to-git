<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />
	<link href="css/admin.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="../menu/menu.js"></script>
	<title>查看FAQ</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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

	mpmenu5 = new mMenu('FAQ管理', '../faqAction.do?method=viewFaqList', 'self', '', '', '', '');
	mpmenu5.addItem(new mMenuItem('添加FAQ', 'addFAQ.jsp', 'self', false, '', null, '',
			'', '', ''));
	mpmenu5.addItem(new mMenuItem('FAQ列表', '../faqAction.do?method=viewFaqList', 'self', false, '', null, '',
			'', '', ''));

	
	mpmenu6 = new mMenu('退出', '../userlogin.jsp', 'self', '', '', '', '');
	
	mwritetodocument();
</script>
		</div>
		<div id="list">
			<table border="0">
				<logic:iterate name="faqs" property="list" id="faq_list">
					<tr>
						<td align="left">
							问：
							<bean:write name="faq_list" property="question" filter="true" />
						</td>
					</tr>
					<tr>

						<td align="left">
							答：
							<bean:write name="faq_list" property="answer" filter="true" />
						</td>
					</tr>
				</logic:iterate>
			</table>
		</div>
	</div>
</body>
</html:html>


