<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
    	.one{
			text-decoration:4em;}
		.two{
			text-decoration:2em;}
			hr{
				width:95%;
				size:2px;
				color:#DDD;
				text-align:center;}
		.BT1,.BT2{
			width:50px;
			height:30px;
			margin-left:10px;
			display:inline-block;}
		.BT3{
			margin-left:300px;}
    </style>
</head>

<body>
	<form>
	<p>上传任务数量</p>
    <p class="one">支持用户同时上传
    	<select name="number">
    		<option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option></select>个新闻内容
    </p>
    <hr>
    <p>标准检测</p>
    <p class="one">
    	<input type="checkbox">检测上传文件是否符合标准
    </p>
    <hr>
    <p>
    	<input type="checkbox">上传完成后，通知我<br />
    	<input type="checkbox">上传出错时，通知我<br/>
        <input type="checkbox">自动上传未完成的任务<br/>
        <input type="checkbox">未上传完成退出程序时，通知我<br/>
    </p>
    <hr>
    <p class="two"><a href="">恢复本页默认配置</a></p>
    <input type="submit" value="保存" class="BT1"><input type="submit" value="取消" class="BT2">
    <a href="welcomelogin.jsp"><input type="button" value="返回首页" class="BT3"></a>
	</form>
</body>
</html>
	