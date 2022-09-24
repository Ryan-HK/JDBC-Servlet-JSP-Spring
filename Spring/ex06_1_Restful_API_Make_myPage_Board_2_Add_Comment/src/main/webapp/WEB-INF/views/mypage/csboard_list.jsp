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

    <script src="/resources/mypage/js/module/mypage_cs_module.js"></script>
	<script src="/resources/mypage/js/module/mypage_util_module.js"></script>
	
	<script src="/resources/mypage/js/mypage_csboard.js"></script>

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
                        <div class="mypage-content-title font-24-700">문의/신고</div>
                        <div class="mypage-border"></div><br>
    
                        <!-- 문의 게시판 테이블 -->
                        <table class="mypage-table font-14-400">
                            <!-- 게시판 헤더 -->
                            <thead class="mypage-thead-tr">
                                <tr class="mp-tr">
                                    <th class="mypage-checkbox mc-checkbox">
                                        <!-- 전체 선택 체크박스 -->
                                        <input type="checkbox" name="qna-check" onclick='selectAll_qna(this)'/>
                                    </th>
                                    <th class="mc-select">
                                        <select name="cetegory_no" id="select-qna-category">
                                            <option value="-1" selected>처리상태</option>
                                            <option value="1">처리완료</option>
                                            <option value="0">처리중</option>
                                        </select>
                                    </th>
                                    <th class="mc-title">문의내역</th>
                                    <th class="mc-date">작성일</th>
                                </tr>
                            </thead>
                            <!-- 게시판 바디 -->
                            <tbody class="qna-tbody">
                                <!-- Qna글목록 -->
                            </tbody>
                                <!-- 게시글 삭제 버튼 --> 
                                <button class="mypage-btn delete-btn-qna"> 
                                    <span class="dropbtn_icon">삭제</span>
                                </button>
                        </table>

                        <div class="qna-paging-div">
                            <ul>
                                <!-- 페이징 처리 -->
                            </ul>
                        </div>
                        
                        <br>
                        
                        <!-- -------------------------------------------------- -->
                        <!-- 신고 게시판 테이블 -->
                        <!-- -------------------------------------------------- -->
                        <table class="mypage-table font-14-400">
                            <!-- 게시판 헤더 -->
                            <thead class="mypage-thead-tr">
                                <tr class="mp-tr">
                                    <th class="mypage-checkbox mc-checkbox">
                                        <!-- 전체 선택 체크박스 -->
                                        <input type="checkbox" name="report-check" onclick='selectAll_report(this)'/>
                                    </th>
                                    <th class="mc-select">
                                        <select name="cetegory_no" id="select-report-category">
                                            <option value="-1" selected>처리상태</option>
                                            <option value="1">처리완료</option>
                                            <option value="0">처리중</option>
                                        </select>
                                    </th>
                                    <th class="mc-title">신고내역</th>
                                    <th class="mc-date">작성일</th>
                                </tr>
                            </thead>
                            <!-- 게시판 바디 -->
                            <tbody class="report-tbody">
                                <!-- Report 글 목록 -->
                            </tbody>
                                <!-- 게시글 삭제 버튼 -->
                                <button class="mypage-btn delete-btn-report"> 
                                    <span class="dropbtn_icon">삭제</span>
                                </button>
                        </table>
                        
                        <div class="report-paging-div">
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


    <!-- 마이페이지 문의신고내역 자바스크립트 -->
    <script src="/resources/mypage/js/mypage_csboard.js"></script>

    <!-- 마이페이지 LEFT SIDE 메뉴 자바스크립트 -->
    <script src="/resources/include/js/mypage_left_side.js"></script>

    <!-- 메인-Header 자바스크립트 (공통) -->
    <script src="/resources/include/js/main_header.js"></script>

    <!-- sweetalert2 자바스크립트 -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Qna내역 JS -->
    <script>

        $(function(){

            // 현재 페이지와 게시판 카테고리를 저장하기 위한, 변수 선언
            var page = 1;
            var category = -1;

            // comment_list 페이지 초기화 시, 변수 초기화
            var param = {
                page : page,
                category : category
            }


            // myPage - 내 문의목록 조회 (1번 Page)
            showQnaList(param);

            function showQnaList(param){

                mypageCSService.getQnaList({page: param.page||1, category: param.category||-1}, function(data){

                    let listVO = data.voList;
                    let pageDTO = data.pageDTO;

                    let str = "";
                    let commentBox = $(".qna-tbody");

                    for(var i=0, len = listVO.length; i<len; i++){
                        // console.log("리스트 :", listVO[i]);

                        var qna_no = listVO[i].qna_no;
                        var title = listVO[i].title;
                        var text = listVO[i].text;
                        var qna_date = listVO[i].qna_date;
                        var qna_result = listVO[i].qna_result;

                        var fmt_qna_result = "";

                        if(qna_result == 0){
                            fmt_qna_result = "처리중"
                        } else {
                            fmt_qna_result = "처리완료"
                        }

                        var format_qna_date = mypageUtilService.timeFormat(qna_date);

                        str +=
                                `<tr class="mypage-tbody-tr mypage-tr-border mp-tr">
                                    <!-- 게시글 하나 선택 체크박스 -->
                                    <td clsss="mypage-checkbox mc-checkbox"><input type="checkbox" name="qna-check" class="qna-check" value="\${qna_no}"></td>
                                    <!-- 게시글 제목 -->`

                                    if(qna_result == 0){
                                        str+= `<td class="mc-select non-result">\${fmt_qna_result}</td>`
                                    } else {
                                        str+= `<td class="mc-select on-result">\${fmt_qna_result}</td>`
                                    }

                        str +=         `<td class="mypage-table-title-qna mc-title">
                                        <div class="mypage-title-content"><a href="#" class="mypage-link">\${title}</a></div>
                                    </td>
                                    <td>\${format_qna_date}</td>
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

                    let pagingul = $(".qna-paging-div ul");
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
                    // 페이징 이동하기
                    //---------------------
                    $(".mb-currPage-step").on('click', function(){
                        category = $("#select-qna-category").val();   // 카테고리 선택
                        page = $(this).text();    // 이동할 페이지 선택

                        var param = {
                            page: page,
                            category: category
                        };

                        showQnaList(param);
                    })


                    //---------------------
                    // Next 이동
                    //---------------------
                    $(".mb-next").on('click', function () {
                        category = $("#select-qna-category").val();   // 카테고리 선택
                        page = endPage + 1;

                        var param = {
                            page: page,
                            category: category
                        };

                        showQnaList(param);
                    })

                    //---------------------
                    // prev 이동
                    //---------------------
                    $(".mb-prev").on('click', function(){
                        category = $("#select-qna-category").val();   // 카테고리 선택
                        page = startPage - 1;

                        var param = {
                            page: page,
                            category: category
                        };

                        showQnaList(param);
                    })

                })

            }; // showQnaList

            //---------------------
            // 게시판 카테고리 선택
            //---------------------               
            $("#select-qna-category").on('change', function() {
                category = $(this).val();

                var param = {
                    page: 1,
                    category: category
                };

                showQnaList(param);
            });

            //---------------------
            // 게시글 삭제
            //---------------------
            $(".delete-btn-qna").on('click', function() {
                console.log("category : ", category);
                console.log("page : ", page);

                let removeResult = [];  // 삭제 Result결과

                
                $(".qna-check:checked").each(function () {
                    var qno = $(this).val();
                    console.log("삭제가 실행됩니다 :",qno);

                    //Delete을 input:checkbox가 checked된 수 만큼 반복 호출
                    mypageCSService.removeQna(qno, function(result){
                        console.log("debug");
                        removeResult.push(result);
                    })         
                })

                // input:checkbox check해제
                $("input[name=qna-check]").prop("checked", false);

                // 화면 새로고침 (초기화)

                var param = {
                    page : page,
                    category : category
                }

            showQnaList(param);

            })


        }) // entry-Point

    </script>

    <!-- Report내역 JS -->
    <script>

        $(function(){

            // 현재 페이지와 게시판 카테고리를 저장하기 위한, 변수 선언
            var page = 1;
            var category = -1;

            // report_list 페이지 초기화 시, 변수 초기화
            var param = {
                page : page,
                category : category
            }


            // myPage - 내 문의목록 조회 (1번 Page)
            showReportList(param);

            function showReportList(param){

                mypageCSService.getReportList({page: param.page||1, category: param.category||-1}, function(data){

                    let listVO = data.voList;
                    let pageDTO = data.pageDTO;

                    let str = "";
                    let commentBox = $(".report-tbody");

                    for(var i=0, len = listVO.length; i<len; i++){
                        // console.log("리스트 :", listVO[i]);

                        var report_no = listVO[i].report_no;
                        var title = listVO[i].title;
                        var text = listVO[i].text;
                        var report_date = listVO[i].report_date;
                        var report_result = listVO[i].report_result;

                        var fmt_report_result = "";

                        if(report_result == 0){
                            fmt_report_result = "처리중"
                        } else {
                            fmt_report_result = "처리완료"
                        }

                        var format_report_date = mypageUtilService.timeFormat(report_date);

                        str +=
                                `<tr class="mypage-tbody-tr mypage-tr-border mp-tr">
                                    <!-- 게시글 하나 선택 체크박스 -->
                                    <td clsss="mypage-checkbox mc-checkbox"><input type="checkbox" name="report-check" class="report-check" value="\${report_no}"></td>
                                    <!-- 게시글 제목 -->`

                                    if(report_result == 0){
                                        str+= `<td class="mc-select non-result">\${fmt_report_result}</td>`
                                    } else {
                                        str+= `<td class="mc-select on-result">\${fmt_report_result}</td>`
                                    }

                        str +=         `<td class="mypage-table-title-qna mc-title">
                                        <div class="mypage-title-content"><a href="#" class="mypage-link">\${title}</a></div>
                                    </td>
                                    <td>\${format_report_date}</td>
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

                    let pagingul = $(".report-paging-div ul");
                    var pagingli = "";

                    if(prev){
                        pagingli += `<li class="mr-prev font-16-700"><</li>`;
                    }

                    for(var step = startPage; step <= endPage; step++){
                        if(startPage == 0){
                            break;
                        }

                        if(currPage == step){
                            pagingli +=  `<li class="mb-currPage mr-currPage-step font-16-700">\${step}</li>`
                        } else {
                            pagingli += `<li class="mr-currPage-step font-16-700">\${step}</li>`
                        }
                    } // for

                    if(next){
                        pagingli += `<li class="mr-next font-16-900">></li>`;
                    }

                    pagingul.html(pagingli);
                    commentBox.html(str);
                    
                    //---------------------
                    // 페이징 이동하기
                    //---------------------
                    $(".mr-currPage-step").on('click', function(){
                        category = $("#select-report-category").val();   // 카테고리 선택
                        page = $(this).text();    // 이동할 페이지 선택

                        var param = {
                            page: page,
                            category: category
                        };

                        showReportList(param);
                    })


                    //---------------------
                    // Next 이동
                    //---------------------
                    $(".mr-next").on('click', function () {
                        category = $("#select-report-category").val();   // 카테고리 선택
                        page = endPage + 1;

                        var param = {
                            page: page,
                            category: category
                        };

                        showReportList(param);
                    })

                    //---------------------
                    // prev 이동
                    //---------------------
                    $(".mr-prev").on('click', function(){
                        category = $("#select-report-category").val();   // 카테고리 선택
                        page = startPage - 1;

                        var param = {
                            page: page,
                            category: category
                        };

                        showReportList(param);
                    })

                })

            }; // showQnaList

            //---------------------
            // 게시판 카테고리 선택
            //---------------------               
            $("#select-report-category").on('change', function() {
                category = $(this).val();

                var param = {
                    page: 1,
                    category: category
                };

                showReportList(param);
            });

            //---------------------
            // 게시글 삭제
            //---------------------
            $(".delete-btn-report").on('click', function() {
                console.log("category : ", category);
                console.log("page : ", page);

                let removeResult = [];  // 삭제 Result결과

                
                $(".report-check:checked").each(function () {
                    var rno = $(this).val();

                    //Delete을 input:checkbox가 checked된 수 만큼 반복 호출
                    mypageCSService.removeReport(rno, function(result){
                        removeResult.push(result);
                    })         
                })

                // input:checkbox check해제
                $("input[name=report-check]").prop("checked", false);

                // 화면 새로고침 (초기화)

                var param = {
                    page : page,
                    category : category
                }

                showReportList(param);

            })


        }) // entry-Point

    </script>
</body>
</html>