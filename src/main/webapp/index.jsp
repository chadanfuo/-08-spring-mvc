<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<ul>   
<li>
<ul>   <!-- /auth/login --뷰단패스 /치면 무조건 프로젝트명 있어야함  -->
	<li><a href="auth/login">/auth/login</a>: &lt;spring:message&gt;태그, loginForm.jsp,LoginController</li>
</ul>
</li>
<li> 폼  및 에러 메시지
<ul>  
	<li><a href="member/regist">/member/regist</a>: 폼,에러 메시지,registrationForm.jsp , RegistrationController</li>
</ul>
</li>
</ul>
</body>
</html>