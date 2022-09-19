<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>운동Tip</title>
    <!-- 부트스트랩 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- jQuery 라이브러리 연동 방법 - 네트워크 전송방법 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.0/jquery-migrate.min.js"></script>

    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.2/jquery.contextMenu.js" 
    integrity="sha512-2ABKLSEpFs5+UK1Ol+CgAVuqwBCHBA0Im0w4oRCflK/n8PUVbSv5IY7WrKIxMynss9EKLVOn1HZ8U/H2ckimWg==" 
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.2/jquery.ui.position.js" 
    integrity="sha512-vBR2rismjmjzdH54bB2Gx+xSe/17U0iHpJ1gkyucuqlTeq+Q8zwL8aJDIfhQtnWMVbEKMzF00pmFjc9IPjzR7w==" 
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- jquery-contextmenu 라이브러리 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.2/jquery.contextMenu.css" 
    integrity="sha512-EF5k2tHv4ShZB7zESroCVlbLaZq2n8t1i8mr32tgX0cyoHc3GfxuP7IoT8w/pD+vyoq7ye//qkFEqQao7Ofrag==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />

    

    <!-- 구글 폰트 적용 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">

    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/7d82554876.js" crossorigin="anonymous"></script>

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
 	
 	<!-- CSS : content 전체 설정 -->
    <link rel="stylesheet" href="/resources/board/tip/css/tip_board.css">

    
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
                    <div class="tip_board">
                        <!-- 제목 -->
                        <div id="tip_board_title">
                            <h3 class="font-28-700">운동Tip</h3>
                        </div>

                        <!-- 검색부분 -->
                        <div class="tip_board_header">
                            <form action="#" method="get" class="search">
                                
                                <input type="search" placeholder="제목">
                                <button><i class="fa-solid fa-magnifying-glass"></i></button>
                                
                            
                            </form>
                        </div>

                        <!-- 말머리 부분 스위치문 활용 div 태그 -->

                        <hr class="hr-1"/>

                        <!-- 글 외부 틀 -->
                        <div class="tip_board_outter">
                            <!-- 내부 틀 -->
                            
                            <div>
                                <div class="tip_board_inner">
                                    
                                    <table id="tip_board_table" style="height: 100%;">
                                        
                                        
                                        <thead class="board_table">
                                            <tr class="tip_board_menu">
                                                <th class="menu_num"><text class="font-16-500">번호</text></th>
                                                <th class="menu_title"><text class="font-16-500">제목</text></th>
                                                <th class="menu_writer"><text class="font-16-500">작성자</text></th>
                                                <th class="menu_date"><text class="font-16-500">작성일</text></th>
                                                <th class="menu_up"><text class="font-16-500">추천수</text></th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr class="contnet">
                                                <td><div>1</div></td>
                                                <td><div><a href="/board/tip/view" class="aTile">테스트 제목</a></div></td>
                                                <td class="context-menu-one btn btn-neutral"><div>닉네임</div></td>
                                                <td><div>2022.08.19</div></td>
                                                <td><div>77</div></td>
                                            </tr>
                                            <tr class="contnet">
                                                <td><div>1</div></td>
                                                <td><div>테스트 제목</div></td>
                                                <td class="context-menu-one btn btn-neutral"><div>닉네임</div></td>
                                                <td><div>2022.08.19</div></td>
                                                <td><div>77</div></td>
                                            </tr>
                                                                                        
                                        </tbody>
                                    
                                    </table>
                                </div>
                                
                            </div>
                            <!-- 구분선 -->
                            <hr class="hr-1"/>
                            
                            <!-- 하단 버튼 -->
                            <div class="tip_board_bottom">
                                <a href="" class="hot_button">
                                    <button><i class="fa-solid fa-heart"></i></button>
                                </a>
                            </div>

                            <div class="tip_board_bottom">
                                <a href="register" class="board_write">
                                    <button><i class="fa-solid fa-pencil"> 글쓰기</i></button>
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

    <!-- contextmenu js -->
    <script src="/resources/board/tip/js/contextMenu.js"></script>


    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>