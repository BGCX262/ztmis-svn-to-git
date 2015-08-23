<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>修改密码</title>
		<link href="style.css" rel="stylesheet" type="text/css">
	</head>
	<script language="javascript">
<!--
	function check(form)
	{
    if (form.username.value=="")
    	{
    		alert("请填写用户名！");
    		form.username.focus();
    		return false;
  	    }
  
    if (form.password.value=="")
    	{
    		alert("请填写密码！");
    		form.password.focus();
    		return false;
  	}
  if (form.password.value.length<3||form.password.value.length>8)
   {
     alert("密码长度只能是3-8位。");
     form.password.focus();
     form.password.select();
     return false;
   } 
    if (form.pwdsub.value=="")
    	{
    		alert("请填写确认密码！");
    		form.pwdsub.focus();
    		return false;
  	}
    if (form.pwdsub.value!=form.password.value)
    	{
    		alert("密码和密码确认不一致！");
    		form.pwdsub.focus();
    		return false;
  	}
    
return true;
	}
//-->
</script>
	<body>
		<div id="main">
			<div id="list">
				<form name="form1" method="post" action="moduseract.jsp"
					onsubmit="return check(this)">
					<table width="99%" border="0" align="center" bgcolor="#A4B6D7"
						cellspacing="1" cellpadding="2">
						<tr background="../images/bbs_bg1.gif">
							<td height="25" colspan="2">
								<div align="center">
									修改密码
								</div>
							</td>
						</tr>

						<tr>
							<td width="23%" height="23" align="right" bgcolor="#F8F8F8">
								<div align="right">
									用户名：
								</div>
						  </td>
							<td width="77%" align="left" bgcolor="#F8F8F8">
								&nbsp;
								<input name="username" type="text" id="username" value=""
									size="20" maxlength="10">
								<font color="#CC0000">*<font color="#000000">您注册时填写的用户名</font>
								</font>
						  </td>
						</tr>
						<tr>
							<td width="23%" height="23" align="right" bgcolor="#F8F8F8">
								<div align="right">
									原始密码：
								</div>
						  </td>
							<td width="77%" align="left" bgcolor="#F8F8F8">
								&nbsp;
								<input type="bpassword" name="bpassword" size="20" maxlength="8"
									value="">
								<font color="#CC0000">*（3至16位）</font>
						  </td>
						</tr>
						<tr>
							<td width="23%" height="23" align="right" bgcolor="#F8F8F8">
								<div align="right">
									密 码：
								</div>
						  </td>
							<td width="77%" align="left" bgcolor="#F8F8F8">
								&nbsp;
								<input type="password" name="password" size="20" maxlength="8"
									value="">
								<font color="#CC0000">*（3至16位）</font>
						  </td>
						</tr>

						<tr>
							<td width="23%" height="23" align="right" bgcolor="#F8F8F8">
								<div align="right">
									密码确认：
								</div>
						  </td>
							<td width="77%" align="left" bgcolor="#F8F8F8">
								&nbsp;
								<input type="password" name="pwdsub" size="20" maxlength="8"
									value="">
								<font color="#CC0000">*</font>
						  </td>
						</tr>


						<tr>
							<td height="35" colspan="2" bgcolor="#F8F8F8">
								<div align="center">
									<INPUT TYPE="hidden" name="url" value="">
									<input type="submit" name="Submit" value="修改">
								</div>
							</td>
						</tr>
				  </table>
				</form>
			</div>
		</div>
	</body>
</html>
