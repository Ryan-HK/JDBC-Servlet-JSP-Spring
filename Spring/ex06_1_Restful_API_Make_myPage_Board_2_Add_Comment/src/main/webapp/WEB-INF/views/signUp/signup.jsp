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
    

    <!-- 폰트어썸 -->
    <script src="https://kit.fontawesome.com/3b1ef86e4b.js" crossorigin="anonymous"></script>

    <!-- 구글 폰트 적용 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">

    <!-- CSS : font 설정 -->
    <link rel="stylesheet" href="/resources/common/css/font.css">
    <!-- CSS : main_header 설정 -->
    <link rel="stylesheet" href="/resources/include/css/main_header.css">
    <!-- CSS : main footer 설정 -->
    <link rel="stylesheet" href="/resources/include/css/main_footer.css">
    <!-- CSS : main 전체 페이지 설정 -->
    <link rel="stylesheet" href="/resources/common/css/main_page.css">
    <link rel="stylesheet" href="/resources/main/css/main_section_card.css">
    <!-- CSS : main 미디어 태그 -->
    <link rel="stylesheet" href="/resources/common/css/main_mediatag.css">
    
    <!-- CSS : main 회원가입 설정 -->
    <link href="/resources/signUp/css/main_signup.css" rel="stylesheet">
        
</head>

