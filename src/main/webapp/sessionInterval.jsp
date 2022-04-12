<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 유효 시간</title>
</head>
<body>
	<h2>세션의 유효 시간</h2>
	<hr>
	
	<% 
		int session_time = session.getMaxInactiveInterval(); // 세션의 유효 시간 (초 단위)
		out.println(session_time);	
	%>

	<br>
	세션 시간 조정
	<br>

	<% 
		session.setMaxInactiveInterval(60*50);
		// setMaxInactiveInterval()도 역시 초 단위다. 분 단위가 익숙하면 그 안에 60*5(분) 이런 식으로 쓰면 된다.
	%>




</body>
</html>