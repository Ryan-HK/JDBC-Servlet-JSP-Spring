<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="myBean" class="exam5_javabeans.LoginBean" scope="page" />

<jsp:setProperty name="myBean" property="userid" value="Ryan"/>
<jsp:setProperty name="myBean" property="passwd" value="1234"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>jsp:setProperty 실습입니다.</h1>

    1. userid : <%= myBean.getUserid() %> <br>
    2. passwd : <%= myBean.getPasswd() %>

    <h1>jsp:getProperty 액션태그로도, 표현태그를 대신할 수 있다.</h1>

    1. userid : <jsp:getProperty name="myBean" property="userid"/><br>
    2. passwd : <jsp:getProperty name="myBean" property="passwd"/>
</body>
</html>