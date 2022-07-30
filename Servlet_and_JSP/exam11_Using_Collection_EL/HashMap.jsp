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

<jsp:useBean 
    id="membersMap" 
    class="java.util.HashMap"
/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <%
        membersMap.put("id", "park12");
        membersMap.put("pwd", "1234");
        membersMap.put("name", "홍길동");
        membersMap.put("email", "park@test.co.kr");

        MemberBean m2 = new MemberBean("son", "1234", "손흥민", "son@test.co,kr");
        membersList.add(m1);
        membersList.add(m2);
        membersMap.put("members", membersList);
    %>


    <table>
        <tr>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>이름</th>
            <th>이메일</th>
        </tr>
        <tr>
            <td>${membersMap.id}</td>
            <td>${membersMap.pwd}</td>
            <td>${membersMap.name}</td>
            <td>${membersMap.email}</td>
        </tr>

        <tr>
            <td>${membersMap.members[0].id}</td>
            <td>${membersMap.members[0].pwd}</td>
            <td>${membersMap.members[0].name}</td>
            <td>${membersMap.members[0].email}</td>
        </tr>

        <tr>
            <td>${membersMap.members[1].id}</td>
            <td>${membersMap.members[1].pwd}</td>
            <td>${membersMap.members[1].name}</td>
            <td>${membersMap.members[1].email}</td>
        </tr>
    </table>
</body>
</html>