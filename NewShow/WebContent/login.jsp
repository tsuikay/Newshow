<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">
		*{border:0px;
		margin:0px;
		padding:0px;
		font-family:"宋体";
		font-size:15px;}
		
		.top_div{width:100%;
		height:100%;
		background:url(k.jpg) no-repeat;}
		
		.bottom_div{margin-top:10px;
		width:100%;
		height:488px;
		
		position:relative;
		overflow:hidden}
		
		form{width:300px;
		height:300px;
		border:#ccc 2px solid;
		background:#CCC;
		border-radius:10px;
		margin:auto;
		margin-top:50px;}
		input{margin:10px;
		height:15px;
		border:#CCC 1px solid;}
		
		
		
		.three_input{width:100px;
		height:30px;
		border-radius:5px;
		background:#39C;
		color:#FFF;
		margin:40px 30px;}
		 @font-face{ font-family:yishu;
	    }
		form p{ 
		 color:#630;
		 font-size:30px;
		 margin-top:25px;
		 align:center;
		 }
		 .span{ font-size:13px;
		}
		 .name{margin-left:20px;
		 margin-top:30px;}
		 .input{margin-top:30px;}
		#four_input{position:absolute;
		top:210px;
		right:535px;}
</style>
</head>
  <body>
  <div class="top_div">
  		
  </div>
  <div class="bottom_div">
        <form id="" method="post" action="LoginServlet">
        <p>&nbsp;&nbsp;&nbsp;&nbsp;新闻管理系统</p><span class="span">
        <div class="input">
            <span class="name">用户名：<input type="text" name="loginname"><br></span>
            <span class="name">密&nbsp;码&nbsp;：<input type = "password" name="loginpassword"><br></span>
        </div>
    
            <input type="submit" value="登录" class="three_input">
            <br>
        </form>
        <a href="regist.jsp"><input type="submit" value="返回注册" class="three_input" id="four_input"></a>
   </div>
  </body>
</html>
