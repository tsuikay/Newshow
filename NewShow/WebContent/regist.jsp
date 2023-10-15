<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style  type="text/css">
	<style  type="text/css">
	*{border:0px;
		margin:0px;
		padding:0px;
		font-family:"楷体";
		font-size:15px;}
		
		input{margin:5px;
		border:#CCC 1px solid;}
		
		.top_div{width:100%;
		height:100px;}
		.top_div img{margin-top:0px;
		margin-left:0px;}
		
		
		.bottom{width:100%;
		height:548px;
		position:relative;}
		
		form{width:300px;
		height:300px;
		background:#CCC;
		border:#000 solid 1px;
		border-radius:20px;
		margin-left:500px;
		position:absolute;
		top:130px;}
		 @font-face{ font-family:yishu;
	    }
		form p{ font-family:yishu;
		 color:#630;
		 font-size:30px;
		 margin-top:25px;
		 margin-left:20px;
		 display:inline-block;}
		  .span{ font-size:13px;
		 color:#FFF;}
		 .xinxi_div{margin-top:30px;
		 margin-left:20px;}
		 
		.five_input{width:100px;
		height:30px;
		border-radius:5px;
		background:#39C;
		color:#FFF;
		margin-top:20px;
		margin-left:10px;}
		
		#six_input{position:absolute;
		top:200px;
		right:10px;}
		
</style>
</head>
  <body>
  <div class="top_div">
  	<img src="k.jpg"/>
  </div>
  
  
  <div class="bottom">
	<form  method = "post" action="InsertServlet">
    	<h2 align="center">新闻管理系统</h2>
        <div class="xinxi_div">
            用户名：<input type="text" name="personname"><br>
            密&nbsp;码：&nbsp;<input type="password" name="personpass"><br>
            年&nbsp;龄：&nbsp;<input type="text" name="personage"><br>
            E-mail：<input type="text" name="personmail"><br>
    	</div>
    	<input type="submit" value="注册" class="five_input">
    
    <a href="login.jsp"><input type="submit" value="取消" class="five_input" id="six_input"/></a>
    </form>
   </div>
  </body>
</html>

