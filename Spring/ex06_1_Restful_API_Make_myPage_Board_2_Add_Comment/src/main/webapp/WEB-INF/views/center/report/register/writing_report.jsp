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
    <!-- CSS : main 전체 페이지 설정 -->
    <link rel="stylesheet" href="/resources/common/css/main_page.css">
    <!-- CSS : main 미디어 태그 -->
    <link rel="stylesheet" href="/resources/common/css/main_mediatag.css">

    <link rel="stylesheet" href="/resources/center/report/css/writing.css">
    <!-- <link rel="stylesheet" href="css/모임개설2.css"> -->

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
                        <div class="writing_head"><br>신고합니다</div>
                        <hr>
                        <!-- 게시글 작성 내용부분 -->

                        <form action="/center/report/register" method="POST" class="writing_form">

                            <div class="writing_content">

                                <!-- 1. 신고유형 선택 -->
                                유형&nbsp;&nbsp;&nbsp;&nbsp;
                                <select id="select_report" required>
                                    <option value="">선택</option>
                                    <option value="욕설,비방,차별,혐오">욕설,비방,차별,혐오</option>
                                    <option value="광고글">광고글</option>
                                    <option value="음란">음란</option>
                                    <option value="기타">기타</option>
                                </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <!-- 2-1. (중고거래 선택시) 팝니다/삽니다/나눔 선택 -->
                                <!-- <select id="select_transaction" required>
                                    <option value="">선택</option>
                                    <option value="팝니다">팝니다</option>
                                    <option value="삽니다">삽니다</option>
                                    <option value="나눔">나눔</option>
                                </select> -->
                                
                                <!-- 2-2. (문의 선택시) 공개/비공개 선택 -->
                                <span id="access">
                                    <input type="radio" name="access" value="1"> 공개
                                    <input type="radio" name="access" value="2" checked> 비공개
                                </span><br>

                                <!-- 3. 제목 -->
                                <br>제목&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="text" class="writing_title" required>
                                <br><br>

                                <!-- 4. 첨부파일 -->
                                첨부&nbsp;&nbsp;&nbsp;
                                <span class="filebox">
                                    <input class="upload_name" value="첨부파일" placeholder="첨부 이미지">

                                    <label class="input_file_button" for="input_file">
                                        파일찾기
                                    </label>

                                    <input type="file" id="input_file" class="upload-hidden" accept='image/jpg,image/png,image/jpeg,image/gif' >
                                </span>
                                <br>

                                <!-- 5. 대상 -->
                                대상&nbsp;&nbsp;&nbsp;
                                <input type="text" class="username" placeholder="닉네임">
                                <input type="button" class="username_search" value="검색"></input>
                                <br><br>

                                <!-- 6. 내용 -->
                                내용<br>
                                <textarea class="report_textarea_content" required>제재 부탁드립니다...</textarea>
																
                            </div>                
                            <!-- 돌아가기 버튼 -->
                            <input type="button" class="report_back" value="취소" onclick="location='/center/report/list'">  
                                      
                            <!-- 작성하기 버튼 -->
                            <input type="submit" class="report_submit" value="신고하기">
                            
                            
                           

							
                        </form>
                        
                    </div>
                    
                </div>
            </div>

        </section>


        <!-- 하단 Footer -->
        <%@ include file = "/WEB-INF/views/include/footer.jsp" %>
        
    </div>


    <!-- 메인화면 자바스크립트 -->
    <script src="/resources/main/js/main.js"></script>
    <script src="/resources/center/report/js/writing.js"></script>
    <script src="/resources/center/report/js/userSearch.js"></script>

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>