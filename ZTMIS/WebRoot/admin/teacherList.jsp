<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for TeacherForm form</title>
	</head>
	<body>
		<html:form action="/[ACTION_PATH]">
			password : <html:text property="password"/><html:errors property="password"/><br/>
			title : <html:text property="title"/><html:errors property="title"/><br/>
			description : <html:text property="description"/><html:errors property="description"/><br/>
			email : <html:text property="email"/><html:errors property="email"/><br/>
			name : <html:text property="name"/><html:errors property="name"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