<body>
    <div class="page">

        <!-- header -->
        <%@ include file = "/WEB-INF/views/include/header.jsp" %>

        <!-- 메인 컨텐츠부 -->
        <section>

			
            <div class="section_wrap">
                <div class="s_box_board">
                    <h2>회원가입</h2>
                    <div class="essential_info font-14-400">*필수입력사항</div>
                    <div class="s_box_board2">

                        <div class="name2 font-22-700">기본정보</div>

                        <form action="/signup" method="post" enctype="multipart/form-data">

                            <table class="table table-boardered">


                                <tr class="font-14-400">
                                    <th>아이디*</th>
                                    <td><input type="text" class="form-control" name="id" id="id" placeholder="id" oninput="handleOnInput(this)"></td>
                                    <td><input type="button" value="중복확인" class="btn btn-primary" id="idBtn" />
                                    </td>
                                </tr>

                                <tr>
                                    <th></th>
                                    <td><span id="idResult" class="font-12-400"></span></td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>닉네임*</th>
                                    <td><input type="text" class="form-control" name="nickname" id="nick_name" placeholder="닉네임"></td>
                                    <td><input type="button" value="중복확인" class="btn btn-primary" id="nickBtn" /></td>
                                </tr>
                                
                                <tr>
                                    <th></th>
                                    <td><span id="nickNameResult" class="font-12-400"></span></td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>비밀번호*</th>
                                    <td><input type="password" class="form-control pass1" name="pass" placeholder="비밀번호" required>
                                    </td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>비밀번호확인*</th>
                                    <td><input type="password" class="form-control pass2" placeholder="비밀번호 확인" required>
                                    </td>
                                </tr>
                                
                                <tr class="pwCheck">
                                    <th></th>
                                    <td><span id="pwCheck" class="font-12-400"></span></td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>이름*</th>
                                    <td><input type="text" class="form-control" name="user_name" required></td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>전화번호*</th>
                                    <td><input type="tel" class="form-control" name="tel" placeholder="-없이 숫자만 입력" maxlength="11" oninput="autoHypenPhone(this)" required> 
                                    </td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>성별*</th>
                                    <td>
                                        <select name="gender" class="form-control" required>
                                            <option value="">성별</option>
                                            <option value="male">남자</option>
                                            <option value="female">여자</option>
                                        </select>
                                    </td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>생년월일*</th>
                                    <td>
                                        <input type="date" name="birth" class="form-control" required>
                                    </td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>이메일*</th>
                                    <td>
                                        <input class="form-control-sm" name="email" type="text" id="email1" required> @ <input
                                            class="form-control-sm" name="email" type="text" id="addr" required>
                                        <select class="form-control-sm" name="select_email" id="email2"
                                            onChange="selectEmail(this)" required>
                                            <option value="" selected>선택하세요</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                            <option value="daum.net">daum.net</option>
                                            <option value="1">직접입력</option>
                                        </select>
                                    </td>
                                    <td><button type="button" class="btn btn-primary1" id="mailSend">인증</button></td>

                                </tr>

                                <tr class="font-14-400">

                                    <th>인증번호*</th>
                                    <td><input type="text" class="form-control" id="form-control" name="cer_num"
                                            placeholder="인증번호를 입력하세요."  required></td>
                                    <td><button type="button" class="btn btn-primary2" id="pinNumCheck">확인</button></td>
                                </tr>

                                <tr class="font-14-400">

                                    <th></th>
                                    <td><span id="pinNum"  class="font-12-400"></span></td>
                                </tr>
                               
                                <tr>
                                    <td colspan="3">
                                        <hr>
                                        <div class="name2 font-22-700" style="text-align: center;">추가정보</div>
                                    </td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>지역</th>
                                    <td><input type="text" class="form-control" id="loc" name="user_loc" placeholder="지역"></td>
                                    <td><button type="button" class="btn btn-primary3">지역검색</button></td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>관심운동</th>
                                    <td>
                                        <input type="checkbox" name="hobby" value="헬스/크로스핏" id="label1" onclick="CountChecked(this)"><label for="label1">헬스/크로스핏&nbsp;</label>
                                        <input type="checkbox" name="hobby" value="등산" id="label2" onclick="CountChecked(this)"><label for="label2">등산&nbsp;</label>
                                        <input type="checkbox" name="hobby" value="런닝" id="label3" onclick="CountChecked(this)"><label for="label3">런닝&nbsp;</label>
                                        <input type="checkbox" name="hobby" value="싸이클" id="label4" onclick="CountChecked(this)"><label for="label4">싸이클&nbsp;</label> <br>
                                        <input type="checkbox" name="hobby" value="축구/풋살" id="label5" onclick="CountChecked(this)"><label for="label5">축구/풋살&nbsp;</label>
                                        <input type="checkbox" name="hobby" value="농구" id="label6" onclick="CountChecked(this)"><label for="label6">농구&nbsp;</label>
                                        <input type="checkbox" name="hobby" value="야구" id="label7" onclick="CountChecked(this)"><label for="label7">야구&nbsp;</label>
                                        <input type="checkbox" name="hobby" value="테니스" id="label8" onclick="CountChecked(this)"><label for="label8">테니스&nbsp;</label>
                                        <input type="checkbox" name="hobby" value="배드민턴" id="label9" onclick="CountChecked(this)"><label for="label9">배드민턴 &nbsp;</label>
                                    </td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>프로필 사진</th>
                                    <td>
                                        <img src="/resources/signUp/img/profile.png" class="profile"><br>
                                        <label class="btn btn-sm" for="file" id="fileUp">추가</label>
                                        <input type="file" id="file" name="file" style="display: none;" accept="image/*" >  
                                        <button type="button" class="btn btn-secondary btn-sm" id="currImg">기본</button>                                         
                                    </td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>한줄 소개</th>
                                    <td><input type="text" class="form-control" name="profile_info" placeholder="(선택)">
                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="3">
                                        <hr>
                                    </td>
                                </tr>

                                <tr class="font-14-400">
                                    <th>약관동의</th>
                                    <td>
                                        <div class="checkbox_group">
                                            <input type="checkbox" id="agree_all" value="전체동의"><label
                                                for="agree_all">전체동의</label>
                                            <p></p>
                                            <input type="checkbox" id="agree_1" class="normal" value="이용약관 동의"><label
                                                for="agree_1"></label>이용약관 동의
                                            <p></p>
                                            <input type="checkbox" id="agree_2" class="normal"
                                                value="개인정보 수집-이용 동의"><label for="agree_2">개인정보 수집-이용 동의</label>
                                            <p></p>
                                            <input type="checkbox" id="agree_3" class="normal"
                                                value="위치정보 수집-이용 동의"><label for="agree_3">위치정보 수집-이용 동의</label>
                                        </div>
                                    </td>
                                </tr>

                            </table>

                            <div>
                                <input type="button" class="sign_up" value="가입하기">
                            </div>

                        </form>
                    </div>
                </div>
            </div>

        </section>

        <!-- 하단 Footer -->
        <%@ include file = "/WEB-INF/views/include/footer.jsp" %>
    </div>


    <!-- 팝업 open -->
    <script src="/resources/signUp/js/mapPopup.js"></script>
    <!-- 체크박스 전체동의 자바스크립트 -->
    <script src="/resources/signUp/js/main_checkbox.js"></script>
    <!-- 이메일 선택 자바스크립트 -->
    <script src="/resources/signUp/js/main_check.js"></script>
    <!-- 이메일 선택 자바스크립트 -->
    <script src="/resources/signUp/js/fileUplode.js"></script>

    <!-- 부트스트랩 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous">
    </script>
</body>

</html>