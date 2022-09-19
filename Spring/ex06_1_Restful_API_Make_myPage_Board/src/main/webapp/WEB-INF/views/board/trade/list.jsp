<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <!-- 부트스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- jQuery 라이브러리 연동 방법 - 네트워크 전송방법 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.0/jquery-migrate.min.js"></script>

    <!-- jQuery 슬릭 라이브러리 -->
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

    <!-- 구글 폰트 적용 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">

    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/7d82554876.js" crossorigin="anonymous"></script>

    <!-- CSS : font 설정 -->
    <link rel="stylesheet" href="/resources/common/css/font.css">
    <!-- CSS : main_header 설정 -->
    <link rel="stylesheet" href="/resources/include/css/main_header.css">
    <!-- CSS : main_footer 설정 -->
    <link rel="stylesheet" href="/resources/include/css/main_footer.css">
    <!-- CSS : main 전체 페이지 설정 -->
    <link rel="stylesheet" href="/resources/common/css/main_page.css">
    <!-- CSS : content 전체 설정 -->
    <link rel="stylesheet" href="/resources/board/trade/css/deal_list.css">
    
    <script>
        $(function () {
            console.clear();

            $('#regBtn').on('click', function () {
                // [ GET /board/register ] Request
                location.href = "/board/trade/register";
            }); // .onclick

        }); // .jq
    </script>

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
                <div class="s_box_board">

                    <!-- 글 목록 -->
                    <div class="deals_check">
                        <!-- 제목 -->
                        <div id="deal_check_title">
                            <h3 class="font-28-700">중고거래</h3>
                        </div>

                        <!-- 검색부분 -->
                        <div class="deal_check_header">
                            <form action="#" method="get" class="search">

                                <select name="deal_ico" class="ico_select">
                                    <option value="none">선택</option>
                                    <option value="1">판매</option>
                                    <option value="2">구매</option>
                                    <option value="3">나눔</option>
                                </select>
                                
                                <input type="search" placeholder="제목">
                                <button><i class="fa-solid fa-magnifying-glass"></i></button>
                                
                            
                            </form>
                        </div>

                        <!-- 말머리 부분 스위치문 활용 div 태그 -->

                        <hr class="hr-1"/>

                        <!-- 글 외부 틀 -->
                        <div class="deal_check_outter">
                            <!-- 내부 틀 -->
                            <div class="deals_check_inner">
                                
                                <!-- 글 : 한개만 a태그 -->
                                <a href="/board/trade/view" class="deal_aTag">
                                    <div class="deal_check_box">
                                        <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                        <span class="font-12-300"id="deal_ico" type="text"></span>
                                        <p class="font-14-500" id="deal_title" >Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                    </div>
                                </a>

                                <div class="deal_check_box">
                                    
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                    
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>
                                <div class="deal_check_box">
                                    <div class="deal_check_inner"><img class="deal_check_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <span class="font-12-300" id="deal_ico" type="text"></span>
                                    <p class="font-14-500" id="deal_title">Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                                </div>

                            </div>

                            <!-- 구분선 -->
                            <hr class="hr-1"/>
                            
                            <!-- 하단 버튼 -->
                            <div class="deal_check_bottom">
                                <a href="" class="hot_button">
                                    <button><i class="fa-solid fa-heart"></i></button>
                                </a>
                            </div>

                            <div class="deal_check_bottom">
                                <a class="board_write" id="regBtn">
                                    <button id="regBtn" ><i class="fa-solid fa-pencil">글쓰기</i></button>
                                </a>
                            </div>

                        </div>
                    </div>



                </div>
            </div>

        </section>

        <!-- 하단 Footer -->
        <%@ include file = "/WEB-INF/views/include/footer.jsp" %>

    </div>


    <!-- 메인화면 자바스크립트 -->
    <script src="/resources/include/js/main_header.js"></script>
    <script src="/resources/board/trade/js/deal_ico.js"></script>


    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>