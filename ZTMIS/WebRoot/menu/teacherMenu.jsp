<%@ page language="java" pageEncoding="utf-8"%>

<html>
  <head>
    <title>教师菜单</title>
    <script type="text/javascript" src="menu.js"></script>
  </head>
  
  <body>
    <script type="text/javascript">
mpmenu1=new mMenu('首页','url','self','','','','');

mpmenu2=new mMenu('我的课程','url','self','','','','');

mpmenu3=new mMenu('个人信息','url','self','','','','');
mpmenu3.addItem(new mMenuItem('查看个人信息','url','self',false,'',null,'','','',''));
mpmenu3.addItem(new mMenuItem('退出','url','self',false,'',null,'','','',''));

mwritetodocument();
</script>
  </body>
</html>
