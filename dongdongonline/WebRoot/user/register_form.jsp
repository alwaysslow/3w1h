<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>用户注册 - 当当网</title>
		<link href="../css/login.css" rel="stylesheet" type="text/css" />
		<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="../common/head1.jsp"%>
		<div class="login_step">
			注册步骤:
			<span class="red_bold">1.填写信息</span> > 2.验证邮箱 > 3.注册成功
		</div>
		<div class="fill_message">
			<form name="ctl00" method="post" action="<s:url namespace="/user" action="user_register"/>" id="f">
				<h2>
					以下均为必填项
				</h2>
				<table class="tab_login" >
					<tr>
						<td valign="top" class="w1">
							请填写您的Email地址：
						</td>
						<td>
							<input name="user.user_email" type="text" id="txtEmail" class="text_input"/>
							<div class="text_left" id="emailValidMsg">
								<p>
									请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。
								</p>
									<span id="email.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							设置您在当当网的昵称：
						</td>
						<td>
							<input name="user.user_nickname" type="text" id="txtNickName" class="text_input" />
							<div class="text_left" id="nickNameValidMsg">
								<p>
									您的昵称可以由小写英文字母、中文、数字组成，
								</p>
								<p>
									长度4－20个字符，一个汉字为两个字符。
								</p>
								<span id="name.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							设置密码：
						</td>
						<td>
							<input name="user.user_password" type="password" id="txtPassword"
								class="text_input" />
							<div class="text_left" id="passwordValidMsg">
								<p>
									您的密码可以由大小写英文字母、数字组成，长度6－20位。
								</p>
								<span id="password.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							再次输入您设置的密码：
						</td>
						<td>
							<input name="password1" type="password" id="txtRepeatPass"
								class="text_input"/>
							<div class="text_left" id="repeatPassValidMsg">
							<span id="password1.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							验证码：
						</td>
						<td>
							<img class="yzm_img" id='imgVcode' src="<s:url  action="captureAction" namespace="/user"/>" />
							<input name="code" type="text" id="txtVerifyCode"
								class="yzm_input"/>
							<div class="text_left t1">
								<p class="t1">
									<span id="vcodeValidMsg">请输入图片中的四个字母。</span>
									
									<span id="number.info" style="color:red"></span>
									<a href="javascript:" onclick="document.getElementById('imgVcode').src = '<s:url namespace="/user" action="captureAction"/>?'+(new Date()).getTime()" >看不清楚？换个图片</a>
								</p>
							</div>
						</td>
					</tr>
				</table>

				<div class="login_in">

					<input id="btnClientRegister" class="button_1" name="submit"  type="submit" value="注 册"/>
				</div>
			</form>
		</div>
		<%@include file="../common/foot1.jsp"%>
	</body>
	<script type="text/javascript" src="<s:url value="/js/jquery-1.8.3.js"/>"></script>
	
	<script type="text/javascript">
		$(function () {
		    var email = false;
		    var nickname = false;
		    var password = false;
		    var repassword = false;
			$("#txtEmail").blur(function () {
				var txtEmail = $(this).val();
				if(txtEmail.indexOf("@")===-1 || txtEmail.indexOf(".com")===-1){
                    $(this).next().html("邮箱格式错误").css("color","red");
				}else {
                    $(this).next().html("√").css("color","green");
                    email = true;
				}
            });

			$("#txtNickName").blur(function () {
				var txtNickName = $(this).val();
				var length = txtNickName.length;
				if(length<4 || length>20){
                    $(this).next().html("昵称长度有误").css("color","red");
				}else {
                    $(this).next().html("√").css("color","green");
                    nickname = true;
                }
            });


			$("#txtPassword").blur(function () {
				var txtPassword = $(this).val();
				var length = txtPassword.length;
                if(txtPassword===""){
                    $(this).next().html("密码不能为空").css("color","red");
                }else  if (length<6 || length>20){
                    $(this).next().html("密码长度有误").css("color","red");
				} else {
                    $(this).next().html("√").css("color","green");
                    password = true;
                }
            });


			$("#txtRepeatPass").blur(function () {
                var txtPassword = $("#txtPassword").val();
                var txtRepeatPass =$(this).val();
                if(txtRepeatPass===""){
                    $(this).next().html("密码不能为空").css("color","red");
				}else if(txtRepeatPass!==txtPassword){
                    $(this).next().html("两次密码不一致").css("color","red");
				} else {
                    $(this).next().html("√").css("color","green");
                    repassword = true;
				}
            });

			$("#btnClientRegister").click(function () {
				if(email && nickname && password && repassword){
				    $(this).submit();
				}
				else {
				    return false;
				}
            });
        });
	</script>
</html>

