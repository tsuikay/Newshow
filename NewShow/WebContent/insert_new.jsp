<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>处理新闻</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
					*{
					margin:0;
					padding: 0;
					border:0px;
					list-style: none;
					outline: none;
					font-family:"微软雅黑";
					font-size:13px;
				}
				/*头部*/
				.top_one{width:100%;
				height:192px;
				border:2px #ccc solid;
				background: url(k.jpg);
				position:relative;}
				.top_one img{margin-top:60px;
				margin-left:400px;}
				.top_wenben{ position:absolute;
				top:0px;
				right:350px;}
				
				.top_wenben p{display:inline-block;
				width:65px;
				height:20px;
				background:#FFF;
				text-align:center;
				color:#000;
				border-radius:0px 0px 5px 5px;
				cursor:pointer;}
				
				.top_nav{
				margin-top:28px;
				margin-left:410px;}
				
				.top_nav p{width:80px;
				height:19px;
				display:inline-block;
				font-size:13px;
				color:#FFF;
				margin-left:0px;
				text-align:center;
				cursor:pointer;}
				
				.fast_p{margin-left:-10px;
				border-radius:5px 5px 0px 0px;
				display:block;}
				
				.top_nav p:hover{
				border-radius:5px 5px 0px 0px;}
				
				.top_nav p:hover .fast_p{ display:block;
				}
				
				
				.center{width:600px;
				height:900px;;
				margin:50px auto;
				border:2px #999 solid;
				position:relative}
				
				.center input{font-family:"宋体";
				margin-top:30px;}
				.one_input{font-size:26px;
				width:500px;
				padding-left:30px;
				border-bottom:#CCC 1px solid;}
				.two_input{font-size:15px;
				width:500px;
				padding-left:30px;
				border-bottom:#CCC 1px solid;}
				.one_span{margin-left:30px;}
				.two_span{margin:30px;;}
				textarea{border:1px #CCC solid;
				text-indent:2em;
				width:550px;
				height:600px;
				margin:20px;
				margin-left:25px;
				padding-top:15px;}
				.four_input{width:100px;
				height:30px;
				background:#78A5CD;
				border-radius:6px;
				margin-left:150px;}
				.five_input{width:100px;
				height:30px;
				background:#78A5CD;
				border-radius:6px;
				position:absolute;
				top:815px;
				right:150px;}
	</style>
	</head>
	
	<body>
		 <div class="top_one">
	        <div class="top_wenben">
	            <a href="help.jsp"><p>帮助中心</p></a>
		        <a href="contacus.jsp"><p>联系我们</p></a>
		        <a href="setting.jsp"><p>设置</p></a>
	        </div>
	      
	        <div class="top_nav">
	            <a href="insert_new.jsp"><p class="fast_p">添加新闻</p></a>
	            <a href="select_new.jsp"><p>查询新闻</p></a>
	            <a href="delete_new.jsp"><p>删除新闻</p></a>
	            <a href="update_new.jsp"><p>更新新闻</p></a>
	        </div>
	    </div>
	    <div class="center">
	    	<form method="post" action="InsertNewServlet">
	        	<input type="text"  placeholder="请输入标题" class="one_input" required="required" name="biaoti"><br />
	            
	            <input type="text" class="two_input" placeholder="输入作者姓名" required="required" name="zuozhe"><br />
	            
	            <span class="one_span">请选择时间：</span><input type="date" class="three_input" name="time"><br />
	            
	            <span class="two_span">请输入要添加的新闻:</span><br /><textarea cols="100" rows="800" name="content"></textarea>
	            <input type="submit" value="提交信息" class="four_input">
	        </form>
	        <a href="welcomlogin.jsp"><input type="submit" value="返回首页" class="five_input"/></a>
	    </div>
	</body>
</html>
	