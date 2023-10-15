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
				background:url(top-navi-hover.png) no-repeat;
				border-radius:5px 5px 0px 0px;
				display:block;}
				
				.top_nav p:hover{background:url(top-navi-hover.png) no-repeat;
				border-radius:5px 5px 0px 0px;}
				
				.top_nav p:hover .fast_p{ display:block;
				background:url(footer-background.png) no-repeat;}
				.center{width:600px;
				height:900px;;
				margin:50px auto;
				border:2px #999 solid;}
				form{margin:auto;
				margin-top:50px;}
				.last_input{width:100px;
				height:30px;
				background:#78A5CD;
				border-radius:6px;
				margin-left:400px;}
				table{margin:auto;
				margin-top:20px;
				text-align:center;}
				</style>
	</head>
	
	<body><div><br></div>
		 <div class="top_one">
	        <div class="top_wenben">
	            <p>帮助中心</p>
		        <p>联系我们</p>
		        <p>设置</p>
	        </div>
	        
	        <div class="top_nav">
	            <a href="insert_new.jsp"><p>添加新闻</p></a>
	            <a href="select_new.jsp"><p class="fast_p">查询新闻</p></a>
	            <a href="delete_new.jsp"><p>删除新闻</p></a>
	            <a href="update_new.jsp"><p>更新新闻</p></a>
	        </div>
	    </div>
	    <div class="center">
	    	<form action="FindNewServlet" method="post">
	    		&nbsp;&nbsp;&nbsp;&nbsp;请输入你所要查询新闻的作者：<input type="text" name="author">
	    		<input type="submit" value="查询" class="last_input">
	    	</form><br>
	    	
	    	<table border="0" bgcolor="#0000ff" width="500" height="30" align="center" 
	    	fontsize="1" cllpading="5" cllspacing="1">
	<tr>
		
		<td colspan="2" bgcolor="#e7e7e7">数据</td>
		<td colspan="2" bgcolor="#e7e7e7">时间</td>
		<td colspan="2" bgcolor="#e7e7e7">作者</td>
		<td colspan="2" bgcolor="#e7e7e7">标题</td>
	</tr>	
	<c:forEach items="${list}" var="stu">
	<tr>
		<td colspan="2" bgcolor="#e7e7e7">${stu.data} </td>
		<td colspan="2" bgcolor="#e7e7e7">${stu.time}</td>
		<td colspan="2" bgcolor="#e7e7e7">${stu.author}</td>
		<td colspan="2" bgcolor="#e7e7e7">${stu.headline}</td>
	</tr>	
	</c:forEach>
 	</table>
	    </div>
	 </body>
</html>