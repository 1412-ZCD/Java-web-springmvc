<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<body >
        <%--错误提示信息--%>
        <span id="message">${msg}</span>
     <form action="${pageContext.request.contextPath}/user/login" 
method="post" onsubmit="return check()">
<br /><br />
账号:<input id="usercode" type="text" name="loginname" />
<br /><br />
密 码:<input id="password" type="password" name="password" />
		<br /><br />
<center><input type="submit" value="登录"/></center>
</form>
</body>
</html>
