<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<base href="<%=basePath%>">
	<link href="admin/css/admin.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="../menu/menu.js"></script>
	<title>FAQ列表</title>

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
			<logic:present name="faqList">
				<table border="0">
					<logic:iterate id="faqs" collection="${ faqList.pageList }"
						indexId="index">
						<tr>
							<td align="right"><%=index.intValue() + 1%>.
							</td>
							<TD align="left">
								<bean:write name="faqs" property="question" />

							</TD>
							<td align="left">
								<html:link href="faqAction.do?method=displayFaq" paramId="faqId"
									paramName="faqs" paramProperty="faqId">
							修改
						</html:link>
							</td>
							<td align="left">
								<html:link href="faqAction.do?method=deleteFaq" paramId="faqId"
									paramName="faqs" paramProperty="faqId">
							删除
						</html:link>
							</td>
						<tr>
					</logic:iterate>
				</table>
			</logic:present>
		</div>
	</div>
</body>
</html:html>
