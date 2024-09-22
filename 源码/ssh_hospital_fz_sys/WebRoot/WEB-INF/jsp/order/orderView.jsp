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
	<title>预约表单--layui后台管理模板 2.0</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/layui/css/layui.css" media="all" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/public.css" media="all" />
	<style>
		
	</style>
</head>
<body class="childrenBody">
<form class="layui-form" action="">
  <div class="layui-form-item">
    <label class="layui-form-label">医生姓名</label>
    <div class="layui-input-block">
      <input type="text" name="did" value="${requestScope.appointMent.doctor.name }" required  lay-verify="required" placeholder="请输入医生姓名" autocomplete="off" class="layui-input" style="width: 500px;">
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">患者姓名</label>
    <div class="layui-input-block">
      <input type="text" name="pid" value="${requestScope.appointMent.patient.name }" required  lay-verify="required" placeholder="请输入患者姓名" autocomplete="off" class="layui-input" style="width: 500px;">
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">情况简述</label>
    <div class="layui-input-block">
      <textarea name="desc" placeholder="请输入情况简述" class="layui-textarea">${requestScope.appointMent.description }</textarea>
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">生效日期</label>
    <div class="layui-input-block">
     <input type="text" name="did" value="${requestScope.appointMent.effectDate }" value="9-10" required  lay-verify="required" placeholder="请输入生效日期" autocomplete="off" class="layui-input" style="width: 500px;">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
    	<c:if test="${requestScope.appointMent.flag == 1}">
	      	<a href="${pageContext.request.contextPath}/confirmOrder.do?aid=${requestScope.appointMent.aid}" class="layui-btn" >接诊</a>
    	</c:if>
    	<c:if test="${requestScope.appointMent.flag == 2}">
	     	<a class="layui-btn layui-btn-disabled">已接诊</a>
    	</c:if>
    	<c:if test="${requestScope.appointMent.flag == 3}">
      		<a class="layui-btn  layui-btn-danger" style="cursor:not-allowed;" >已失效</a>
      	</c:if>
    </div>
   </div>
</form>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/layui/layui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/one-js/orderSeeList.js"></script>
	<script>
	layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#test1' //指定元素
	  });
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#test2' //指定元素
	  });
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#test3' //指定元素
	  });
	});
	
	</script>
</body>
</html>