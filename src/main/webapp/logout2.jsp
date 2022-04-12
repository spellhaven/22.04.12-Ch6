<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>

	<!-- 로그아웃 1 문서가 없는 로그아웃 2 문서... 그렇게 됐다. ㅋ. -->
	
	<%	
		String pw = session.getAttribute("memberPw").toString();	
		out.println(pw);	
	%>
	
	<br><br>
	memberPw 세션 속성 삭제 후
	<br><br>
	
	<% 
		session.removeAttribute("memberPw");
	
		String pw2 = session.getAttribute("memberPw").toString();	
		out.println(pw2);	
	
	%>
	
	
	
	
	
	
	
	
	

</body>
</html>