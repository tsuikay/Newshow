<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>联系我们</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
			*{font-family:"宋体";
			font-size:15px;}
			form{
				width:600px;
				height:600px;
				margin:0 auto;
				position:relative;}
			.one{
				width:400px;
				height:200px;}
			.two{
				width:300px;
				height:100px;}
				.last_input{width:100px;
				height:30px;
				background:#78A5CD;
				border-radius:6px;
				margin-left:400px;}
	</style>
</head>

<body>
<form action="WeContacusServlet" method="post">
	<h3>建议</h3>
    <input type="text" placeholder="请输入您的建议,我们会及时给你反馈，感谢支持" class="one" name="advice" /><br />
    <h3>您的联系方式</h3>
    <input type="text"  placeholder="电话、邮箱均可" class="two" name="lianxi"/><br /><br /><br />
    <input type="submit" value="提交" />
</form>
<a href="welcomelogin.jsp"><input type="submit" value="返回首页" class="last_input"></a>
</body>
</html>
	