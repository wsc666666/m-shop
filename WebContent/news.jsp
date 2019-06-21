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
  margin-left:400px;
  }
 #newsbody ul {
/* 去掉列表前面的点号 */
list-style-type:none;
}
#newsbody ul li {
/* 宽度600px */
width:600px;
/* 行高24px */
line-height:24px;
}
#newsbody ul li a, ul li a:active {
/* 内边距5px */
padding:5px;
/* 文字颜色灰色 */
color:#888;
/* 去掉超链接下划线 */
text-decoration:none;
/* 让超链接以块级元素的形式显示，这一行非常重要 */
display:block;
}
#newsbody ul li a:hover {
/* 鼠标放上去是天蓝色 */
color: #08c;
}
#newsbody ul li a span{
/* 让日期浮动到最右边，注意：span一定要在标题的左边，否则低版本IE不兼容 */
float:right;
}
  }
  </style>
  </head>
  
  <body style="width:1500px; margin: 0 auto;">
   <%@ include file="header.jsp" %>


<div id="newsbody" >
	<c:if test="${!empty listnews}">
		
	
	
	<c:forEach items="${listnews}" var="news">
	<ul>
	<li><a href="newsdetail.jsp?id=${news.getId()}&title=${news.getTitle()}&time=${news.getTime()}&body=${news.getBody()} "><span>${news.getTime()}</span>${news.getTitle()}</a></li>
	</ul>
				
	</c:forEach>
		
	</c:if>

</div>

  
<div style="height: 490px"></div>
<%@ include file="footer.jsp" %>
  </body>
</html>
