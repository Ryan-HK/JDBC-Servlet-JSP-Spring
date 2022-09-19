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
                        <!-- 각 페이지 제목 -->
                        <div class="mypage-content-title font-24-700">내 댓글</div>
                        <div class="mypage-border"></div><br>
    
                        <!-- 내 댓글 게시판 테이블 -->
                        <table class="mypage-table font-14-400">
                            <!-- 게시판 헤더 -->
                            <thead class="mypage-thead-tr">
                                <tr>
                                    <th>
                                        <div class="mypage-checkbox"><input type="checkbox" name="comment-check" onclick='selectAll(this)'/></div>
                                        댓글
                                    </th>
                                    <th>작성자</th>
                                    <th>시간</th>
                                </tr>
                            </thead>
                            <!-- 게시판 바디 -->
                            <tbody>
                                <!-- 내가 쓴 댓글 내용 -->
                                <tr class="mypage-tbody-tr">
                                    <td class="mypage-table-title">
                                        <div class="mypage-checkbox"><input type="checkbox" name="comment-check"></div>
                                        <div class="mypage-comment"><a href="#" class="mypage-link">소음 어때??</a></div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <!-- 원글 제목, 댓글 작성자, 작성 시간 -->
                                <tr class="mypage-tr-border mypage-tbody-tr mypage-origin-board-title font-14-400">
                                    <td>
                                        <div class="td-title">
                                            <div class="mypage-title-content">원문제목 : 위닉스 뽀송 제습기 후기</div>
                                            <div class="mypage-comm-cnt">14</div>
                                        </div>
                                    </td>
                                    <td>지리산불곰</td>
                                    <td>22.01.12 00:12</td>
                                </tr>
                                <tr class="mypage-tbody-tr">
                                    <td class="mypage-table-title">
                                        <div class="mypage-checkbox"><input type="checkbox" name="comment-check"></div>
                                        <div class="mypage-comment"><a href="#" class="mypage-link">소음 어때??</a></div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <!-- 원글 제목, 댓글 작성자, 작성 시간 -->
                                <tr class="mypage-tr-border mypage-tbody-tr mypage-origin-board-title font-14-400">
                                    <td>
                                        <div class="td-title">
                                            <div class="mypage-title-content">원문제목 : 위닉스 뽀송 제습기 후기</div>
                                            <div class="mypage-comm-cnt">14</div>
                                        </div>
                                    </td>
                                    <td>지리산불곰</td>
                                    <td>22.01.12 00:12</td>
                                </tr>
                                <tr class="mypage-tbody-tr">
                                    <td class="mypage-table-title">
                                        <div class="mypage-checkbox"><input type="checkbox" name="comment-check"></div>
                                        <div class="mypage-comment"><a href="#" class="mypage-link">소음 어때??</a></div>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <!-- 원글 제목, 댓글 작성자, 작성 시간 -->
                                <tr class="mypage-tr-border mypage-tbody-tr mypage-origin-board-title font-14-400">
                                    <td>
                                        <div class="td-title">
                                            <div class="mypage-title-content">원문제목 : 위닉스 뽀송 제습기 후기</div>
                                            <div class="mypage-comm-cnt">14</div>
                                        </div>
                                    </td>
                                    <td>지리산불곰</td>
                                    <td>22.01.12 00:12</td>
                                </tr>
                                <!-- 댓글 삭제 버튼 -->
                                <button class="mypage-btn"> 
                                    <span class="dropbtn_icon">삭제</span>
                                </button>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>

        <!-- 하단 Footer -->
 		<%@include file="../include/footer.jsp" %>
    </div>

    <!-- 마이페이지 댓글 자바스크립트 -->
    <script src="/resources/mypage/js/mypage_comment.js"></script>

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