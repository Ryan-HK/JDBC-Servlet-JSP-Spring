<%@ page 
language="java"
isErrorPage="false"
errorPage="/Exam02_Error_Exception/A_errorPage.jsp" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>A.jsp / Error 발생 Page 입니다.</h1>
	<%
		String name = null;
		out.println(name.length());
	%>
</body>
</html>

