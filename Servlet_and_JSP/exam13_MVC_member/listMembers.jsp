<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*, exam8_mvc_member.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 출력창</title>

    <style>
        * {
            padding: 0;
            margin: 0;
            list-style: none;
            text-decoration: none;
        }

        body {
            margin: 0 auto;
            text-align: center;
        }

        section {
            margin: 0 auto;

            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;

            border: 2px solid black;
            width: 700px;
        }

        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        .wrap_table {
            display: flex;
            justify-content: center;
            
            width: 80%;
            border: 1px solid red;
        }

        th {
            width: 100px;
        }

        td {
            width: 20%;
            text-align: center;
        }



    </style>
</head>
<body>
    <section>
        <h1>회원 정보</h1>

        <div class="wrap_table">
            <table>
                <tr>
                    <th>아이디</th>
                    <th>비밀번호</th>
                    <th>이름</th>
                    <th>이메일</th>
                    <th>가입일</th>
                </tr>
            
                <c:choose>
                    <c:when test="${ empty membersList}">
                        <tr>
                            <td colspan="5">
                                등록된 회원이 없습니다.
                            </td>
                        </tr>
                    </c:when>

                    <c:when test="${!empty membersList}">
                        <c:forEach var="mem" items="${membersList}">
                            <tr>
                                <td>${mem.id}</td>
                                <td>${mem.pwd}</td>
                                <td>${mem.name}</td>
                                <td>${mem.email}</td>
                                <td>${mem.joinDate}</td>
                            </tr>
                        </c:forEach>
                    </c:when>       
                </c:choose>    

            </table>
        </div>

        <div>
            <a href="#">회원가입하기</a>
        </div>

    </section>
</body>
</html>