<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import= "java.util.*" %>
<%@ page import= "exam7_make_member_inquire.domain.*, exam7_make_member_inquire.persistance.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    request.setCharacterEncoding("UTF-8");
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
            <th>가입일</th>
        </tr>
        
        <c:choose>
            <c:when test="${membersList == null}">
                <tr>
                    <td colspan="5">등록된 회원이 없습니다.</td>
                </tr>
            </c:when>

            <c:when test="${membersList != null}">
                 <c:forEach var="data" items="${membersList }">
                    <tr>
                        <td>${data.id}</td>
                        <td>${data.pwd}</td>
                        <td>${data.name}</td>
                        <td>${data.email}</td>
                        <td>${data.joinDate}</td>
                    </tr>
                </c:forEach>
            </c:when>

        </c:choose>
    </table>
</body>
</html>