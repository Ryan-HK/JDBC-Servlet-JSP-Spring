<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        *{
            padding:0;
            margin: 0;
        }

        table {
            display: flex;
            flex-direction: column;
            align-items: center;
            border: 1px solid red;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            
            border: 1px solid blue;
        }

        div {
            border: 1px solid yellow;
        }
    </style>
</head>
<body>
    <form action="/PracticeServletJSP/Exam09_Make_MemberForm/member_action.jsp" method="POST">

        <h1>회원 가입창</h1>

        <table>
            <tr>
                <td>
                    <p>아이디  </p>
                </td>
                <td>
                    <input type="text" name="id">
                </td>
            </tr>

            <tr>
                <td>
                    <p>비밀번호  </p>
                </td>
                <td>
                    <input type="password" name="pwd">
                </td>
            </tr>

            <tr>
                <td>
                    <p>이름  </p>
                </td>
                <td>
                    <input type="text" name="name">
                </td>
            </tr>

            <tr>
                <td>
                    <p>이메일  </p>
                </td>
                <td>
                    <input type="text" name="email">
                </td>
            </tr>

        </table>
        <br>
        <div>
            <input type="submit" value="가입하기">
            <input type="reset" value="다시 입력하기">
        </div>
    </form>
</body>
</html>