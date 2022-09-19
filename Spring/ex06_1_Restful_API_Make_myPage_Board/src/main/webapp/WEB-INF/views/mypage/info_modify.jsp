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

    <!-- jQuery 슬릭 라이브러리 -->
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />


    <!-- Swiper 슬라이드 라이브러리 -->
    <!-- <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script> -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- 구글 폰트 적용 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/7d82554876.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/556efa47d7.js" crossorigin="anonymous"></script>

    <!-- 전 페이지 공통 설정 -->
    <!-- CSS : font 설정 -->
    <link rel="stylesheet" href="/resources/common/css/font.css">
    <!-- CSS : main_header 설정 -->
    <link rel="stylesheet" href="/resources/include/css/main_header.css">
    <!-- CSS : main 전체 페이지 설정 -->
    <link rel="stylesheet" href="/resources/common/css/main_page.css">
    <!-- CSS : main 미디어 태그 -->
    <link rel="stylesheet" href="/resources/common/css/main_mediatag.css">
    <!-- CSS : main footer 설정 -->
    <link rel="stylesheet" href="/resources/include/css/main_footer.css">
    <!-- CSS : 사이드 프로필 -->
    <link rel="stylesheet" href="/resources/include/css/side_profile.css">
    
    <!-- CSS : 마이페이지 필수 CSS -->
    <link rel="stylesheet" href="/resources/include/css/mypage_left_side.css">
    <!-- CSS : 마이페이지 컨텐츠 영역 CSS -->
    <link rel="stylesheet" href="/resources/mypage/css/mypage_content1.css">
    <!-- CSS : 마이페이지 개인정보수정 CSS -->
    <link rel="stylesheet" href="/resources/mypage/css/mypage_info_modify.css">

</head>

<body>
    <div class="page">

        <!-- header -->
        <%@include file="../include/header.jsp" %>

        <!-- 사이드메뉴 -->
        <%@include file="../include/sideLogin.jsp" %>


        <!-- 메인 컨텐츠부 -->
        <!-- 메인 컨텐츠부 -->
        <section>
            <div class="section_inner">
                <div class="section_wrap">
                    
                    <%@include file="../include/mypage_left_side.jsp" %>

                    <div class="s_box_content">
                        <div class="name1 font-24-700"><span class="font-24-700">개인정보수정</span></div>
                        <div class="mypage-border"></div><br>
    
                        <div class="s_box_content2">
                            <div class="name2 font-22-700">기본정보</div>
    
                            <form action="#" method="post">
                                <table class="table table-boardered">
                                    <tr name3 class="name3 font-14-400">
                                        <th>아이디</th>
                                        <td><input type="text" class="form-control" name="id" id="id" placeholder="id" readonly></td>
                                        </td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>닉네임</th>
                                        <td><input type="text" class="form-control" name="nick_name" id="nick_name"
                                                placeholder="id"></td>
                                        <td><input type="button" value="중복확인" onclick="nickCheck()"
                                                class="btn btn-primary" /></td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>비밀번호</th>
                                        <td><input type="password" class="form-control" name="pass1" placeholder="비밀번호">
                                        </td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>비밀번호 확인</th>
                                        <td><input type="password" class="form-control" name="pass2" placeholder="비밀번호 확인">
                                        </td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>이름</th>
                                        <td><input type="text" class="form-control" name="real_name"></td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>전화번호</th>
                                        <td><input type="tel" class="form-control" name="tel" placeholder="000-0000-0000">
                                        </td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>성별</th>
                                        <td>
                                            <select name="gender" class="form-control">
                                                <option value="gender_default">성별</option>
                                                <option value="gender_man">남자</option>
                                                <option value="gender_woman">여자</option>
                                            </select>
                                        </td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>생년월일</th>
                                        <td>
                                            <input type="date" name="birth" class="form-control">
                                        </td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>이메일</th>
                                        <td>
                                            <input class="form-control-sm" name="email1" type="text"> @ <input
                                                class="form-control-sm" name="email2" type="text">
                                            <select class="form-control-sm" name="select_email"
                                                onChange="selectEmail(this)">
                                                <option value="" selected>선택하세요</option>
                                                <option value="naver.com">naver.com</option>
                                                <option value="gmail.com">gmail.com</option>
                                                <option value="hanmail.com">hanmail.com</option>
                                                <option value="1">직접입력</option>
                                            </select>
                                        </td>
                                        <td><button type="button" class="btn btn-primary">인증</button></td>
    
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
    
                                        <th>인증번호</th>
                                        <td><input type="password" class="form-control" name="cer_num"
                                                placeholder="인증번호를 입력하세요."></td>
                                    </tr>
    
                                    <tr>
                                        <td colspan="3">
                                            <hr>
                                            <div class="name2 font-22-700" style="text-align: center;">추가정보</div>
                                        </td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>지역</th>
                                        <td><input type="search" class="form-control" name="location" placeholder="지역"></td>
                                        <td><button type="button" class="btn btn-primary">지역검색</button></td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>관심운동</th>
                                        <td>
                                            <input type="checkbox" name="hobby" value="헬스">헬스 &nbsp;
                                            <input type="checkbox" name="hobby" value="등산">등산 &nbsp;
                                            <input type="checkbox" name="hobby" value="축구">축구 &nbsp;
                                            <input type="checkbox" name="hobby" value="농구">농구 &nbsp;
                                            <input type="checkbox" name="hobby" value="농구">농구 &nbsp; <br>
                                            <input type="checkbox" name="hobby" value="농구">농구 &nbsp;
                                            <input type="checkbox" name="hobby" value="농구">농구 &nbsp;
                                            <input type="checkbox" name="hobby" value="농구">농구 &nbsp;
                                            <input type="checkbox" name="hobby" value="농구">농구 &nbsp;
                                            <input type="checkbox" name="hobby" value="농구">농구 &nbsp;
                                        </td>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <div class="profile_wrap">
                                            <th>프로필 사진</th>
                                            <td>
                                                <img src="/resources/mypage/img/profile.png" class="profile"><br>
                                                <label class="btn btn-sm" for="input-file">추가</label><input type="file"
                                                    id="input-file" style="display: none;">
                                                <button type="button" class="btn btn-secondary btn-sm">기본</button>
                                            </td>
                                        </div>
                                    </tr>
    
                                    <tr name3 class="name3 font-14-400">
                                        <th>한줄 소개</th>
                                        <td><input type="text" class="form-control" name="introduction" placeholder="(선택)">
                                        </td>
                                    </tr>
    
                                </table>
    
                                <div>
                                    <input type="submit" class="sign_up" value="수정하기">
                                </div>
    
    
    
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- 하단 Footer -->
 		<%@include file="../include/footer.jsp" %>
    </div>

    <!-- 마이페이지 개인정보수정 자바스크립트 -->
    <script src="/resources/mypage/js/mypage_info_modify.js"></script>

    <!-- 마이페이지 LEFT SIDE 메뉴 자바스크립트 -->
    <script src="/resources/include/js/mypage_left_side.js"></script>

    <!-- 메인-Header 자바스크립트 (공통) -->
    <script src="/resources/include/js/main_header.js"></script>

    <!-- sweetalert2 자바스크립트 -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>