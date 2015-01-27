<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/header.jsp" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<p>회원가입해주시길 바랍니다.</p>
	<table>
		<form:form modelAttribute="signUpForm">
			<tr><td>
			  	<form:errors path="*" element="div"/>
			</td></tr>
			<tr><td>
				<form:label path="userid">아이디</form:label> 
			</td></tr>
			<tr><td>
				<form:input path="userid" size="20"/> 
			</td></tr>	
			<tr><td>
				<form:label path="password">패스워드</form:label> 
			</td></tr>
			<tr><td>
				<form:input path="password" size="20"/> 
			</td></tr>
			<tr><td>
				<form:label path="name">이름</form:label> 
			</td></tr>
			<tr><td>
				<form:input path="name" size="20"/> 
			</td></tr>	
			<tr><td>
				<form:label path="email">이메일</form:label> 
			</td></tr>	
			<tr><td>
				<form:input path="email" size="20"/> 
			</td></tr>
			<tr><td colspan="2">
				<input type="submit" value="가입"/>
			</td></tr>
		</form:form>
	</table>
</body>
</html>