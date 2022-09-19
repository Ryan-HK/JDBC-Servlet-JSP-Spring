<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ</title>
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

    <!-- CSS : main_board_faq -->
    <link rel="stylesheet" href="/resources/center/faq/css/main_board_faq.css">

    <!-- 메인페이지 필수 CSS -->
    <link rel="stylesheet" href="/resources/common/css/main_section_card.css">
    <link rel="stylesheet" href="/resources/common/css/main_section_board.css">


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

                    <!-- 제목 -->
                    <div class="faq_title">
                        <p class="font-28-700">FAQ</p>
                    </div>

                    <!-- 검색부분 -->
                    <div id="faq_search" class="nav_box_search">
                        <!-- 메인화면 모임 검색 -->
                        <form action="">
                            <div class="search_box">
                                <input type="text" name="" id="" class="search_text" placeholder="궁금한 사항을 검색하세요">
                                <label for="search_submit" class="label_search_submit"><img src="/resources/center/faq/img/button_search1.png" width="26"></label>
                                <input type="submit" id="search_submit">
                            </div>
                        </form>
                    </div>

                    <hr class="hr-1"/>


                    <!-- 아코디언 메뉴 -->
                    <div class="accordion">
                        <input type="checkbox" id="answer01">
                        <label for="answer01" class="font-16-700">
                            여기에 FAQ 질문 제목이 들어갑니다 
                            <em></em> 
                        </label>                        
                        <div>
                            <p class="font-14-400"> 여기에 FAQ 질문에 대한 답변이 들어갑니다. 자주 묻는 질문에 대한 답변이 들어간다구요 아시겠어요?  여기에 FAQ 질문에 대한 답변이 들어갑니다. 자주 묻는 질문에 대한 답변이 들어간다구요 아시겠어요? </p>
                        </div>

                        <input type="checkbox" id="answer02">
                        <label for="answer02" class="font-16-700">
                            여기에 FAQ 질문 제목이 들어갑니다 
                            <em></em> 
                        </label>                        
                        <div>
                            <p class="font-14-400"> 여기에 FAQ 질문에 대한 답변이 들어갑니다. 자주 묻는 질문에 대한 답변이 들어간다구요 아시겠어요?  여기에 FAQ 질문에 대한 답변이 들어갑니다. 자주 묻는 질문에 대한 답변이 들어간다구요 아시겠어요? </p>
                        </div>

                        <input type="checkbox" id="answer03">
                        <label for="answer03" class="font-16-700">
                            여기에 FAQ 질문 제목이 들어갑니다 
                            <em></em> 
                        </label>                        
                        <div>
                            <p class="font-14-400"> 여기에 FAQ 질문에 대한 답변이 들어갑니다. 자주 묻는 질문에 대한 답변이 들어간다구요 아시겠어요?  여기에 FAQ 질문에 대한 답변이 들어갑니다. 자주 묻는 질문에 대한 답변이 들어간다구요 아시겠어요? </p>
                        </div>

                        <input type="checkbox" id="answer04">
                        <label for="answer04" class="font-16-700">
                            여기에 FAQ 질문 제목이 들어갑니다 
                            <em></em> 
                        </label>                        
                        <div>
                            <p class="font-14-400"> 여기에 FAQ 질문에 대한 답변이 들어갑니다. 자주 묻는 질문에 대한 답변이 들어간다구요 아시겠어요?  여기에 FAQ 질문에 대한 답변이 들어갑니다. 자주 묻는 질문에 대한 답변이 들어간다구요 아시겠어요? </p>
                        </div>

                        <input type="checkbox" id="answer05">
                        <label for="answer05" class="font-16-700">
                            여기에 FAQ 질문 제목이 들어갑니다 
                            <em></em> 
                        </label>                        
                        <div>
                            <p class="font-14-400"> 여기에 FAQ 질문에 대한 답변이 들어갑니다. 자주 묻는 질문에 대한 답변이 들어간다구요 아시겠어요?  여기에 FAQ 질문에 대한 답변이 들어갑니다. 자주 묻는 질문에 대한 답변이 들어간다구요 아시겠어요? </p>
                        </div>
                    </div>

                    <hr class="hr-1"/>
            
                </div>
            </div>

            

        </section>

        <!-- 하단 Footer -->
        <%@ include file = "/WEB-INF/views/include/footer.jsp" %>
    </div>

    <!-- 메인화면 섹션 자바스크립트` -->
    <script src="/resources/include/js/main_section.js"></script>

    <!-- 메인화면 자바스크립트 -->
    <script src="/resources/include/js/main_header.js"></script>

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>