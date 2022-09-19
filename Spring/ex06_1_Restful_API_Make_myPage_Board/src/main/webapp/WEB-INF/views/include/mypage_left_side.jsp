 <div class="s_box_side">
     <div class="side_top">
         <div class="side_title">
             <span class="font-28-700">마이페이지</span>
         </div>
         <div class="side_profil">
             <!-- 사이드프로필-이미지 -->
             <div class="wrap_side_profil_img">
                 <div class="side_profil_img_box">
                     <!-- 여기에 이미지삽입 -->
                     <img src="/resources/include/img/ggomung1.JPG">
                 </div>
             </div>
             <!-- 사이드프로필-닉네임변경 -->
             <div class="wrap_side_profil_nickname">
                 <!-- 한줄소개 form 태그 -->
                 <form action="#">
                     <label for="btn_edit_nickname"><img src="/resources/include/img/edit_btn_comment.png"><span class="font-16-500">닉네임</span></label>
                     <button type="button" id="btn_edit_nickname"></button>
                     <div>
                         <textarea name="" rows="1" disabled maxlength="10" class="side_profil_nickname font-16-500">꼬뭉이</textarea>
                     </div>
                 </form>
             </div>
             
             <!-- 사이드프로필-주소 -->
             <div class="wrap_side_profil_address">
                 <div class="box_check_btn">
                     <img src="/resources/include/img/checked_btn.png">
                 </div>
                 <div class="side_profil_address font-16-500">서울시 강남구</div>
             </div>
             
             <div class="wrap_side_profil_certify">
                 <button class="btn_certify"><a href="#" class="font-16-500">인증하기</a></button>
             </div>

             <!-- 사이드프로필-취미 -->
             <div class="wrap_side_profil_hobby">
                 <ul>
                     <li class="font-14-500">밥먹기</li>
                     <li class="font-14-500">잠자기</li>
                     <li class="font-14-500">물어뜯기</li>
                 </ul>
             </div>
             <!-- 사이드프로필-한줄소개 -->
             <div class="wrap_side_profil_comment">
                 <!-- 한줄소개 form 태그 -->
                 <form action="#">
                     <label for="btn_edit_comment"><img src="/resources/include/img/edit_btn_comment.png"><span class="font-16-500">한줄소개</span></label>
                     <button type="button" id="btn_edit_comment"></button>
                     <textarea name="" rows="1" disabled class="side_profil_comment font-14-400">한줄소개 입력</textarea>
                 </form>
             </div>
         </div>
     </div>
     
     <ul class="side_manu">
         <li class="manu_btn">
             <a href="/mypage/my_group" class="link1 font-16-500">&nbsp;나의모임
                 <span class="space-2">>&nbsp;</span>
             </a>
         </li>

         <li class="manu_btn">
             <a href="/mypage/check_pw" class="link1 font-16-500">&nbsp;기본정보수정
                 <span class="space-2">>&nbsp;</span>
             </a>
         </li>

         <li class="manu_btn">
             <a href="/mypage/message_receive" class="link1 font-16-500">&nbsp;쪽지
                 <span class="space-2">>&nbsp;</span>
             </a>
         </li>

         <li class="manu_btn">
             <a href="/mypage/board_list" class="link1 font-16-500">&nbsp;내 글
                 <span class="space-2">>&nbsp;</span>
             </a>
         </li>

         <li class="manu_btn">
             <a href="/mypage/comment_list" class="link1 font-16-500">&nbsp;내 댓글
                 <span class="space-2">>&nbsp;</span>
             </a>
         </li>

         <li class="manu_btn">
             <a href="/mypage/csboard_list" class="link1 font-16-500">
                 &nbsp;문의 / 신고내역
             <span class="space-2">>&nbsp;</span></a>
         </li>
     </ul>
 </div>