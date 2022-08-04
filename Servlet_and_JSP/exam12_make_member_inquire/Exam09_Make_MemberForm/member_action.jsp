<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import= "java.util.*" %>
<%@ page import= "exam7_make_member_inquire.domain.*, exam7_make_member_inquire.persistance.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="m" class="exam7_make_member_inquire.domain.MemberBean" />
<jsp:setProperty name="m" property="*" />

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
        MemberDAO memDAO = new MemberDAO();
        memDAO.addMember(m);
        List<MemberBean> membersList = memDAO.listMembers();
        
        for(MemberBean e : membersList){
        	System.out.println(e.getId());
        }

        request.setAttribute("membersList", membersList);
    %>

    <jsp:forward page="/Exam09_Make_MemberForm/membersList.jsp" />

</body>
</html>