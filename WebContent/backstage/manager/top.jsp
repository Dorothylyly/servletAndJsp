<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="./css/manager_index.css"/>
  </head>
  
  <body>
    	&nbsp;&nbsp;<a href="backstage/managerindex.jsp">Hello.Admin</a>
        <div class="top_admin">
        	<span style="font-size:13px;">${sessionScope.manager.rank}：${sessionScope.manager.admin}</span>&nbsp;&nbsp;
            <form method="post" action="ManagerLogin.do?op=quit"><input type="submit" value="退出" class="top_quit"/></form>
        </div>
  </body>
</html>
