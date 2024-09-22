<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title>登录</title>
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/res/layui/css/layui.css"
			media="all">
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/res/font-awesome-4.7.0/css/font-awesome.css" />
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/res/css/one-css/login.css"
			media="all" />
	</head>

	<body class="beg-login-bg">
		<div class="beg-login-box">
			<header>
			<h1>医院分诊系统登录</h1>
			</header>
			<div class="beg-login-main">
				<form action="/manage/login" class="layui-form" method="post">
					<input name="__RequestVerificationToken" type="hidden"
						value="fkfh8D89BFqTdrE2iiSdG_L781RSRtdWOH411poVUWhxzA5MzI8es07g6KPYQh9Log-xf84pIR2RIAEkOokZL3Ee3UKmX0Jc8bW8jOdhqo81" />
					<div class="avatar">
						<img
							src="${pageContext.request.contextPath}/res/images/login/admin.png"
							width="100px" alt="">
					</div>
					<div class="layui-form-item">
						<label class="beg-login-icon"> <i class="layui-icon">&#xe612;</i>
						</label> <input type="text" id ="username" name="userName" lay-verify="userName"
							autocomplete="off" placeholder="这里输入登录名" class="layui-input">
					</div>
					<div class="layui-form-item">
						<label class="beg-login-icon"> <i class="layui-icon">&#xe642;</i>
						</label> <input type="password" id = "password" name="password" lay-verify="password"
							autocomplete="off" placeholder="这里输入密码" class="layui-input">
					</div>
					<div class="layui-form-item">
						<!--<div class="beg-pull-left beg-login-remember">
								<label>记住帐号？</label>
								<input type="checkbox" name="rememberMe" value="true" lay-skin="switch" checked title="记住帐号">
							</div>-->
						<div class="beg-pull-right">
							<button class="layui-btn " lay-submit lay-filter="login">
								<i class="layui-icon">&#xe609;</i> 登录
							</button>
							<a class="layui-btn register"> <i class="layui-icon">&#xe61f;</i>患者注册</a>
						</div>
						<div class="beg-clear"></div>
					</div>
				</form>
			</div>
			<footer>
			<p>分诊管理系统</p>
			</footer>
		</div>
		<script
			src="${pageContext.request.contextPath}/res/layui_menu/layui.js"></script>
		<script>
			layui.use([ 'layer', 'form' ], function() {
				var layer = layui.layer, $ = layui.jquery, form = layui.form();
	
				form.on('submit(login)', function(data) {
					$.ajax({
						type : "POST",
						async: false,
						url : "${pageContext.request.contextPath}/user/doLogin.do",
						data : {
							username : $("#username").val(),
							password : $("#password").val()
						},
						contentType: "application/x-www-form-urlencoded; charset=utf-8", 
						dataType : "json",
						success : function(data) {
							if(data.path != undefined){
								layer.alert("点击确定跳转", {
									icon: 1,
									title: "登录成功"
								},function(){
									window.location.href="${pageContext.request.contextPath}/showIndex.do";
								});
							}
							if(data.error != undefined){
								var msg = ""; 
								if(data.error == "1"){
									msg = "用户名不存在";
									
								}else if(data.error == "2"){
									msg = "用户名与密码不匹配";
								
								}
								layer.alert(msg, {
									icon: 5,
									title: "登录失败"
								});
							}
						}
					});
					
					return false;
				});
	
				$(".register").click(function() {
					var index = layer.open({
						title : "患者注册",
						type : 2,
						area : [ "700px", "600px" ],
						content : "showRegist.do",
						success : function(layero, index) {
						}
					});
					//layui.layer.full(index);//全屏
				});
			});
		</script>
	</body>

</html>