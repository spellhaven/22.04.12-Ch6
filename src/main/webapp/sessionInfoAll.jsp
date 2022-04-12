<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.Enumeration" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 세션 정보</title>
</head>
<body>
	<h2>모든 세션 정보 확인.</h2>
	<hr>
	
	<% 
	
		String name = ""; // 교과서에 나온 것처럼 초기화할 필요 없이 String name;이라고만 써도 된다. 중요한 건 아님 ㅋ.
		String value = "";
		
		Enumeration s_name = session.getAttributeNames(); // Enumeration('열거형'. 거열형 아님)은 배열이랑 비슷한 클래스다.
	
		while(s_name.hasMoreElements())
		{
			name = s_name.nextElement().toString(); // String으로의 형변환은 이렇게 해도, 아랫줄처럼 해도 상관없다. 
			value = (String) session.getAttribute(name); // 그러나 .toString()이 깔끔해서 더 많이 쓰인대.
		
			out.println("세션의 속성 이름: " + name + "<br>");
			out.println("세션의 속성 값: " + value + "<br>");
		}
		
		String sessionID = session.getId(); // 브라우저별로 매칭되는 유니크한 ID. (이건 교과서에 없다.)
		out.println("세션 아이디: " + sessionID + "<br>");
		
		
		
		
		
		
		
		
		
		
	
	
	%>

</body>
</html>