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


    <script src="/resources/mypage/js/module/mypage_group_module.js"></script>
	<script src="/resources/mypage/js/module/mypage_util_module.js"></script>




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
                        <div class="mypage-content-title font-24-700">나의 모임</div>
                        <div class="mypage-border"></div><br>
                        <!-- 진행중인 모임 버튼 -->
                        <button class="mypage-group-btn mypage-blue-btn" onClick="change_ing();"> 
                            <span>진행중인 모임</span>
                        </button>
                        <!-- 종료된 모임 버튼 -->
                        <button class="mypage-group-btn" onClick="change_end();"> 
                            <span>종료된 모임</span>
                        </button>	
    
                        <!-- 진행중인 모임 박스 -->
                        <div class="mypage-group-box">


                            <!-- 종료된 모임 박스 -->
                            <!-- <div class="mypage-group-end font-14-200">
                                <img src="/resources/mypage/img/sport.png" class="mypage-group-end-photo"/>
                                <div class="mypage-group-info">
                                    <img src="/resources/mypage/img/crown.png" class="mypage-crown-photo"/>
                                    <img src="/resources/mypage/img/closed.png" class="mypage-closed-photo"/>
                                    <p class="mypage-group-p font-20-700">종료된 모임입니다!!!</p>
                                    <p class="mypage-group-p">서울시 강남구 20시</p>
                                    <p class="mypage-group-p">4/10 참가중</p>
                                </div>
                                <div class="mypage-group-func-wrapper">
                                    <div><img src="/resources/mypage/img/edit.png" class="mypage-group-edit-photo mypage-hidden-class"/></div>
                                    <button class="mypage-group-func-btn mypage-blue-btn mypage-hidden-class" onClick="change_end();"> 
                                        <span>채팅</span>
                                    </button>
                                    <button class="mypage-group-func-btn mypage-gray-btn mypage-hidden-class" onClick="change_end();"> 
                                        <span>나가기</span>
                                    </button>              
                                </div>
                            </div>    -->
                        </div>
                        
                        <div class="board-paging-div">
                            <ul>
                                <!-- 페이징 처리 -->
                            </ul>
                        </div>

                    </div> 
                </div>
            </div>
        </section>

        <!-- 하단 Footer -->
 		<%@include file="../include/footer.jsp" %>
    </div>
    
    <!-- 마이페이지 그룹화면 자바스크립트 -->
    <script src="/resources/mypage/js/mypage_group.js"></script>

    <!-- 마이페이지 LEFT SIDE 메뉴 자바스크립트 -->
    <script src="/resources/include/js/mypage_left_side.js"></script>

    <!-- 메인-Header 자바스크립트 (공통) -->
    <script src="/resources/include/js/main_header.js"></script>

    <!-- sweetalert2 자바스크립트 -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- 임시 유저정보를 Session에 저장 -->
    <%@ page session="true" %>
    <%@ page import = "org.zerock.momofit.domain.signUp.*" %>


	<%
        UserDTO dto = new UserDTO();

        dto.setUser_no(1);
        dto.setId("id1");
        dto.setNickname("nickname1");
        dto.setUser_name("user_name1");

        session.setAttribute("userDTO", dto);
    %>


    <% 
        UserDTO myDto = (UserDTO) session.getAttribute("userDTO");

        Integer user_no = myDto.getUser_no();
        String id = myDto.getId();

        String nickname = myDto.getNickname();
        String email = myDto.getEmail();
        String user_name = myDto.getUser_name();

    %>

    <script>
        $(function () {
            // session에서 User정보 얻기
            var uno = '<%= user_no %>';
            var nickName = '<%= nickname %>';

            console.log("user_no :", uno);
            console.log("nickName :", nickName);

            // 그룹 페이지 초기화
            var page = 1;
            

            var param = {
                page : page
            }

            showGroupList(param);

            function showGroupList(param) {
                console.log(param)

                mypageGroupService.getGroupList({page : param.page || 1}, function(data) {
                    console.log('Debug(1)');

                    let listVO = data.voList;
                    let pageDTO = data.pageDTO;
                    console.log("listVO :", listVO);
                    console.log("pageDTO :", pageDTO);

                    let str = "";
                    let groupListBox = $(".mypage-group-box");


                    for(var i=0, len = listVO.length; i<len; i++){
                        var group_no = listVO[i].group_no;
                        var group_name = listVO[i].group_name;
                        var sports = listVO[i].sprots;
                        var group_loc = listVO[i].group_loc;
                        var member_max = listVO[i].member_max;
                        
                        var member_count = listVO[i].member_count;

                        var schedule = listVO[i].schedule;
                        var group_admin_no = listVO[i].user_no;

                        var path = listVO[i].path;
                        var temp = listVO[i].temp;

                        // 실제 저장 된 파일까지의 경로
                        var filePath = 'C://temp/' + path + '/temp'

                        // 내가 참여한 그룹에 대해서의 나의 번호
                        var group_member_no = listVO[i].group_member_no;

                        var format_schedule = mypageUtilService.timeFormat(schedule);


                        

                        str +=  `<div class="mypage-group-ing font-14-200">`

                                    if(!path || !temp){
                                        str += `<img src="/resources/mypage/img/sport.png" class="mypage-group-ing-photo"/>`
                                    } else {
                                        str += `<img src="\${filePath}" class="mypage-group-ing-photo"/>`
                                    }
                                    

                        str +=     `<div class="mypage-group-info">`

                                    // 접속한 user_no와 그룹장의 no가 동일할 때, "왕관" 이미지 출력
                                    if(uno == group_admin_no){
                                        str +=  `<div class="mc-photo-box"><img src="/resources/mypage/img/crown.png" class="mypage-crown-photo"/></div>`
                                    } else {
                                        str += '<div class="mc-photo-box"></div>'
                                    }

                                        
                        str +=         `<!-- 모임 정보 -->
                                        <p class="mypage-group-p font-20-700"><a href="#">\${group_name}</a></p>
                                        <p class="mypage-group-p">\${group_loc} \${format_schedule}</p>
                                        <button class="mypage-group-p">\${member_count}/\${member_max} 참가중</button>
                                    </div>
                                    <!-- 채팅, 나가기, 수정 이미지 -->
                                    <div class="mypage-group-func-wrapper">`

                                    if(uno == group_admin_no){
                                        str += `<a href=# class="a-edit-group"><img src="/resources/mypage/img/edit.png" class="mypage-group-edit-photo"/></a>`
                                    } else {
                                        str += `<div class="none-group-edit"></div>`
                                    } 

                        str +=         `<div><button class="mypage-group-func-btn mypage-blue-btn btn-group-chat" value="\${group_no}"> 
                                            <span class="font-14-500">채팅</span>
                                        </button>
                                        <button class="mypage-group-func-btn mypage-gray-btn"> 
                                            <span class="font-14-500">나가기</span>
                                        </button></div>                      
                                    </div>
                                </div>`

                        


                    } //  for


                    // 참여한 모임이 없을 때
                    if(listVO == null || listVO.length == 0){
                        str += `<div class="mypage-group-ing font-14-200">참여한 그룹이 없습니다.</div>`
                    }

                    // 페이징 처리
                    let cri = pageDTO.cri;
                    let startPage = pageDTO.startPage;
                    let endPage = pageDTO.endPage;
                    let prev = pageDTO.prev;
                    let next = pageDTO.next;
                    let currPage = cri.currPage;

                    let pagingul = $(".board-paging-div ul");
                    var pagingli = "";

                    if(prev){
                        pagingli += `<li class="mb-prev font-16-700"><</li>`;
                    }

                    for(var step = startPage; step <= endPage; step++){
                        if(startPage == 0){
                            break;
                        }

                        if(currPage == step){
                            pagingli +=  `<li class="mb-currPage mb-currPage-step font-16-700">\${step}</li>`
                        } else {
                            pagingli += `<li class="mb-currPage-step font-16-700">\${step}</li>`
                        }
                    } // for

                    if(next){
                        pagingli += `<li class="mb-next font-16-900">></li>`;
                    }


                    pagingul.html(pagingli);
                    groupListBox.html(str);

                    
                    $(".btn-group-chat").on('click', function(){
                            console.log("채팅 버튼이 클릭")
                            var value = $(this).val();
                            console.log("value :", value);

                            var popupUrl = '/group/chat?group_no=' + value;
                            var popupName = '채팅';
                            var popupSize = 'width=400, height=600, left=800, top=200';
                        
                            window.open(popupUrl, popupName, popupSize);
                    })




                    //---------------------
                    // 페이징 이동하기
                    //---------------------
                    $(".mb-currPage-step").on('click', function(){
                        // category = $("#select-board-category").val();
                        page = $(this).text();    // 이동할 페이지 선택

                        var param = {
                            page: page
                        };
                        showGroupList(param);
                    })


                    //---------------------
                    // Next 이동
                    //---------------------
                    $(".mb-next").on('click', function () {
                        // category = $("#select-board-category").val();
                        page = endPage + 1;

                        var param = {
                            page: page
                        };

                        showGroupList(param);
                    })


                    //---------------------
                    // prev 이동
                    //---------------------
                    $(".mb-prev").on('click', function(){
                        category = $("#select-board-category").val();
                        page = startPage - 1;

                        var param = {
                            page: page
                        };

                        showGroupList(param, filter);
                    })


                }) // mypageGroupService.getGroupList


            } // showGroupList


        }) // entry-point


    </script>


</body>
</html>