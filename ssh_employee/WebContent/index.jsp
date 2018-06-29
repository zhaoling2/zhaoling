<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>
<link type="text/css" rel="stylesheet" href="<%=basePath %>css/reset.css">
<link type="text/css" rel="stylesheet" href="<%=basePath %>css/main.css">
</head>

<body>
	<div class="headerBar">
		<div class="logoBar login_logo">
			<div class="comWidth">

				<h3 class="welcome_title">欢迎登陆员工管理系统！</h3>
			</div>
		</div>
	</div>
	<s:form action="employee_login" method="post" namespace="/" theme="simple">
		<div class="loginBox">
			<h3>
			    <!-- 显示错误信息 -->
			    <s:actionerror />
			</h3>
			<div class="login_cont">
				<ul class="login">
					<li class="l_tit">用户名：</li>
					<li class="mb_10"><input type="text" name="username" class="login_input user_icon"></li>
					<li class="l_tit">密码：</li>
					<li class="mb_10"><input type="text" name="password" class="login_input user_icon"></li>
					<li><input type="submit" value="" class="login_btn"></li>
				</ul>
				
				<div class="login_partners">
					<p class="l_tit">使用合作方账号登陆网站</p>
					<ul class="login_list clearfix">
						<li><a href="#">QQ</a></li>
						<li><span>|</span></li>
						<li><a href="#">网易</a></li>
						<li><span>|</span></li>
						<li><a href="#">新浪微博</a></li>
						<li><span>|</span></li>
						<li><a href="#">腾讯微薄</a></li>
						<li><span>|</span></li>
						<li><a href="#">新浪微博</a></li>
						<li><span>|</span></li>
						<li><a href="#">腾讯微薄</a></li>
					</ul>
				</div>
			</div>

		</div>
	</s:form>
	<div class="hr_25"></div>
	<div class="footer">
		<p>
			<a href="#">皖西学院</a><i>|</i>
			<a href="#">皖西学院</a><i>|</i>
			<a href="#">皖西学院</a><i>|</i>
			<a href="#">皖西学院</a><i>|</i>
			客服热线：18860484144
		</p>

	</div>
</body>
</html>