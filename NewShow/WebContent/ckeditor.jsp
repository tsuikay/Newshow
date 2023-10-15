<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ckeditor.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form id="form1" name="form1" method="post" action="display.jsp">  
		<table width="650" height="400" border="0" align="center">  
			<tr>  
				<td valign="top">  
					内容:  
				</td>  
				<td>  
					<textarea id="editor1" name="editor1">可以用这个文本编辑器完成你想实现的功能，加油吧！</textarea>
		
					<script type="text/javascript">  
						CKEDITOR.replace('editor1');  
					</script>  
    			</td>  
			</tr>  
			<tr>  
				<td></td>  
				<td>  
					<input type="submit" name="Submit" value="提交" />  
					<input type="reset" name="Reset" value="重置" />  
				</td>  
			</tr>  
		</table>  
		
	</form>  
  </body>
</html>
