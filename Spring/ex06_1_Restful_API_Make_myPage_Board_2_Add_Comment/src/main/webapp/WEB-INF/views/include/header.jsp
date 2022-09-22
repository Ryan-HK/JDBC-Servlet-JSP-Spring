 <!-- header -->
 <header>
    <div class="header_wrap_top">
        <div class="h_top_item">
            <!-- 비로그인 시, 나와야 될 항목 -->
            <a href="/signin" class="link1 font-12-400">로그인</a>
            <div class="space"></div>
            <a href="/signup" class="link1 font-12-400">회원가입</a>
            <div class="space"></div>
            <!-- 로그인 시, 나와야 될 항목  -->
            <a href="" class="link1 font-12-400">로그아웃</a>
            <div class="space"></div>
            <div class="box_message">
                <a href="/mypage/message_receive" class="link1 font-12-400">쪽지</a>
            </div>
            <div class="space"></div>
            <a href="/mypage/my_group" class="link1 font-12-400">마이페이지</a>
        </div>
    </div>

    <!-- 메인 로고 박스 -->
    <div class="header_wrap_logo">
        <div></div>
        <div class="box_logo">
            <a href="/"><img src="/resources/include/img/logo_momofit.png" width="180"></a>
        </div>
        <div></div>
    </div>
</header>

<!-- header-navbar box -->
<div class="header_bottom">
    <div></div>
    <div class="header_wrap_nav">
        <div class="nav_box_img">
            <!-- nav 홈버튼 (메인화면으로) -->
            <a href="/">
                <img src="/resources/include/img/button_home.png" width="30">
            </a>
        </div>

        <div class="nav_box_menu">
            <!-- 드랍메뉴버튼 첫번째 -->
            <div class="dropdown">
                <button class="dropbtn"> 
                    <span class="dropbtn_icon font-16-500">모임목록</span>
                </button>
                <div class="dropdown-content">
                    <a href="/group/list" class="font-14-400">모임보기</a>
                    <a href="/group/register" class="font-14-400">모임개설</a>
                </div>
            </div>

            <!-- 드랍메뉴버튼 두번째 -->
            <div class="dropdown">
                <button class="dropbtn"> 
                    <span class="dropbtn_icon font-16-500">커뮤니티</span>
                </button>
                <div class="dropdown-content">
                    <a href="/board/free/list" class="font-14-400">자유게시판</a>
                    <a href="/board/tip/list" class="font-14-400">운동Tip</a>
                    <a href="/board/pic/list" class="font-14-400">운동인증</a>
                </div>
            </div>

            <!-- 드랍메뉴버튼 세번째 -->
            <div class="dropdown">
                <button class="dropbtn"> 
                    <a href="/board/trade/list"><span class="dropbtn_icon font-16-500">중고거래</span></a>
                </button>
            </div>

            <!-- 드랍메뉴버튼 네번째 -->
            <div class="dropdown">
                <button class="dropbtn"> 
                    <span class="dropbtn_icon font-16-500">고객센터</span>
                </button>
                <div class="dropdown-content">
                    <a href="/center/notice/list" class="font-14-400">공지글</a>
                    <a href="/center/qna/list" class="font-14-400">문의</a>
                    <a href="/center/report/list" class="font-14-400">신고</a>
                    <a href="/center/faq/list" class="font-14-400">FAQ</a>
                </div>
            </div>
        </div>

        <div class="nav_box_search">
            <!-- 메인화면 모임 검색 -->
            <form action="">
                <div class="search_box">
                    <input type="text" name="" id="" class="search_text" placeholder="모임을 검색하세요.">
                    <label for="search_submit" class="label_search_submit"><img src="/resources/include/img/button_search1.png" width="26"></label>
                    <input type="submit" id="search_submit">
                </div>
            </form>
        </div>
    </div>

	
    <div></div>
</div>  