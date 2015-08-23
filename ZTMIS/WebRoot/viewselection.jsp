<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />

	<title>查看课程</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<div id="main">
		<div id="list"
			<table>
  <logic:iterate name="info" property="list" id="info_list">

  <tr>
      
    <td>教师名称：<bean:write name="info_list" property="tname" filter="true"/></td>

     <td>课程信息：<bean:write name="info_list" property="courseInfo" filter="true"/></td>
 
        <td>课程学费：<bean:write name="info_list" property="fee" filter="true"/></td>
 
        <td>课程描述：<bean:write name="info_list" property="description" filter="true"/></td>
        
         <td>选课人数：<bean:write name="info_list" property="count" filter="true"/></td>
    </tr>

  </logic:iterate>
  </table></div>
	</div>
</body>
</html:html>
