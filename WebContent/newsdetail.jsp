<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
  <base href="<%=basePath%>">
    
    <title>My JSP 'news.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <style type="text/css">
  #newsbody {
  margin-top:50px;
  margin-left:200px;
  }
 
  </style>
  </head>
  
  <body style="width:1500px; margin: 0 auto;">
   <%@ include file="header.jsp" %>
   <%
    String id=request.getParameter("id");
    String title=request.getParameter("title");
    String body=request.getParameter("body");
    String time=request.getParameter("time");
   %>

<div id="newsbody">

<h1 style="text-align:left"><%=title %></h1>
<!-- 作者区域 -->
<div class="author">
   

    <div class="info">
        <span class="name"><span style="font-size:12px; color:gray"><%=time %></span><span style="width100px" ></span> <span style="font-size:12px"> 来自：<%=id %> </span></span>
        <!-- 关注用户按钮 -->
        
    </div>
    <!-- 如果是当前作者，加入编辑按钮 -->
</div>
<div style="width:1000px;line-height:34px;margin-top:20px;">
  <%=body %>
</div>

</div>


  
<div style="height: 190px"></div>
<%@ include file="footer.jsp" %>
  </body>
</html>
