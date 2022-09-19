<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>신고</title>
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

    <!-- CSS : main_board_report -->
    <link rel="stylesheet" href="/resources/center/report/css/main_board_report.css">

    <!-- 메인페이지 필수 CSS -->
    <link rel="stylesheet" href="/resources/main/css/main_section_card.css">
    <link rel="stylesheet" href="/resources/main/css/main_section_board.css">

</head>

<body>
    <div class="page">

        <!-- header -->
        <%@ include file = "/WEB-INF/views/include/header.jsp" %>

        <!-- 사이드 프로필 -->
        <%@ include file = "/WEB-INF/views/include/sideLogin.jsp" %>   


        <!-- 메인 컨텐츠부 -->
        <section>

            <div class="section_wrap">
                <div class="view">

                    <div class="board_name font-20-500">
                        <img src="/resources/center/report/img/cs.png" height="25px">
                        신고
                    </div>

                    <div class="title font-28-400">
                        신고합니다 글 제목 입니다 
                    </div>
                
                    <div class="info"> 
                        <div class="info2">
                            <span class="font-12-400"> 작성자 <b class="font-12-400">홍길동</b> </span>
                            <div class="space1"></div>
                            <span class="font-12-400"> 작성시간 <b class="font-12-400">2022.08.15 12:37</b> </span>
                            <div class="space1"></div>
                        </div>
              
                        <div class="edit_delete">
                            <a href="modify"><span class="font-12-400"> 수정 </span></a>

                            <div class="space1"></div>

                            <form action="remove" method="post">
                                <button class="font-12-400" id="remove"> 삭제 </button>
                            </form>

                        </div>
                    </div>

                    <!-- 본문 -->
                    <div class="content_wrap">
    
                        <!-- 본문 이미지 -->
                        <div>
                            <img src="https://picsum.photos/id/684/600/400" alt="picsum img"> <br><br>
                        </div>
                        
                        <!-- 본문 텍스트 -->
                        <div class="font-14-400">
                            글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 <br>
                            글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 <br>
                            글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 <br> <br>
                            글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 <br>
                            글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 <br>
                            글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 글 내용이 들어갑니다 신고를 할 수 있습니다 <br> <br>
                        </div>

                    </div>
                </div>
            </div>

        </section>

        <!-- 하단 Footer -->
        <%@ include file = "/WEB-INF/views/include/footer.jsp" %>
    </div>

    <!-- 메인화면 섹션 자바스크립트` -->
    <script src="/resources/main/js/main_section.js"></script>

    <!-- 메인화면 자바스크립트 -->
    <script src="/resources/main/js/main.js"></script>

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>