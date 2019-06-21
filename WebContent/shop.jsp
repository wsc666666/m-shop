<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  <script type="text/javascript" src="js/1.js"></script>
  <link rel="stylesheet" href="css/1.css" type="text/css"></link>
  </head>
  
  <body style="width:1500px; margin: 0 auto;">
 <%@ include file="header.jsp" %>
  <div id="containter">
  <div id="left">
    <div id="left1">
    <h3><a href="#">热卖手机</a></h3>
    <span><a href="GoodsServlet?opr=det&id=10105">华为p30</a> <a href="GoodsServlet?opr=det&id=10101">小米9</a> <a href="GoodsServlet?opr=det&id=10102">华为荣耀9<sup><img src="img/new.gif" /></sup></a></span>
    </div>
    <div>
    <h3><a href="#">魅族</a></h3>
    <span><a href="GoodsServlet?opr=det&id=10103">魅族16s</a> <a href="#">魅族16th</a></span>
    </div>
    <div>
    <h3><a href="#">苹果手机</a></h3>
    <span><a href="GoodsServlet?opr=det&id=10103">iphone 7</a> <a href="#">iphone 7S</a> <a href="#">iphone8 Plus</a></span>
    </div>
    <div>
    <h3><a href="#">智能硬件<sup><img src="img/hot.gif" /></sup></a></h3>
    <span><a href="#">儿童手表</a> <a href="#">行车记录仪</a> <a href="#">安全路由</a></span>
    </div>
    <div>
    <h3><a href="#">能源类</a></h3>
    <span><a href="#">移动电源</a> <a href="#">充电器</a> <a href="#">线材</a> <a href="#">电池</a></span>
    </div> 
    <div>
    <h3><a href="#">耳机与音箱</a></h3>
    <span><a href="#">线控耳机</a> <a href="#">蓝牙耳机</a></span>
    </div>
  </div>
 <div class="right">
            <ul class="img">
                <li><a href="#"><img src="img/lunbo1.png" alt=""/></a></li>
                <li><a href="#"><img src="img/lunbo2.png" alt="" /></a></li>
                <li><a href="#"><img src="img/lunbo3.png" alt="" /></a></li>
                <li><a href="#"><img src="img/lunbo4.png" alt="" /></a></li>
            </ul>
            <ul class="num">
            </ul>
            <div class="btn btn_l">&lt;</div>
            <div class="btn btn_r">&gt;</div>
  </div>
<div id="block1">
  
  <h3><a href="#" style="text-decoration:none">明星单品</a></h3>
   <ul>
  <c:forEach var="goods" items="${listgoods}" begin="0" end="4">  
 <li  style="width:200px;height:300px;"><a href="GoodsServlet?opr=det&id=${goods.getId()}" > 
  <img alt="没写" src="img/${goods.getImg1()}" class="jinping1">	
    <div class="jinping2">${goods.getName()}</div>
   <div class="jinping3">${goods.getPrice()}元</div></a></li></c:forEach>
  </ul>
  </div>
 <div id="block2">
  <h3><a href="#">精品配件</a></h3>
  <ul>
  <c:forEach var="goods" items="${listgoods}" begin="5" end="8">  
 <li  style="width:200px;height:300px;"><a href="GoodsServlet?opr=det&id=${goods.getId()}" > 
  <img alt="没写" src="img/${goods.getImg1()}" class="jinping1">	
    <div class="jinping2">${goods.getName()}</div>
   <div class="jinping3">${goods.getPrice()}元</div></a></li></c:forEach>
  </ul>
  
  </div>
 </div>
<%@ include file="footer.jsp" %>
</body>
</html>
