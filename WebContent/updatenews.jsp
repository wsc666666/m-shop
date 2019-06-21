<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatenews.jsp' starting page</title>
    
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
    <%
    String id=request.getParameter("id");
    String title=request.getParameter("title");
    String body=request.getParameter("body");
    String time=request.getParameter("time");
    String gid=request.getParameter("gid");
  	 %>
    <form action="NewsServlet?opr=update&gid=<%=gid%>" method="post">
	<table>
		<tr>
			<td>新闻编号：</td>
			<td><%=gid%></td>
		</tr>
		<tr>
			<td>标题：</td>
			<td><input type="text" name="title" value="<%=title%>"></td>
		</tr>
		<tr>
			<td>来源：</td>
			<td><input type="text" name="id" value="<%=id%>"></td>
		</tr>
		<tr>
			<td>时间：</td>
			<td><input type="text" name="time" value="<%=time%>"></td>
		</tr>
		<tr>
			<td>详情：</td>
			<td> <textarea   cols="50"   rows="10"   style="OVERFLOW:   visible" name="body"> <%=body%></textarea></td>
		</tr>
		
		
	    <tr>
			<td colspan="2" align="center"><input type="submit" value="修改">  <input type="reset" value="重置">
			</td>
		</tr>
	</table>
</form>
  </body>
</html>
