<%@page import="entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	*{margin: 0px;padding: 0px;}
	td{border: 1px solid red;padding: 2px 0px;}
	table{border-collapse: collapse; margin: 0px auto;width:1024px;}
	table img{width: 100px;height: 100px;}
	#table1 td{border: 0px;}
	#header{background-color: green;color: white;font-weight: bold;text-align: center;line-height: 28px;}
	#header a{color: white; text-decoration: none;}
	.chb{text-align: center;}
	div{margin: 2% auto}
	caption{font-size: 20px;}
	</style>  
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function checkall(){
		var checkboxes=document.getElementsByName("chb");
		for(var i=0;i<checkboxes.length;i++){
			checkboxes[i].checked=document.getElementById("all").checked;
		}
	}
	$(document).ready(function(){
		$(".del").click(function(){
		return confirm("确定要删除吗？");	
		});
	});
</script>
</head>
  
  <body>
  <div>
   <form action="NewsServlet?opr=fuzzy&from=admin" method="post">
     <table id="table1">
      	 <caption>新闻信息管理</caption>
    	 <tr><td>关键字:<input type="text" name="title"/>&nbsp;&nbsp;<input type="submit" value="查询">&nbsp;&nbsp;<a href="insertnews.jsp"><input type="button" value="添加新闻"></a></td></tr>
     </table>
     </form>
    <form action="NewsServlet?opr=mdel" method="post">
    <table>
  
    <tr id="header"><td><input type="checkbox" id="all" onclick="checkall()"/></td>
    <td>新闻编号</td><td>标题</td><td>来源</td><td>时间</td><td>详细</td><td>操作</td></tr>
    <c:forEach var="news" items="${listnews}" begin="0" end="${listnews.size()}">
    <tr>
    	<td class="chb"><input type="checkbox" name="chb" value="${news.getGid()}"></td>
    	<td>${news.getGid()}</td><td>${news.getTitle()}</td>
    	<td>${news.getId()}</td><td>${news.getTime()}</td>
    	<c:set var="body" value="${news.getBody()}"/>
    	<td> ${fn:substring(body, 0, 15)}</td>
    	<td style="text-align: center;"><a href="updatenews.jsp?gid=${news.getGid()}&title=${news.getTitle()}&id=${news.getId()}&time=${news.getTime()}&body=${news.getBody()}">修改</a><br><br><a href="NewsServlet?opr=del&gid=${news.getGid()}" class="del">删除</a></td>
    </tr>
    
   </c:forEach>
   <tr style="text-align: center;"><td><input type="submit" value="删除" /></td>
    <td colspan="3"><a href="UserServlets?opr=list">用户信息管理</a></td><td colspan="2"><a href="NewsServlet?opr=list2">新闻管理首页</a></td><td><a href="admin.jsp">管理首页</a></td></tr>
     </table>
     </form>
     
</div>
  </body>
</html>
