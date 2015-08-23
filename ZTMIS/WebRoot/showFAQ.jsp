<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />
	<link href="style.css" rel="stylesheet" type="text/css">
	<title>查看FAQ</title>

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
		<div id="list">
			<table border="0">
				<logic:iterate name="faqList" property="list" id="faq_list">
					<tr>
						<td align="left">
							问：
							<bean:write name="faq_list" property="question" filter="true" />
						</td>
					</tr>
					<tr>

						<td align="left">
							答：
							<bean:write name="faq_list" property="answer" filter="true" />
						</td>
					</tr>
				</logic:iterate>
			</table>
		</div>
	</div>
</body>
</html:html>


