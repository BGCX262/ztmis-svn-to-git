<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<html:html>
<head>
	<html:base />
	<title>课程列表</title>
	<link href="/ZTMIS/css/course.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/ZTMIS/menu/menu.js"></script>
	<html:base />
	<style type="text/css">
<!--
body {
	background-color: #D9D9D9;
}

.STYLE1 {
	font-size: 12px
}
-->
</style>
</head>
<body>
	<div id="main">
	<div id="menu">
    <script type="text/javascript">
mpmenu1=new mMenu('首页','admin/manage.jsp','self','','','','');

mpmenu2=new mMenu('课程管理','courseAction.do?method=courseList','self','','','','');
mpmenu2.addItem(new mMenuItem('添加课程','course/addCourse.jsp','self',false,'',null,'','','',''));
mpmenu2.addItem(new mMenuItem('查看课程信息','courseAction.do?method=courseList','self',false,'',null,'','','',''));

mpmenu3=new mMenu('教师管理','','self','','','','');
mpmenu3.addItem(new mMenuItem('添加教师','admin/addTeacher.jsp','self',false,'',null,'','','',''));

mpmenu4 = new mMenu('学生管理', 'url', 'self', '', '', '', '');
mpmenu4.addItem(new mMenuItem('选课','/ZTMIS/showCourse.do', 'self', false, '', null, '','', '', '')	);
mpmenu4.addItem(new mMenuItem('查看已选课程','/ZTMIS/courseAction.do?method=choiceList', 'self', false, '', null, '','', '', '')	);

mpmenu5=new mMenu('FAQ管理','faqAction.do?method=viewFaqList','self','','','','');
mpmenu5.addItem(new mMenuItem('添加FAQ','admin/addFAQ.jsp','self',false,'',null,'','','',''));
mpmenu5.addItem(new mMenuItem('FAQ列表','faqAction.do?method=viewFaqList','self',false,'',null,'','','',''));


mpmenu6=new mMenu('个人信息','url','self','','','','');
mpmenu6.addItem(new mMenuItem('查看个人信息','url','self',false,'',null,'','','',''));
mpmenu6.addItem(new mMenuItem('退出','userlogin.jsp','self',false,'',null,'','','',''));

mwritetodocument();
</script>
</div>
	
		<div id="list">
			<logic:present name="courseList">
				<table width="600" height="125" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td colspan="8" align="center">
							课程列表
						</td>
					</tr>
					<tr>
						<td width="30" bgcolor="#DBDBDB">
							<span class="STYLE1">序号</span>
						</td>
						<td width="120" bgcolor="#DBDBDB">
							<span class="STYLE1">课程名称</span>
						</td>
						<td width="60" bgcolor="#DBDBDB">
							<span class="STYLE1">课程费用</span>
						</td>
						<td width="180" bgcolor="#DBDBDB">
							<span class="STYLE1">时间</span>
						</td>
						<td width="50" bgcolor="#DBDBDB">
							<span class="STYLE1">地点</span>
						</td>
						<td width="100" bgcolor="#DBDBDB">
							<span class="STYLE1">课程简介</span>
						</td>
						<td colspan="2" bgcolor="#DBDBDB">
							<span class="STYLE1">操作</span>
						</td>
					</tr>
					<logic:iterate id="courses" collection="${ courseList.pageList }"
						indexId="index">
						<%
							int x = index.intValue() + 1;
										if (x % 2 == 1)
										{
						%>
						<tr>
							<td><%=x%></td>
							<td>
								<bean:write name="courses" property="courseName" />
							</td>
							<td>
								<bean:write name="courses" property="fee" />
							</td>
							<td>
								<bean:write name="courses" property="courseTime" />
							</td>
							<td>
								<bean:write name="courses" property="coursePlace" />
							</td>
							<td>
								<bean:write name="courses" property="courseInfo" />
							</td>
							<td width="30">
								<span class="STYLE1"> <html:link
										href="/ZTMIS/courseDetail.do?method=viewCourse"
										paramId="courseId" paramName="courses"
										paramProperty="courseId">详情</html:link> </span>
							</td>
							<td width="30">
								<span class="STYLE1"> <html:link
										href="/ZTMIS/displayCourse.do?method=displayCourse"
										paramId="courseId" paramName="courses"
										paramProperty="courseId">修改</html:link> </span>
							</td>
							<td width="30">
								<span class="STYLE1"> <html:link
										href="/ZTMIS/deleteCourse.do?method=deleteCourse"
										paramId="courseId" paramName="courses"
										paramProperty="courseId">删除</html:link> </span>
							</td>

						</tr>
						<%
							} else
										{
						%>
						<tr>
							<td bgcolor="#DBDBDB"><%=x%></td>
							<td bgcolor="#DBDBDB">
								<bean:write name="courses" property="courseName" />
							</td>
							<td bgcolor="#DBDBDB">
								<bean:write name="courses" property="fee" />
							</td>
							<td bgcolor="#DBDBDB">
								<bean:write name="courses" property="courseTime" />
							</td>
							<td bgcolor="#DBDBDB">
								<bean:write name="courses" property="coursePlace" />
							</td>
							<td bgcolor="#DBDBDB">
								<bean:write name="courses" property="courseInfo" />
							</td>
							<td width="30" bgcolor="#DBDBDB">
								<span class="STYLE1"> <html:link
										href="/ZTMIS/courseAction.do?method=viewCourse"
										paramId="courseId" paramName="courses"
										paramProperty="courseId">详情</html:link> </span>
							</td>
							<td width="30" bgcolor="#DBDBDB">
								<span class="STYLE1"> <html:link
										href="/ZTMIS/displayCourse.do?method=displayCourse"
										paramId="courseId" paramName="courses"
										paramProperty="courseId">修改</html:link> </span>
							</td>
							<td width="30" bgcolor="#DBDBDB">
								<span class="STYLE1"> <html:link
										href="/ZTMIS/deleteCourse.do?method=deleteCourse"
										paramId="courseId" paramName="courses"
										paramProperty="courseId">删除</html:link> </span>
							</td>
						</tr>
						<%
							}
						%>
					</logic:iterate>
					<tr>
						<td colspan="8" align="right">
							<html:link href="/ZTMIS/courseAction.do?method=firstPage">[首页]</html:link>
							<logic:notMatch name="courseList" property="firstPage"
								value="true">
								<html:link href="/ZTMIS/courseAction.do?method=previousPage">[上一页]</html:link>
							</logic:notMatch>
							<logic:notMatch name="courseList" property="lastPage"
								value="true">
								<html:link href="/ZTMIS/courseAction.do?method=nextPage">[下一页]</html:link>
							</logic:notMatch>
							<html:link href="/ZTMIS/courseAction.do?method=lastPage">[尾页]</html:link>
							总共${ courseList.pageCount }页,当前第${ courseList.page+1 }页
						</td>
					</tr>
				</table>
			</logic:present>
		</div>
	</div>
</body>
</html:html>

