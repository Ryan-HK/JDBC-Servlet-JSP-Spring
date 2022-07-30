<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean 
    id="loginBean" 
    class="exam5_javabeans.LoginBean" 
    scope="request" 
/>
<jsp:setProperty name="loginBean" property="*" />



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>1. getParameter() 를 이용한 전송 파라미터 획득 방법</h1>
    <%
        request.setCharacterEncoding("UTF-8");
        String userid = request.getParameter("userid");
        String passwd = request.getParameter("passwd");
    %>
    <h2> userid : <%= userid %></h2>
    <h2> passwd : <%= passwd %></h2>
    <hr>
    
    <h1>2. param 객체를 이용한 전송 파라미터 획득 방법</h1>
    <h2> userid : ${param.userid}</h2>
    <h2> passwd : ${param.passwd}</h2>
    <hr>

    <h1>3. requestScope를 이용한 전송파라미터 획득방법</h1>
    <h2>-- include01.jsp를 include하여 내용 출력</h2>
    <h2>-- include할 페이지에 address 파라미터 전송</h2>
    <%
        request.setAttribute("userid", userid);
        request.setAttribute("passwd", passwd);
    %>
    <jsp:include page="/Exam05_EL/include01.jsp" flush="true">
        <jsp:param name="address" value="광진구" />
    </jsp:include>
    <hr>
    
    <h1>4. 빈객체를 이용한 전송파라미터 획득방법</h1>
    <h2>-- 이미 앞에서, 자바 빈 객체에 전송파라미터를 획득하는 setProperty 지정</h2>
    <h2>표현식을 이용하여(자바 언어) 회원 정보 출력</h2>
    <h2>userid : <%= loginBean.getUserid() %></h2>
    <h2>passwd : <%= loginBean.getPasswd() %></h2>
    
    <h2>빈 id와 속성이름으로 접근하는 방법</h2>
    <h2>userid : ${loginBean.userid}</h2>
    <h2>passwd : ${loginBean.passwd}</h2>
    

</body>
</html>