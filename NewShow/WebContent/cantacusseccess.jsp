<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ϵ����</title>
    
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
					font-family:"΢���ź�";
					font-size:13px;
				}
				/*ͷ��*/
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
				.center span{font-size:15px;
				font-family:"����";
				color:#699;}
				.p{font-size:20px;
				font-family:"��Բ";
				margin-left:250px;
				margin-top:100px;}
				</style>
	</head>
	
	<body>
		 <div class="top_one">
	        <div class="top_wenben">
	            <a href="help.jsp"><p>��������</p></a>
		        <a href="contacus.jsp"><p>��ϵ����</p></a>
		        <a href="setting.jsp"><p>����</p></a>
	        </div>
	        <img src="logo.png"/>
	        <div class="top_nav">
	            <a href="insert_new.jsp"><p>�������</p></a>
	            <a href="select_new.jsp"><p>��ѯ����</p></a>
	            <a href="delete_new.jsp"><p>ɾ������</p></a>
	            <a href="update_new.jsp"><p>��������</p></a>
	        </div>
	    </div>
	   <div class="center">
			   <p class="p"> �ύ�ɹ���</p>
			 
			  
	    </div>
	    
	 </body>
	    
	 </body>
</html>