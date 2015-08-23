<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for LoginForm form</title>
	</head>
	<body>
		<html:form action="/login">
			username : <html:text property="username"/><html:errors property="username"/><br/>	
			password : <html:password property="password"/><html:errors property="password"/><br/>
			usertype : <html:select property="usertype">
			<option value="student" selectd>
										学生
									</option>
									<option value="teacher">
										教员
									</option>
									<option value="admin">
										管理员
									</option>
			</html:select>
			<html:errors property="usertype"/><br/>
			<html:errors property="message"/>
			<html:submit/>
		</html:form>
	</body>
</html>

