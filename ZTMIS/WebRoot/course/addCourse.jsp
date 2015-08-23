<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<html:html>
  <head>
  <html:base/>
     <title>添加课程信息</title>
     <link href="css/course.css" rel="stylesheet" type="text/css">
	 <script type="text/javascript" src="../menu/menu.js"></script>
  <html:base/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
body {
	background-color: #D9D9D9;
}
-->
</style></head>
<body>
<div id="main">
<div id="menu">
<script type="text/javascript">
mpmenu1=new mMenu('首页','../admin/manage.jsp','self','','','','');

mpmenu2=new mMenu('课程管理','../courseAction.do?method=courseList','self','','','','');
mpmenu2.addItem(new mMenuItem('添加课程','../course/addCourse.jsp','self',false,'',null,'','','',''));
mpmenu2.addItem(new mMenuItem('查看课程信息','../courseAction.do?method=courseList','self',false,'',null,'','','',''));

mpmenu3=new mMenu('教师管理','','self','','','','');
mpmenu3.addItem(new mMenuItem('添加教师','../admin/addTeacher.jsp','self',false,'',null,'','','',''));
mpmenu3.addItem(new mMenuItem('查看教师信息','url','self',false,'',null,'','','',''));

mpmenu4=new mMenu('学生管理','url','self','','','','');

mpmenu5=new mMenu('FAQ管理','../faqAction.do?method=viewFaqList','self','','','','');

mpmenu6=new mMenu('个人信息','url','self','','','','');
mpmenu6.addItem(new mMenuItem('查看个人信息','url','self',false,'',null,'','','',''));
mpmenu6.addItem(new mMenuItem('退出','url','self',false,'',null,'','','',''));

mwritetodocument();
</script>
</div>
<div id="list">
<html:form action="/addCourseAction.do">
<input type="hidden" name="method" value="addCourse"/>
<html:hidden property="teacherId" value="1"></html:hidden>
<table width="300" height="250" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" colspan="2" align="center">添加课程信息</td>
  </tr>
  <tr>
    <td width="100" height="25">课程名称：</td>
    <td width="200" align="left">
        <html:text property="courseName"></html:text>
    </td>
  </tr>
  <tr>
    <td height="25">课程收费：</td>
    <td align="left"><html:text property="fee"></html:text></td>
  </tr>
  <tr>
    <td height="25">上课时间：</td>
    <td align="left">
        <html:text property="courseTime"></html:text>
    </td>
  </tr>
  <tr>
    <td height="25">上课地点：</td>
    <td align="left"><html:text property="coursePlace"></html:text></td>
  </tr>
  <tr>
    <td>课程简介：</td>
    <td align="left">
     <html:textarea property="despretion" cols="26" rows="6"></html:textarea>
    </td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td align="right"><html:submit value="提交"></html:submit>
    <br></td>
  </tr>
</table>
</html:form>
</div>
</div>
</body>
</html:html>
