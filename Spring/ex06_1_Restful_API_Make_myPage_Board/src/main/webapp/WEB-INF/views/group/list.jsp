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
    <!-- CSS : main 전체 페이지 설정 -->
    <link rel="stylesheet" href="/resources/common/css/main_page.css">    
    <link rel="stylesheet" href="/resources/common/css/main_mediatag.css">    
    
    <!-- CSS : main_header 설정 -->
    <link rel="stylesheet" href="/resources/include/css/main_header.css">
    <!-- CSS : main_footer 설정 -->
    <link rel="stylesheet" href="/resources/include/css/main_footer.css">
    <!-- CSS : main_side 설정 -->
    <link rel="stylesheet" href="/resources/include/css/side_profile.css">
    
    <!-- CSS : content 전체 설정 -->
    <link rel="stylesheet" href="/resources/group/css/groups.css">


</head>

<body>
    <div class="page">
        <!-- header -->
        <%@ include file = "/WEB-INF/views/include/header.jsp" %>

		<%@ include file = "/WEB-INF/views/include/sideLogin.jsp" %>


        <!-- 메인 컨텐츠부 -->
        <section>

            <div class="section_wrap">
                <div class="s_box_board">

                    <div class="best_group">
                        <div class="best_txt">
                            <h3 class="font-28-500">Best 모임</h3>
                        </div>

                        <!-- Best 모임 틀(버튼포함) -->
                        <div class="best_outter">

                            <!-- Best 모임 내부 틀 -->
                            <div class="best_inner">

                                <!-- Best 모임 -->
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/683/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/682/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/681/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/679/220/130"></div>
                                    <p class="font-14-500">123</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/676/220/130"></div>
                                    <p>테스틈ㄴ아ㅓㅣㅜㄴ마ㅣㅇ</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/677/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/676/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                            </div>


                        </div>
                    </div>

                    <!-- 모임목록 -->
                    <div class="groups">
                        <div id="group_h3">
                            <h3 class="font-28-500">모임</h3>
                        </div>

                        <!-- 검색부분 -->
                        <div class="group_header">
                            <form action="#" method="get" class="search">
                                <input type="search" placeholder="모임검색">

                                <select name="sports" class="sport">
                                    <option value="0">관심운동</option>
                                    <option value="1">헬스</option>
                                    <option value="2">등산</option>
                                    <option value="3">축구</option>
                                    <option value="4">농구</option>
                                </select>



                                <div class="make_group_address">
                                    <text class="font-16-500">지역</text>
                                    <select name="addressRegion" id="addressRegion" required></select>
                                    <select name="addressDo" id="addressDo" required></select>
                                    <select name="addressSiGunGu" id="addressSiGunGu"></select>
                                </div>

                                <button><i class="fa-solid fa-magnifying-glass"></i></button>

                            </form>
                        </div>
                        <hr class="hr-1"/>

                        <!-- 모임 외부 틀 -->
                        <div class="group_outter">
                            <!-- 내부 틀 -->
                            <div class="group_inner">
                                
                                <!-- 모임 : 한개만 a태그 -->
                                <a href="" class="group_aTag">
                                    <div class="group_box">
                                        <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                        <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                            Architecto, nesciunt?</p>
                                    </div>
                                </a>

                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>
                                <div class="group_box">
                                    <div class="group_box_inner"><img class="group_box_img" src="https://picsum.photos/id/684/220/130"></div>
                                    <p class="font-14-500">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Architecto, nesciunt?</p>
                                </div>

                            </div>
                            
                        </div>
                        <!-- 구분선 -->
                        <hr class="hr-1"/>
                                
                        <!-- 하단 버튼 -->
                        <div class="notice_board_bottom">
                            <a href="" class="hot_button">
                                <button><i class="fa-solid fa-heart"></i></button>
                            </a>
                        </div>

                        <div class="notice_board_bottom">
                            <a href="" class="board_write">
                                <button><i class="fa-solid fa-pencil"> 글쓰기</i></button>
                            </a>
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

    <!-- Best 슬라이드 js -->
    <script src="/resources/group/js/slick.js"></script>

    <!-- 위치js -->
    <script src="/resources/group/js/group_open_location.js"></script>
    
    <!-- <script type="text/javascript">
      $.noConflict();
	</script>   -->

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>