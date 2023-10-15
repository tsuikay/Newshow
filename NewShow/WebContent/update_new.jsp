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
				
				
				border-radius:5px 5px 0px 0px;}
				
				.top_nav p:hover .fast_p{ display:block;
			}
				.center{width:600px;
				height:900px;;
				margin:50px auto;
				border:2px #999 solid;
				position:relative;}
				form{margin:auto;
				margin-top:50px;}
				input{font-family:"宋体";}
				.input{font-size:26px;
				width:500px;
				padding-left:30px;
				border-bottom:#CCC 1px solid;
				margin-top:20px;}
				#tow_input{margin-top:25px;}
				.last_input{width:100px;
				height:30px;
				background:#78A5CD;
				border-radius:6px;
				margin-left:400px;
				margin-top:100px;}
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
	            <a href="insert_new.jsp"><p>添加新闻</p></a>
	            <a href="select_new.jsp"><p>查询新闻</p></a>
	            <a href="delete_new.jsp"><p>删除新闻</p></a>
	            <a href="update_new.jsp"><p class="fast_p">更新新闻</p></a>
	        </div>
	    </div>
	    <div class="center">
        	<form method="post" action="UpdateNewServlet">
            	<input type="text" placeholder="请输入修改数据对应的作者" class="input" name="author"/><br />
                <input type="text" placeholder="请输入要修改的标题名" class="input" id="two_input" name="oldheadline"/><br />
                <input type="text" placeholder="请输入新的标题名" class="input" id="two_input" name="newheadline"/><br />
                <input type="submit" value="提交" class="last_input"/>
            </form>
        </div>
	 </body>
</html>
