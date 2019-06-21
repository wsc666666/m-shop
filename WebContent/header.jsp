<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	
  <link rel="stylesheet" href="css/1.css" type="text/css"></link>
  
  <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  
  <script type="text/javascript" src="js/header.js"></script>
  </head>
  
  <body>
     <c:if test="${empty username}">
 	 <script type="text/javascript">
	$(document).ready(function () {
		$("#span4").hide();
	
	});
 </script>
 </c:if>
 <c:if test="${!empty username}">
 <script type="text/javascript">
	$(document).ready(function () {
		$("#span3").hide();
	
	});

 </script>
  </c:if>
  <div style="width: 1349px">
<div id="top">
	<span id="span1"><a href="#" style="margin-left: 220px">天猫首页</a> <a href="#" style="margin:0px 10px " >喵，欢迎来到天猫</a><a href="#"></a><a href="#"></a></span><span id="span2"><span id="span3"><a href="login.jsp">登录</a> <a href="register.jsp">注册</a></span><span id="span4">欢迎登录！${username}|<a href="UserServlets?opr=exit">退出</a></span>|<a href="CartServlet?opr=list">我的购物车</a></span>
    </div>
  <div id="banner"><img src="img/tianmao4.png" />
  <form action="GoodsServlet?opr=fuzzy&from=user" method="post">
  <span>
  <input type="text" name="goods" id="input1" value="搜索 天猫商品"/>
  <input type="submit" value="搜索" id="input2" />
  </span>
  </form>
  </div>
  <div id="menu">
    <ul>
     <li><a href="#">首页</a></li>
     <li><a href="#">推荐</a>
     	 <div class="div" id="div1">
         	<div><a href="GoodsServlet?opr=det&id=10101"><img src="img/xiaomi9.png" /></a></div>
            <div><a href="GoodsServlet?opr=det&id=10105"><img src="img/huaweip30.png" /></a></div>
            
         </div>  
     </li>
     <li><a href="#">热卖手机</a>
     </li>
     <li><a href="#">智能硬件</a>
     </li>
     <li><a href="#">笔记本</a></li>
     <li><a href="#">运动鞋</a></li>
     <li><a href="NewsServlet?opr=list">最新资讯</a></li>
    </ul>
  </div>
  </div>
  </body>
</html>
