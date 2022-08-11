<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix= "fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
    request.setCharacterEncoding("UTF-8");
%>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

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

        .view_board {

            border: 5px solid green;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .box_board {
            width: 900px;
            border: 3px solid blue;
        }

        .title_board, .id_board {
            width: 50%;
            height: 40px;
            line-height: 40px;
            border: 1px solid red;
        }

        .content_board {
            width: 100%;
            border: 1px solid red;
        }

        textarea {
            resize: none;
        }

        .button_board_mod {
            display: none;
        }


    </style>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 



    <script type="text/javascript">
    
    function backToList(obj){
        obj.action="${contextPath}/board/viewArticle.do?articleNO=${articleVO.articleNO}";
        obj.submit();
        return true;
    }

    function fn_enable(obj) {
        document.getElementById("i_content").disabled=false;
        document.getElementById("tr_btn_mod").style.display="block";
		document.getElementById("tr_btn").style.display="none";
    }


    function fn_mod_article(obj) {
        obj.action = "/board/modArticle.do";
        obj.submit();
        return true;
    }
    
    // 게시글 삭제
    function fn_del_article(articleNO) {
        let form = document.createElement("form");
        form.setAttribute("method", "post");
        form.setAttribute("action", "/board/removeArticle.do")

        
        let articleNOInput = document.createElement("input");
        articleNOInput.setAttribute("type", "hidden");
        articleNOInput.setAttribute("name", "articleNO");
        articleNOInput.setAttribute("value", articleNO);

        form.appendChild(articleNOInput);
        document.body.appendChild(form);

        form.submit();
    }

    // 게시글 답변
    function fn_reply_article(articleNO) {
        console.log("fn_reply_article(articleNO) invoked.");

        let form = document.createElement("form");
        form.setAttribute("method", "post");
        form.setAttribute("action", "/board/replyForm.do");

        
        let articleNOInput = document.createElement("input");
        articleNOInput.setAttribute("type", "hidden");
        articleNOInput.setAttribute("name", "parentNO");
        articleNOInput.setAttribute("value", articleNO);

        form.appendChild(articleNOInput);
        document.body.appendChild(form);

        form.submit();
    }

    </script>

    <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 

</head>
<body>
    <header></header>

    <div class="view_board">
        <form action="/board/modArticle.do" name="frmArticle" method="POST" id="form1">
            <div class="box_board">
                    <input type="hidden" name="articleNO" value="${articleVO.articleNO}">
                    <div class="title_board">
                        <span>제목 : <input type="text" name="title" value="${articleVO.title}" disabled></span>
                    </div>
                    <div class="id_board">
                        글쓴이 : <input type="text" name="writer" value="${articleVO.id}" disabled>
                    </div>
                    <div class="content_board">
                        <textarea name="content" id="i_content" cols="120" rows="15" disabled>${articleVO.content}</textarea>
                    </div>
                    

            </div>
        
			<div class="button_board_mod" id="tr_btn_mod">
                <button type="button" onclick="fn_mod_article(frmArticle)">수정반영</button>
                <button type="button" onclick="backToList(frmArticle)">취소하기</button>
            </div>

            <div class="button_board" id="tr_btn">
                <button type="button" onclick="fn_enable(this.form)">수정하기</button>
                <button type="button" onclick="fn_del_article(${articleVO.articleNO})">삭제하기</button>
                <button type="button">목록보기</button>
                <button type="button" onclick="fn_reply_article(${articleVO.articleNO})">답글달기</button>
            </div> 
        </form>             
    </div>



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

