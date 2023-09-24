<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<span style="font-family:Microsoft YaHei;font-size:14px;"><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%></span>

<script>

function check(){
	var username =$("#usename").val();
	var password =$("#password").val();
	if(username=="" || password==""){
		$("#message").text("账号或密码不能为空！");
		return false;
	}
	return true;
}
</script>
</head>
	<form action="${pageContext.request.contextPath}/user/reg"
		method="post" onsubmit="return check()">
		<br ><br />
	账号:<input id="username" type="text" name="username" />
	<br /><br />
	密 码:<input id="password" type="password" name="password" />
		<br /><br />
		
		
		<center><input type="submit" value="注册"/></center>
		</form>
	
</body>
