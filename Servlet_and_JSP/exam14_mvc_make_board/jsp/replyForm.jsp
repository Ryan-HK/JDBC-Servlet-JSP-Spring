<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

        .wrap_write {
            display: flex;
            flex-direction: column;
            margin: 0 auto;

            width: 600px;
            border: 1px solid blue;
        }

        .write_name {
            margin-left: 15px;
            text-align: left;
        }

        .write_form {
            margin-top: 15px;
        }

        .write_form > input[name=content] {
            text-align: left;
            vertical-align: top;

            width: 95%;
            height: 300px;
        }

        .write_form > input[name=title] {
            width: 95%;
            height: 30px;
        }

        .textarea {
            vertical-align: top;
            text-align: left;
        }
        

        

    </style>
</head>
<body>
    <header></header>

    <main>
        <div class="wrap_write">
            <div class="write_name"><h2>답글쓰기</h2></div>
            
            <form action="/board/replyArticle.do" method="post" >
                <input type="hidden" name="parentNO" value="${parentNO}">
                <div class="write_form write_name">제목</div>
                <div class="write_form">
                    <input type="text" name="title">
                </div>
                <div class="write_form write_name">내용</div>
                <div class="write_form">
                    <textarea name="content" class="textarea" cols="78" rows="20"></textarea>
                </div>

                <div class="write_form write_name">이미지첨부</div>
                <div class="wrap_UploadImage"></div>

                <div class="wrap_write_button">
                    <input type="submit" value="글쓰기">
                    <input type="button" value="목록보기">
                </div>
            </form>



        </div>
        
    </main>
    
</body>
</html>