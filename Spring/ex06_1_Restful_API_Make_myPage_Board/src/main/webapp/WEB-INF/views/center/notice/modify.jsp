<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 수정</title>
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

    
    <link rel="stylesheet" href="/resources/center/notice/css/writing.css">

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
                <div class="s_box_board">
                    <div class="writing">
                        <div class="writing_head"><br>게시글 수정</div>
                        <hr>
                        <!-- 게시글 작성 내용부분 -->

                        <form class="writing_form" 
                            action="modify" method="post">

                            <div class="writing_content">

                                <!-- 1. 게시판 선택 -->
                                게시판&nbsp;
                                <select id="select_board" disabled required>
                                    <option value="">선택</option>
                                    <option selected value="자유게시판">자유게시판</option>
                                    <option value="운동팁">운동팁</option>
                                    <option value="운동인증">운동인증</option>
                                    <option value="중고거래">중고거래</option>
                                    <option value="문의">문의</option>
                                </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br>

                                <!-- 2. 제목 -->
                                <br>제목&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="text" class="writing_title" required>
                                <br><br>

                                <!-- 3. 첨부파일 -->
                                첨부&nbsp;&nbsp;&nbsp;
                                <span class="filebox">
                                    <input class="upload_name" value="첨부파일" placeholder="첨부 이미지">

                                    <label class="input_file_button" for="input_file">
                                        파일찾기
                                    </label>

                                    <input type="file" id="input_file" class="upload-hidden" accept='image/jpg,image/png,image/jpeg,image/gif' >
                                </span>
                                <br><br>

                                <!-- 4. 내용 -->
                                내용<br>
                                <textarea class="textarea_content" required>안녕하세요</textarea>

                            </div>
						<!-- 목록 버튼 -->
                        <input type="button" class="list_btn" value="취소" onClick="location='/center/notice/list'"></input>
                        
                        <!-- 수정하기 버튼 -->
                        <input type="submit" class="writing_submit" value="수정">

                        </form>
                        
                    </div>
                    
                </div>
            </div>

        </section>

        <!-- 하단 Footer -->
        <%@ include file = "/WEB-INF/views/include/footer.jsp" %>
    </div>


    <!-- 메인화면 자바스크립트 -->
    <script src="/resources/include/js/main_header.js"></script>
    
    <script src="/resources/board/free/js/writing.js"></script>

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>