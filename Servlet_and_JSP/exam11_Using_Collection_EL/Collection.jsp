<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="exam5_javabeans.*" %>

<jsp:useBean 
    id="m1" 
    class="exam5_javabeans.MemberBean" 
    scope="request" 
/>
<jsp:setProperty name="m1" property="*" />

<!-- ArraysList 객체 생성방법 -->
<jsp:useBean 
	id="membersList" 
	class="java.util.ArrayList"
	type="java.util.ArrayList<MemberBean>
"/>

<%
    MemberBean m2 = new MemberBean("Ryan", "1234", "정현구", "122@email.com");
	membersList.add(m1);
    membersList.add(m2);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>


    <table>
        <tr>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>이름</th>
            <th>이메일</th>
        </tr>
        <tr>
            <td>${membersList[0].id}</td>
            <td>${membersList[0].pwd}</td>
            <td>${membersList[0].name}</td>
            <td>${membersList[0].email}</td>
        </tr>

        <tr>
            <td>${membersList[1].id}</td>
            <td>${membersList[1].pwd}</td>
            <td>${membersList[1].name}</td>
            <td>${membersList[1].email}</td>
        </tr>
    </table>
</body>
</html>