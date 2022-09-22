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

    <script src="/resources/mypage/js/module/mypage_comment_module.js"></script>
	<script src="/resources/mypage/js/module/mypage_util_module.js"></script>
	
	<script src="/resources/mypage/js/mypage_comment.js"></script>
	

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
                        <div class="mypage-content-title font-24-700">내 댓글<span class="font-12-400 mp-total-page"></span></div>
                        <div class="mypage-border"></div><br>
    
                        <!-- 내 댓글 게시판 테이블 -->
                        <table class="mypage-table font-14-400">
                            <!-- 게시판 헤더 -->
                            <thead class="mypage-thead-tr">
                                <tr class="mp-tr">
                                    <th class="mypage-checkbox mc-checkbox"><input type="checkbox" name="comment_check" onclick='selectAll(this)'/></th>
                                    <th class="mc-select">
                                        <select name="cetegory_no" id="select-board-category">
                                            <option value="0" selected>게시판</option>
                                            <option value="1">자유게시판</option>
                                            <option value="2">운동tip</option>
                                            <option value="3">운동인증</option>
                                            <option value="4">중고거래</option>
                                        </select>
                                    </th>
                                    <th class="mc-title">게시글제목 / 내 댓글</th>
                                    <th class="mc-date">작성일</th>
                                </tr>
                            </thead>
                            <!-- 게시판 바디 -->
                            <tbody class="comment-tbody">
                                <!-- 댓글 리스트 출력 영역 -->
                            </tbody>   
                                <!-- 댓글 삭제 버튼 -->
                                <button class="mypage-btn"> 
                                    <span class="dropbtn_icon">삭제</span>
                                </button>
                        </table>

                        <div class="bs-wrap">
                            <select name="" id="bs-select" class="bs-select">
                                <option value="0" selected>댓글</option>
                            </select>
                            <input type="text" class="bs-text">
                            <button class="bs-btn">검색</button>
                            <input type="hidden" id="hidden-bs-type">
                            <input type="hidden" id="hidden-bs-text">
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


    <script>

        $(function(){

            // 현재 페이지와 게시판 카테고리를 저장하기 위한, 변수 선언
            var page = 1;
            var category = 0;

            // comment_list 페이지 초기화 시, 변수 초기화
            var param = {
                page : page,
                category : category
            }
            
            // 검색
            var filter = {
                type : '',
                keyword : ''
            }

            // myPage - 내 댓글 목록 조회 (1번 Page)
            showCommentList(param, filter);

            function showCommentList(param, filter){
                // console.log(param, filter);

                mypageCommentService.getCommentList({page: param.page||1, category: param.category||0}, filter, function(data){

                    let listVO = data.voList;
                    let pageDTO = data.pageDTO;

                    let str = "";
                    let commentBox = $(".comment-tbody");

                    for(var i=0, len = listVO.length; i<len; i++){
                        // console.log("리스트 :", listVO[i]);

                        var comm_no = listVO[i].comm_no;
                        var board_no = listVO[i].board_no;
                        var text = listVO[i].text;
                        var comm_date = listVO[i].comm_date;
                        var parent_no = listVO[i].parent_no;
                        var user_no = listVO[i].user_no;    // 댓글 쓴 이 (나)

                        var title = listVO[i].title;        // 댓글이 달린 글 제목
                        var category_name = listVO[i].category_name;    // 게시판 카테고리

                        var format_comment_date = mypageUtilService.timeFormat(comm_date);


                        str +=
                        `<tr class="mypage-tbody-tr mypage-tr-border mp-tr">
                            <td class="mypage-checkbox mc-checkbox"><input type="checkbox" name="comment-check" class="comment-check" value="\${comm_no}"></td>
                            <td class="mc-selected">\${category_name}</td>
                            <td class="mypage-table-title mc-title">
                                <div class="mp-b-comm-wrap">
                                    <div class="mypage-title-content mp-title-content mc-title-content">게시글 제목 : \${title}</div>
                                    <div class="mp-comm"><i class="fa-solid fa-arrow-right"></i>&nbsp;\${text}</div>
                                </div>
                            </td>
                            <td class="mc-date">\${format_comment_date}</td>
                        </tr>`
                    } // for

                    // 작성 댓글이 없을 때...
                    if(listVO == null || listVO.length == 0){
                        str += `<tr class="mypage-tbody-tr mypage-tr-border">
                            <td colspan="4">작성 된 글이 없습니다.</td>
                        </tr>`;
                    };

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
                    commentBox.html(str);

                    //---------------------
                    // 페이지 및 댓글 수 Info
                    //---------------------
                    let infoPageBox = $(".mp-total-page");     // 총  댓글 개수 + 페이지 위치

                    var totalAmount = pageDTO.totalAmount;
                    var realEndPage = pageDTO.realEndPage;

                    var info = `total:\${totalAmount}, page \${currPage}/\${realEndPage}`;
                    infoPageBox.text(info);
                    
                    //---------------------
                    // 페이징 이동하기
                    //---------------------
                    $(".mb-currPage-step").on('click', function(){
                        category = $("#select-board-category").val();   // 카테고리 선택
                        page = $(this).text();    // 이동할 페이지 선택

                        var param = {
                            page: page,
                            category: category
                        };

                        var filter = {
                            type : $("#hidden-bs-type").val(),
                            keyword :$("#hidden-bs-text").val()
                        };

                        showCommentList(param, filter);
                    })


                    //---------------------
                    // Next 이동
                    //---------------------
                    $(".mb-next").on('click', function () {
                        category = $("#select-board-category").val();   // 카테고리 선택
                        page = endPage + 1;

                        var param = {
                            page: page,
                            category: category
                        };


                        var filter = {
                            type : $("#hidden-bs-type").val(),
                            keyword :$("#hidden-bs-text").val()
                        };

                        showCommentList(param, filter);
                    })

                    //---------------------
                    // prev 이동
                    //---------------------
                    $(".mb-prev").on('click', function(){
                        category = $("#select-board-category").val();   // 카테고리 선택
                        page = startPage - 1;

                        var param = {
                            page: page,
                            category: category
                        };

                        var filter = {
                            type : $("#hidden-bs-type").val(),
                            keyword :$("#hidden-bs-text").val()
                        };

                        showCommentList(param, filter);
                    })

                })

            }; // showCommentList

            //---------------------
            // 게시판 카테고리 선택
            //---------------------               
            $("#select-board-category").on('change', function() {
                category = $(this).val();

                var param = {
                    page: 1,
                    category: category
                };

                var filter = {
                    type : $("#hidden-bs-type").val(),
                    keyword :$("#hidden-bs-text").val()
                };

                showCommentList(param, filter);
            });

            //---------------------
            // 게시판 검색 + 카테고리
            //---------------------
            $(".bs-btn").on('click', function() {
                let category = $("#select-board-category").val();

                let type = $("#bs-select").val();
                let keyword = $(".bs-text").val();

                $("#hidden-bs-type").attr('value', type);
                $("#hidden-bs-text").attr('value', keyword);

                var param = {
                    page: 1,
                    category: category
                };

                var filter = {
                    type : $("#hidden-bs-type").val(),
                    keyword :$("#hidden-bs-text").val()
                };


                showCommentList(param, filter);

                $("#bs-select").prop('selectedIndex',0);

                $(".bs-text").val('');
            });

            //---------------------
            // 게시글 삭제
            //---------------------
            $(".mypage-btn").on('click', function() {
                console.log("category : ", category);
                console.log("page : ", page);

                let removeResult = [];  // 삭제 Result결과

                
                $(".comment-check:checked").each(function () {
                    var bno = $(this).val();

                    //Delete을 input:checkbox가 checked된 수 만큼 반복 호출
                    mypageCommentService.removeReply(bno, function(result){
                        removeResult.push(result);
                    })         
                })

                // input:checkbox check해제
                $("input[name=comment-check]").prop("checked", false);

                // 화면 새로고침 (초기화)


                var param = {
                    page : page,
                    category : category
                }
                var filter = {
                    type : $("#hidden-bs-type").val(),
                    keyword :$("#hidden-bs-text").val()
                }

                showCommentList(param, filter);

            })


        }) // entry-Point

    </script>


</body>
</html>