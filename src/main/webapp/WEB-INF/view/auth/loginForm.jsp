<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><spring:message code="login.form.title"/></title>
</head>
<body>
<form:form commandName="loginCommand">
<form:hidden path="securityLevel"/>

<form:errors element="div"/>
<label for="email"><spring:message code="email"/> </label>:
<input type="text" name="email" id="email" value="${loginCommand.email }">
<form:errors path="email"/><br>

<label for="password"><spring:message code="password"/></label>:
<input type="password" name="password"  id="password">
<form:errors path="password"/><br>
<label for="loginType"><spring:message code="login.form.type"/></label>
<form:select path="loginType" items="${loginTypes }"/><

<input type="submit" value="<spring:message code="login.form.login"/>">
</form:form>

<ul>
	<li><spring:message code="login.form.help"/></li>
</ul>
</body>
</html>