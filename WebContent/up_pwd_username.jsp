<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>找回密码-验证身份</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="./css/user_forgetpwd.css">
	<script src="./js/user_forgetpwd.js"></script>

  </head>
  
  <body onload="createCode()">
   	<div style="height:105px;width:100%;border-bottom:1px solid #CCC; z-index:-1; position:absolute; background:#FFFFFF;"></div>
	<div style="width:1200px; margin:auto;">
    	<!--顶部索引-->
    	<div class="header">
			<!--logo-->
			<div class="header_left"><a href="UserIndexServlet.do"><img src="./images/util/logo.jpg" width="100px" height="80px" align="absbottom" title="涵小涵农产品展示网"/></a>|找回密码</div>
			<div class="header_right">您好，欢迎光临涵小涵农产品展示网！&nbsp;<a href="userlogin.jsp">请登录</a></div>
		</div>
        <div style="height:35px;"></div>
        <!--中间主体-->
        <div class="middle">
        	<div style="width:880px; height:380px; margin:auto; margin-top:38px;">
            	<!--1、2、3流程-->
            	<div style="height:70px; border-bottom:1px solid #CCC;">
                	<div class="middle_line" style="margin-left:170px; background:#C00;"></div>
                	<div class="middle_one" style="background:#C00; border:1px solid #C00; color:#FFF;">1</div>                    
                    <div class="middle_line"></div>
                    <div class="middle_two">2</div>
                    <div class="middle_line"></div>
                   	<div class="middle_three">3</div>
                    <div class="middle_line"></div>
                </div>
                <!--1.验证身份-->
                <div class="middle_changePwd" id="chackUN">
                    <div class="middle_promptMsg">
                    	1.验证身份
                    </div>
                    <div style="height:220px; color:#060;">
                    	<br />
                        <br />
                        <form action="UserIndexServlet.do?op=checkusername" method="post" name="userNameForm" onsubmit="return checkUserName()">
                            <div style="text-align:left; margin-left:310px; color:#333;">
                            	用户名：<input type="text" id="userName" name="userName" placeholder="请输入用户名"/>
                            	<span id="userName_msg">${requestScope.errmsg}</span>
                            </div>
                            <div style="height:20px;"></div>
                            <div style="text-align:left; margin-left:310px; color:#333;">
                            	验证码：<input type="text" id="code" name="code" onblur="validateCode()" placeholder="验证码"/>&nbsp;
                            	<input type="button" id="checkCode" class="code" style="width:52px" onClick="createCode()"/>&nbsp;
                            	<a href="javascript:void(0)" class="a_color" onClick="createCode()">换一张</a>
                            	<span id="UserName_Codemsg"></span>
                            </div>
                            <div style="height:20px;"></div>
                            <div style="text-align:left; margin-left:374px;">
                            	<input type="submit" id="Submit" value="提交"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    	<!--版权信息-->
		<div class="footer">
        	<br />
            <br />
			&nbsp;<a href="#" target="_blank">关于我们</a>&nbsp;|&nbsp;<a href="#" target="_blank">联系我们</a>&nbsp;|&nbsp;<a href="#" target="_blank">商家入驻</a>&nbsp;|&nbsp;<a href="#" target="_blank">营销中心</a>&nbsp;|&nbsp;<a href="#" target="_blank">友情链接</a>&nbsp;|&nbsp;<a href="#" target="_blank">浪美时尚社区</a>&nbsp;<br />
			Copyright© 涵小涵农产品展示网，All Rights Reserved
		</div>
    </div> 
  </body>
</html>
