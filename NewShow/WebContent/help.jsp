<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>帮助</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.last_input{width:100px;
				height:30px;
				background:#78A5CD;
				border-radius:6px;
				margin-left:400px;}
	</style>
	</head>

<body>
<h2>帮助</h2>
<p>
本系统包含前台与后台两大部分。前台提供动态页面供所有用户浏览新闻以及发表评论。后台的主要功能是供后台用户编辑，更新，发布和维护新闻信息。</p>  
<h3>一、基本需求</h3>
  <h4>1  系统用户分类</h4> 
  	<p>1.1 前台用户<br />  
  		1) 注册用户。可通过在线注册功能自由注册。可浏览新闻，发表和查看	评论，修改
        个人信息。注册功能要完善用户验证过程。<br /> 
   		2) 游客。可浏览新闻，查看评论。</p>
   	<p> 1.2 后台用户<br /> 
     	1) 系统管理员。可对后台用户其它类型用户进行维护，对系统进行设置。<br /> 
        2) 信息发布员。编辑新闻，保存新闻。<br /> 
        3) 信息审核员。审核新闻，锁定新闻。</p> 
   <h4> 2  主要功能点</h4> 
   	<p>2.1 新闻浏览 <br /> 
     	1) 新闻分类。  按新闻类别分类显示新闻标题链接。新闻类别分类应至包括少大类
        和小类两层, 例如大类有”国际”，“国内”等，大类“国内”下还可细分为“财金”，
        “娱乐”等小类。用户可查看任意大类或小类的新闻。 <br /> 
        2) 新闻排行。   “热点新闻排行“指点击率最高的前15条新闻排行。”焦点新闻
        排行“指点评论次数最多的前15条新闻排行。  “最新新闻排行”指最新
        发表的前15条新闻排行。<br />  
        3) 新闻检索。  可根据新闻标题，关键字进行
        模糊检索，暂不提供新闻内容的全文检索功能。 <br /> 
        4) 新闻详情。  点击任意页面的新闻标题链接均可进入该条新闻的详细
        内容页面，该页面应包括
        新闻标题、作者、发布时间（精确到秒）、完整内容等信息。</p>  
      <p>2.2  新闻发布和维护   <br /> 
      	1) 信息发布员可通过发布页面编辑新闻的标题，图片和内容，保存新闻后，该条 新闻属于未审核状态。发布新闻应在界面中提供所见即所得工具（在线文档编辑工具）方便用户的操作，可使用Fckeditor。 <br /> 
         2) 信息审核员对未审核的新闻的进行审核，即改变一条新闻的状态，新闻的状态 可分为未审核，已审核，已删除三种。只有已审核的新闻才能供用户浏览。 信息审核员可改变已审核新闻状态。 <br /> 
          3) 注意：所有新闻保存成功后禁止从数据库中物理删除。</p>
       <p>2.3  用户管理。<br /> 
         1) 前台用户在线注册。用户通过注册页面填写必须的注册信息，注册成功后成为 注册用户。 <br /> 
          2) 注册用户和后台用户均可修改其填写的个人资料，除个人帐号之外的信息才可 修改。 <br /> 
           3) 提供前台用户登录和后台用户登录。 <br /> 
           4) 系统发布时默认具有一个超级系统管理员用户，默认的用户名是admin,密码是 admin。该用户不可删除。超级系统管理员可作为数据库默认值存在于数据库中。系统管理员可查询，添加，删除后台用户及用户信息。<br /> 
           5) 系统管理员可对前台和后台用户进行维护。系统管理员可查询前台用户信息。 只能锁定前台用户，锁定后的无法登录。不允许系统管理员修改前台用户的其它任何信息，不允许删除用户信息。 </p>
<a href="welcomelogin.jsp"><input type="submit" value="返回首页" class="last_input"></a>
</body>
</html>
	