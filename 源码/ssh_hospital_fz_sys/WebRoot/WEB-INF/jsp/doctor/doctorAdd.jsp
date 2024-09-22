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
		<title>医生信息表单--layui后台管理模板 2.0</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/layui/css/layui.css" media="all" >
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/public.css" media="all" />
	</head>
	<body class="childrenBody">
		<form class="layui-form" action="">
		  <input type="hidden" id="did" name="did" value ="${requestScope.doctor.did}" >
		  <input type="hidden" id="uid" name="uid" value ="${requestScope.doctor.user.id}" >
		  <div class="layui-form-item">
		    <label class="layui-form-label">姓名</label>
		    <div class="layui-input-block">
		      <input type="text" id="name" value="${requestScope.doctor.name}" name="name" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input" style="width: 500px;">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">登录名</label>
		    <div class="layui-input-block">
		      <input type="text" id="username" name="username" value="${requestScope.doctor.user.username}" required  lay-verify="required" placeholder="请输入登录名" autocomplete="off" class="layui-input" style="width: 500px;">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">密码</label>
		    <div class="layui-input-block">
		      <input type="text" id="password" name="password" value="${requestScope.doctor.user.password}" required  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input" style="width: 500px;">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">职称</label>
		    <div class="layui-input-block">
		      <input type="text" id="titel" name="titel" value="${requestScope.doctor.titel}" required  lay-verify="required" placeholder="请输入职称" autocomplete="off" class="layui-input" style="width: 500px;">
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">科室</label>
			    <div class="layui-input-block">
			      <select id="subject" name="subject" lay-verify="required" lay-filter="subject">
			        <option value=""></option>
			        <option value="内科" 
			        	<c:if test="${requestScope.doctor.subject == '内科' }">selected</c:if> 
			        >内科</option>
			        <option value="牙科" 
			        	<c:if test="${requestScope.doctor.subject == '牙科' }">selected</c:if> 
			        >牙科</option>
			        <option value="外科"
			        	<c:if test="${requestScope.doctor.subject == '外科' }">selected</c:if> 
			        >外科</option>
			      </select>
			    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">性别</label>
		    <div class="layui-input-block">
			    <c:choose>
			    	<c:when test="${empty requestScope.doctor}">
				      <input type="radio" name="sex" value="男" title="男" checked>
				      <input type="radio" name="sex" value="女" title="女">
			    	</c:when>
			    	<c:otherwise>
			    		<input type="radio" name="sex" value="男" title="男" 
			    		<c:if test="${requestScope.doctor.sex eq '男'}">
			    			checked
			    		</c:if>
			    		>
				      <input type="radio" name="sex" value="女" title="女"
				      	<c:if test="${requestScope.doctor.sex eq '女'}">
			    			checked
			    		</c:if>
				      >
			    	</c:otherwise>
		    	</c:choose>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">学历</label>
		    <div class="layui-input-block">
		      <input type="text" id="education" name="education" value="${requestScope.doctor.education}" required  lay-verify="required" placeholder="请输入学历" autocomplete="off" class="layui-input" style="width: 500px;">
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit lay-filter="addDoctor">立即提交</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
		</form>
		<script type="text/javascript" src="${pageContext.request.contextPath}/res/layui/layui.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/one-js/doctorList.js"></script>
	</body>
</html>