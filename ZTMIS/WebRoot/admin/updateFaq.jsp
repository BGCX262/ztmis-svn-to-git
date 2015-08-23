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
	<title>修改FAQ信息</title>

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
		<html:form action="/updateFaq" method="post">
			<input type="hidden" name="method" value="updateFaq" />
			<html:hidden property="faqId"></html:hidden>
		
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
						<td height="25">&nbsp;
							
						</td>
						<td align="right">
							<html:submit value="提交" />
						</td>
<%--						<td align="left">--%>
<%--							<html:reset value="重置" />--%>
<%--						</td>--%>
						<td>&nbsp;
							
						</td>
					</tr>
				</table>
		</html:form>
		</div>
	</div>
</body>
</html:html>