<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>用户注册</title>
		<link href="style.css" rel="stylesheet" type="text/css">
	</head>

	<script language="javascript">
<!--
	function check(form)
	{
   
    if (form.name.value=="")
    	{
    		alert("请填写用户名！");
    		form.name.focus();
    		return false;
  	}
  if (form.name.value.length<3||form.name.value.length>8)
   {
     alert("用户名长度只能是3-8位。");
     form.name.focus();
     form.name.select();
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
     alert("密码长度只能是3-16位。");
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
				<form name="form1" method="post" action="regact.jsp"
					onsubmit="return check(this)" style="MARGIN-TOP: 0px">
					<table width=98% border=0 align=center cellpadding=2 cellspacing=1
						bgcolor="#A4B6D7">
						<tr>
							<td width=750 height=25 background="../images/bbs_bg1.gif">
								<div align="center">
									<font color=#ff0000><strong>注册前请先阅读以下协议并填写以下注册信息<span
											class=S><font color=#ff0000>(*</font><font
												color=#ff6600>的为必填项)</font>
										</span> </strong>
									</font>
								</div>
							</td>
						</tr>
					</table>
					<table width=98% height="492" border=0 align=center cellpadding=2
						cellspacing=1 bgcolor="#A4B6D7">
						<tbody>
							<tr>
								<td width=750 height=20 valign=top bgcolor="#F2F8FF">
									<div align="center">

										<table width="93%" cellspacing="1" cellpadding="2"
											align="center" border="0" bordercolor="#FFFFFF">
											<tr>
												<td align="left" olspan="2" bordercolor="#000000" height="30">
													欢迎您加入本站点参加交流和讨论，本站点为公共论坛，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：
													、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息：
													<br>
													（一）煽动抗拒、破坏宪法和法律、行政法规实施的；
													<br>
													（二）煽动颠覆国家政权，推翻社会主义制度的；
													<br>
													（三）煽动分裂国家、破坏国家统一的；
													<br>
													（四）煽动民族仇恨、民族歧视，破坏民族团结的；
													<br>
													（五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；
													<br>
													（六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；
													<br>
													（七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；
													<br>
													（八）损害国家机关信誉的；
													<br>
													（九）其他违反宪法和法律行政法规的；
													<br>
													（十）进行商业广告行为的。
													<br>
													二、互相尊重，对自己的言论和行为负责。											  </td>
											</tr>
										</table>

										<table width="93%" border="0" align="center" cellspacing="1"
											cellpadding="2" height="290">
											<tr>
												<td colspan="2" height="9">
													<hr size="1">
												</td>
											</tr>

											<tr>
												<td width="20%" height="20" align="right" bgcolor="#F2F8FF">
													<div align="right">
														用户名：
													</div>
											  </td>
												<td width="80%" height="20" align="left">
													&nbsp;
													<input type="text" name="name" size="20">
													<font color="#FFFFFF"> <input type="Button"
															value="检测用户名是否存在" onClick="chkuser();" class="button"
															name="Button"> <script language="JavaScript">
  <!--
  function chkuser()
  {
  var uname;
  uname=form1.name.value;
	if (uname=="") 
	{
		alert("您还没有输入用户名！");
		form1.name.focus();
		return false;
	}
	else
	{
	window.open("checkusername.jsp?searchid=" + uname ,"","width=2,height=2,top=1000,left=5000");
	}
  }
  //-->
</script> </font><font color="#CC0000">* 
											</tr>
											<tr>
												<td width="20%" height="20" align="right" bgcolor="#F2F8FF">
													<div align="right">
														密 码：
													</div>
											  </td>
												<td width="80%" height="20" align="left">
													&nbsp;
													<input type="password" name="password" size="20">
													<font color="#CC0000">*（请填写3-16位密码）</font>
											  </td>
											</tr>
											<tr>
												<td width="20%" height="20" align="right" bgcolor="#F2F8FF">
													<div align="right">
														密码确认：
													</div>
											  </td>
												<td width="80%" height="20" align="left">
													&nbsp;
													<input type="password" name="pwdsub" size="20">
													<font color="#CC0000">*（请填写3-16位密码）</font>
											  </td>
											</tr>
											<tr>
												<td width="20%" height="20" align="right" bgcolor="#F2F8FF">
													<div align="right">
														电子邮件：
													</div>
											  </td>
												<td width="80%" height="20" align="left">
													&nbsp;
													<input type="text" name="email" id="email" size="20">
													<font color="#CC0000">*（按xxx@xxx.xxx格式填写你的电子邮件）</font>
											  </td>
											</tr>
											<tr>
												<td width="20%" height="20" align="right" bgcolor="#F2F8FF">
													<div align="right">
														手机号码：
													</div>
											  </td>
												<td width="80%" height="20" align="left">
													&nbsp;
													<input type="text" name="phone" id="phone" size="20">
													<font color="#CC0000">*（请填写你的手机号）</font>
											  </td>
											</tr>
											<tr>
												<td width="20%" height="20" align="right" bgcolor="#F2F8FF">
													<div align="right">
														性别：
													</div>
											  </td>
												<td width="80%" height="20" align="left">
													&nbsp;
													<select name="gender" id="gender">
														<option value="男" selectd>
															男
														</option>
														<option value="女">
															女
														</option>
													</select>
											  </td>
											</tr>
											<tr>
												<td width="20%" height="20" align="right" bgcolor="#F2F8FF">
													<div align="right">
														所学专业：
													</div>
											  </td>
												<td width="80%" height="20" align="left">
													&nbsp;
													<input type="text" name="major" id="major" size="20">
													<font color="#CC0000">*（请填写你的专业）</font>
											  </td>
											</tr>
											<tr>
												<td width="20%" height="20" align="right" bgcolor="#F2F8FF">
													<div align="right">
														是否住宿：
													</div>
											  </td>
												<td width="80%" height="20" align="left">
													&nbsp;
													<select name="dormitory" id="dormitory">
														<option value="是" selectd>
															是
														</option>
														<option value="否">
															否
														</option>
													</select>
													</font>
											  </td>
											</tr>

											<tr>
												<td height="20" align="right">
													<div align="center"></div>
											  </td>
												<td height="30" align="left">
													<input type="submit" name="Submit2" value="注册">
													<input type="reset" name="Submit2" value="重填">
											  </td>
											</tr>
									  </table>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</FORM>
			</div>
		</div>
	</body>
</html>
