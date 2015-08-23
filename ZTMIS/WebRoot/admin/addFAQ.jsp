<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html:html>
<head>
	<html:base />
	<link href="/ZTMIS/css/admin.css" rel="stylesheet" type="text/css">
	<title>添加FAQ</title>
	<script type="text/javascript" src="/ZTMIS/menu/menu.js"></script>
</head>
<body>
	<div id="main">
		<div id="menu">
			<script type="text/javascript">
	mpmenu1 = new mMenu('首页', 'ZTMIS/admin/manage.jsp', 'self', '', '', '', '');

	mpmenu2 = new mMenu('课程管理', '/ZTMIS/courseAction.do?method=courseList', 'self',
			'', '', '', '');
	mpmenu2.addItem(new mMenuItem('添加课程', '/ZTMIS/course/addCourse.jsp', 'self', false, '',
			null, '', '', '', ''));
	mpmenu2.addItem(new mMenuItem('查看课程信息',
			'/ZTMIS/courseAction.do?method=courseList', 'self', false, '', null,
			'', '', '', ''));

	mpmenu3 = new mMenu('教师管理', '', 'self', '', '', '', '');
	mpmenu3.addItem(new mMenuItem('添加教师', '/ZTMIS/admin/addTeacher.jsp', 'self', false, '', null, '',
			'', '', ''));
	
	mpmenu4 = new mMenu('学生管理', 'url', 'self', '', '', '', '');

	mpmenu5 = new mMenu('FAQ管理', '/ZTMIS/faqAction.do?method=viewFaqList', 'self', '', '', '', '');
	mpmenu5.addItem(new mMenuItem('添加FAQ', 'addFAQ.jsp', 'self', false, '', null, '',
			'', '', ''));
	mpmenu5.addItem(new mMenuItem('FAQ列表', '/ZTMIS/faqAction.do?method=viewFaqList', 'self', false, '', null, '',
			'', '', ''));

	
	mpmenu6 = new mMenu('退出', '/ZTMIS/logout.do', 'self', '', '', '', '');
	
	mwritetodocument();
</script>
		</div>
		<div id="list">
			<html:form action="/admin/addFAQ">
				<table width="500" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="50" height="25">
							问题：
						</td>
						<td width="300" colspan="2" align="left">
							<html:text property="question" size="38" />
						</td>
						<td width="175">
							<html:errors property="question" />
						</td>
					</tr>
					<tr>
						<td height="100">
							回答：
						</td>
						<td colspan="2" align="left">
							<html:textarea property="answer" cols="30" rows="7" />
						</td>
						<td>
							<html:errors property="answer" />
						</td>
					</tr>
					<tr>
						<td height="25">
							&nbsp;
						</td>
						<td align="right">
							<html:submit value="提交" />
						</td>
						<td align="left">
							<html:reset value="重置" />
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>
			</html:form>
		</div>
	</div>
</body>
</html:html>

