<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Index입니다...</title>
</head>
<body>
   <h1>Hello World!</h1>
   <h2>현재시간 : ${now}</h2>
   <table border="1" align="center">
      <form:form modelAttribute="loginForm">
         <tr>
            <td>아이디</td>
            <td><form:input path="userid" /></td>
         </tr>
         <tr>
            <td>비밀번호</td>
            <td><form:password path="password" /></td>
         </tr>
         <tr>
            <td colspan="2" align="center"><input type="submit" value="로그인"/>
     		<input type="button" value="회원 가입" onclick="javascript:location.href='signUp.html';">
         </tr>
      </form:form>
   </table>
</body>
</html>