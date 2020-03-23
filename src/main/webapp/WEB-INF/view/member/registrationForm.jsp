<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
</head>
<body>
<form:form commandName="memberInfo">
<p>
<label for="email">이메일</label>:
<form:input path="email" />
<form:errors path="email"/>
</p>
<p>
<label for="naem">이름</label>:
<form:input path="name" />
<form:errors path="name"/>
</p>
<p>
<label for="password">암호</label>:
<form:input path="password"/>
<form:errors path="password"/>
</p>
<p>
<label for="password">확인</label>:
<form:input path="confirmPassword" />
<form:errors path="confirmPassword"/>
</p>
<p>
<label >주소</label>:
주소1
<form:input path="address.address1"/>
<form:errors path="address.address1"/>
<br>
주소2
<form:input path="address.address2"/>
<form:errors path="address.address2"/>
<br>
</p>
<p>
우편번호
<form:input path="address.zipcode"/>
<form:errors path="address.zipcode"/>
</p>
<p>
<label>
<form:checkbox path="allowNoti" label="이메일을 수신합니다."/>

</p>
<p>
<label for="birthday"> 생일</label> : 형식 : YYYYMMDD ,예: 20140101
<form:input path="birthday"/>
<form:errors path="birthday"/>
</p>
<p>
<label for="jobCode"> 직업</label> : 
<form:select path="jobCode">
<option value="">---선택하세요--</option>
<form:options items="${jobCodes }" itemLabel="label" itemValue="code" />
</form:select>
</p>
 <p>
<form:label path="favoriteOs"> 선호OS</form:label> 
<form:checkboxes items="${favoriteOsNames }" path="favoriteOs"/>
<form:errors path="favoriteOs"/>
</p>
<p>

<form:label path="tool"> 주로 사용하는 개발툴</form:label> 
<form:radiobuttons items="${tools }" path="tool"/>
</p>
<p> 
<form:label path="allowance"> 용돈</form:label> :형식 2000WON, 10000USD
<form:input path="allowance"/>
<form:errors path="allowance"/>
</p>
<p>

<form:label path="etc"> 기타</form:label> 
<form:textarea path="etc" cols="20" rows="3"/>
</p>

<input type="submit" value="가입" />
</form:form>
</body>
</html>