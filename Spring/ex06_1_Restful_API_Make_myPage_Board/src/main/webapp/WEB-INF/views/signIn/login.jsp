<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <!-- 부트스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- jQuery 라이브러리 연동 방법 - 네트워크 전송방법 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.0/jquery-migrate.min.js"></script>

    <!-- 구글 폰트 적용 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <!-- CSS : font 설정 -->
    <link rel="stylesheet" href="/resources/common/css/font.css">
    <!-- CSS : main_header 설정 -->
    <link rel="stylesheet" href="/resources/include/css/main_header.css">
    <!-- CSS : main footer 설정 -->
    <link rel="stylesheet" href="/resources/include/css/main_footer.css">
    <!-- CSS : main 전체 페이지 설정 -->
    <link rel="stylesheet" href="/resources/common/css/main_page.css">
    <!-- CSS : main 미디어 태그 -->
    <link rel="stylesheet" href="/resources/common/css/main_mediatag.css">
    
    <link rel="stylesheet" href="/resources/signIn/css/login.css">

</head>

<body>
    <div class="page">

        <!-- header -->
        <%@ include file = "/WEB-INF/views/include/header.jsp" %>

        <!-- 메인 컨텐츠부 -->
        <section>

            <div class="section_wrap">
                <div class="s_box_board">
                    <form action="/signin" method="POST">
                        <div class="login_box">
                            <br><h3 class="form_name">로그인</h3><br>
                            <!-- <span class="login_text">로그인</span><br> -->
                            
                            <input type="text" name="login_id" id="login_id" autofocus="1" placeholder="아이디를 입력하세요."><br>
                            <input type="password" name="login_pw" id="login_pw" placeholder="비밀번호를 입력하세요."><br>
                            
                            <div class="checkbox_autologin">

                                <input type="checkbox" class="checkbox_autologin" value="1"> 자동로그인
                            
                            </div>

                            <!-- 로그인 버튼 -->
                            <button type="submit" class="button_login" onclick="alert('로그인 성공!')" name="button_login">
                            로그인
                            </button><br>

                            <!-- 회원가입 버튼 -->
                            <button type="button" class="button_join" name="button_join" onclick="location.href='/signup'">
                                회원가입
                            </button><br>
                            
                            <div class="login_link">
                                <a href="/find/id" class="id_link">아이디 찾기</a>
                                <span class="link_divider"> | </span>
                                <a href="/find/pw" class="pw_link">비밀번호 찾기</a>                            
                            </div>  
                        </div>
                        
                    </form>
                </div>
            </div>

        </section>

        <!-- 하단 Footer -->
        <%@ include file = "/WEB-INF/views/include/footer.jsp" %>

    </div>


    <!-- 메인화면 자바스크립트 -->
    <script src="/resources/main/js/main.js"></script>

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>