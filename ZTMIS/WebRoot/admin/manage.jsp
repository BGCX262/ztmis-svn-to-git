<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
	<head>
		<title>管理页面</title>
		<html:base />
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
			欢迎来到管理首页，请点击上面的菜单来进行操作。
		</div>
	</body>
</html>

