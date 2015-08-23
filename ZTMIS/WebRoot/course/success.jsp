<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html:html>
<head>
<html:base/>
<title>操作成功</title>
<link href="/ZTMIS/css/course.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/ZTMIS/menu/menu.js"></script>
<html:base/>
<style type="text/css">
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
mpmenu1=new mMenu('首页','url','self','','','','');

mpmenu2=new mMenu('课程管理','../courseAction.do?method=courseList','self','','','','');
mpmenu2.addItem(new mMenuItem('添加课程','addCourse.jsp','self',false,'',null,'','','',''));
mpmenu2.addItem(new mMenuItem('查看课程信息','../courseAction.do?method=courseList','self',false,'',null,'','','',''));

mpmenu3=new mMenu('教师管理','','self','','','','');
mpmenu3.addItem(new mMenuItem('添加教师','url','self',false,'',null,'','','',''));
mpmenu3.addItem(new mMenuItem('查看教师信息','url','self',false,'',null,'','','',''));

mpmenu4 = new mMenu('学生管理', 'url', 'self', '', '', '', '');
mpmenu4.addItem(new mMenuItem('选课','/ZTMIS/showCourse.do', 'self', false, '', null, '','', '', '')	);
mpmenu4.addItem(new mMenuItem('查看已选课程','/ZTMIS/courseAction.do?method=choiceList', 'self', false, '', null, '','', '', '')	);

mpmenu5=new mMenu('FAQ管理','url','self','','','','');

mpmenu6=new mMenu('个人信息','url','self','','','','');
mpmenu6.addItem(new mMenuItem('查看个人信息','url','self',false,'',null,'','','',''));
mpmenu6.addItem(new mMenuItem('退出','url','self',false,'',null,'','','',''));

mwritetodocument();
</script>
</div>
<div id="list">
<P>操作成功！</P>
<p><html:link href="/ZTMIS/courseAction.do?method=courseList" >返回</html:link></p>
</div></div>
</BODY>
</html:html>
