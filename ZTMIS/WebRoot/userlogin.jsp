<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="style.css" rel="stylesheet" type="text/css">
		<title>用户登录</title>
	</head>
	<script language="javascript">
<!--
	function check(form)
	{
    if (form.bbsuser.value=="")
    	{
    		alert("请填写用户名!);
    		form.bbsuser.focus();
    		return false;
  	}
    if (form.password.value=="")
    	{
    		alert("请填写密码!");
    		form.password.focus();
    		return false;
  	}
    if (form.useryz.value=="")
    	{
    		alert("请输入验证码!);
    		form.useryz.focus();
    		return false;
  	}
return true;
	}
//-->
</script>
	<body leftmargin="8" topmargin="0">
		<div id="main">
			<div id="list">
				<FORM METHOD=POST ACTION="userloginact.jsp"
					onsubmit="return check(this)">
					<br>
					<table width="35%" border="0" align="center" bgcolor="#333333"
						cellspacing="1" cellpadding="0">
						<tr bgcolor="#9999cc">
							<td colspan="2" height="25">
								<div align="center">
									<font color="#FFFFFF">用户登录，请先输入用户名和密码</font>
								</div>
							</td>
						</tr>

						<tr bgcolor="#F8F8F8" height=25>
							<TD width="80" nowrap>
								<div align="right">
									用户名：
								</div>
							</TD>
							<TD align="left" nowrap>
								&nbsp;
								<INPUT TYPE="text" NAME="user" class="input" size="15">
							</TD>
						</TR>
						<tr bgcolor="#F8F8F8" height=25>
							<TD width="80" nowrap>
								<div align="right">
									密码：
								</div>
							</TD>
							<TD align="left" nowrap>
								&nbsp;
								<INPUT TYPE="password" NAME="password" class="input" size="15">
							</TD>
						</TR>
						<tr bgcolor="#F8F8F8" height=25>
							<TD width="80" height="25" nowrap>
								<div align="right">
									验证码：
								</div>
							</TD>
							<TD align="left" nowrap>
								&nbsp;
								<INPUT NAME="useryz" TYPE="text" class="input" id="useryz"
									size="4">
								<img src="image.jsp" border=0 align="absmiddle">
							</TD>
						</TR>
						<tr  bgcolor="#F8F8F8">
							<td width="80" height="20" nowrap>
								<div align="right">
									登陆类型：
								</div>
							</td>
							<td width="80%" height="20" align="left" nowrap>
								&nbsp;
								<select name="usertype" id="usertype">
									<option value="2" selectd>
										学生
									</option>
									<option value="1">
										教员
									</option>
									<option value="0">
										管理员
									</option>
								</select>
								</font>
							</td>
						</tr>
						<tr bgcolor="#F8F8F8" align=center>
							<TD colspan=2 height="30">
								<input type="hidden" name="act" value="y">
								<INPUT TYPE="submit" value="登录" name="" class="button">
								<A HREF="register.jsp"><FONT COLOR="blue">[注册新用户]</FONT> </A>
							</TD>
						</TR>
					</TABLE>
				</FORM>
			</div>
		</div>
	</body>
</html>
