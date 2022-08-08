<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix= "fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

    <style>
       * {
        margin: 0;
        padding: 0;

        text-decoration: none;
        list-style: none;
        box-sizing: border-box;
        }

        body {
            margin: 0 auto;
            text-align: center;  
        }

        header {
            width: 100%;
            height: 300px;
            background-color: yellow;
        }

        main {
            margin-top: 50px;
            border: 1px solid red;
        }

        .board {

            margin: 0 auto;
            display: flex;
            flex-direction: column;
            width: 900px;
            
            border: 1px solid black;
        }

        .board_list {
            display: flex;
            justify-content: space-between;
            align-items: center;

            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
        }

        .col1 {
            width: 7%;
        }

        .col2 {
            width: 13%;
        }

        .col3 {
            text-align: left;
            width: 60%
        }

        .col4 {
            width: 20%
        }

        .col5 {
            width: 100%;
            
            height: 200px;
            line-height: 200px;

            border: 3px solid green;
        }


    </style>
</head>
<body>
    <header></header>

    <main>
        <div class="board">
            <div class="board_list">
                <span class="col1">글번호</span>
                <span class="col2">작성자</span>
                <span class="col3">제목</span>
                <span class="col4">작성일</span>
            </div>

            <c:choose>
                <c:when test="${empty articlesList}">
                    <div class="board_list">
                        <span class="col5">등록된 글이 없습니다.</span>
                    </div>
                </c:when>

                <c:when test="${!empty articlesList}">
                    <c:forEach var="article" items="${articlesList}" varStatus="articleNum" >
                        <div class="board_list">
                            <span class="col1">${fn:length(articlesList) - articleNum.index}</span>
                            <span class="col2">${article.id}</span>

                            <span class="col3">
                                <c:choose>
                                        <c:when test="${article.level > 1}">
                                            <c:forEach begin="1" end="${article.level}" step="1">
                                                <span style="padding-left:20px"></span>
                                            </c:forEach>
                                            <span>[답변]</span>
                                            <a class="cls1" href="/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
                                        </c:when> 
                                        <c:otherwise>
                                            <a class="cls1" href="/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
                                        </c:otherwise>
                                </c:choose>
                            </span>
                            <span class="col4">
                                <fmt:formatDate value="${article.writeDate}" pattern="yy.MM.dd" />
                            </span>
                        </div>                       
                    </c:forEach>
                </c:when>
            </c:choose>
        </div>

        <div>
            <a class="cls1" href="/board/articleForm.do">
                <p class="cls2">글쓰기</p>
            </a>
        </div>
    </main>
    
</body>
</html>