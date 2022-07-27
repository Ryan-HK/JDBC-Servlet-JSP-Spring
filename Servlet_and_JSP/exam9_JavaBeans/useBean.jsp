<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean
    id = "myBean"
    class = "exam5_javabeans.LoginBean"
    scope = "page" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>/Exam03_JavaBeans/useBean.jsp</h1>

    <h1>useBean 액션태그의 사용실습</h1>

    <%
        myBean.setUserid("Ryan");
        myBean.setPasswd("1234");
    %>

    <h3>1. userid : <%= myBean.getUserid() %></h3>
    <h3>2. passwd : <%= myBean.getPasswd() %></h3>
</body>
</html>