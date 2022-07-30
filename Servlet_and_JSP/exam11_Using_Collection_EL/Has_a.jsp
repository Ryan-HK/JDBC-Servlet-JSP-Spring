<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="m1" class="exam6_javabeans.MemberBean" />
<jsp:setProperty name="m1" property="*" />
<jsp:useBean id="addr" class="exam6_javabeans.Address" />
<jsp:setProperty name="addr" property="city" value="서울" />
<jsp:setProperty name="addr" property="zipcode" value="07543" />

<%
    m1.setAddr(addr);
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
            <th>도시</th>
            <th>우편번호</th>
        </tr>
        <tr>
            <td>${m1.id}</td>
            <td>${m1.pwd}</td>
            <td>${m1.name}</td>
            <td>${m1.email}</td>
            <td><%= m1.getAddr().getCity() %></td>
            <td><%= m1.getAddr().getZipcode() %></td>
        </tr>
        <tr>
            <td>${m1.id}</td>
            <td>${m1.pwd}</td>
            <td>${m1.name}</td>
            <td>${m1.email}</td>
            <td>${m1.addr.city}</td>
            <td>${m1.addr.zipcode}</td>
        </tr>

    </table>
</body>
</html>