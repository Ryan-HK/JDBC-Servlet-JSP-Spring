		// 댓글목록 불러오기 / 수정 / 삭제 / 답글달기
		$(function (){	
			console.log("=================================");
			console.log("댓글목록 불러오기/수정/삭제/답글달기");
			console.log("=================================");

			// var bnoValue = '<c:out value="${board.bno}"/>';
			// console.log("bnoValue : " + bnoValue);
			var bnoValue = 1;
			showList(1);
			
			
			function showList(page){
				console.log(bnoValue);
				console.log(page);

				replyService.getList({bno:bnoValue, page: page || 1}, function(data){
	
				let list = data.list;
				let str = "";
				let replyDiv = $(".wrap_comment");

				for(var i=0, len = list.length; i<len; i++){
					
					var replyer = list[i].replyer;
					var replyDate = list[i].replyDate;
					var reply = list[i].reply;
					console.log("리플 내용 확인 " + replyer, replyDate, reply);
					

				str += 
				`<div class="comment">
				<form action="#" class="comment-div1">
					<div class="comment-col1">
						<div class="comment-writer">
							<span class="font-14-500">${replyer}</span>
							&nbsp;<span class="font-12-500">${replyDate}</span>
						</div>

						<div class="comment-btn-box font-14-500">
							<button type=button class="comment-btn show-comment-form" onclick="f_ReplyReplyBtnOn()">답글</button>
							<button type=button class="comment-btn modify-comment-btn" onclick="f_modifyReplyBtnOn()">수정</button>
							<button class="comment-btn modify-comment-submit" type="button" onclick="f_modifyReplySubmitBtn()">수정완료</button>
							<button type=button class="comment-btn delete-comment-btn">삭제</button>
						</div>
						
					</div>
					<textarea name="" id="" class="comment-col2" disabled>${reply}</textarea>
				</form>

				<div class="comment-div2">

					<form action="#" class="register-comment font-14-500" id="register-comment">
						<div class="register-comment-writer">
							닉네임 <input type="text" name="" id="" readonly>
						</div>


						<textarea name="" id="" class="register-comment-text"></textarea>


						<div class="register-comment-btn">
							<button type="submit" id="reply-btn" class="comment-btn">
								등록
							</button>
						</div>
					</form>		
				</div>
				</div>`;
				}

				replyDiv.html(str);
			})	

			}	//end showList
			

			// 댓글 등록하기
			$(".register-reply-btn").on('click', function (){
			console.log('댓글등록 버튼 클릭');

			var reply1 = $("#register-reply").val();
			var replyer1 = $("#register-writer").val();
			var bno1 = bnoValue;

				var reply = {
						
					reply : $("#register-reply").val(),
					replyer : $("#register-writer").val(),
					bno : bnoValue
				}
				
				replyService.add(reply, function(result){
					alert(result);

					showList(1);
				})
			}) //end 댓글등록버튼
		
			console.log('안녕1');

			$(".show-comment-form").on('click', function(){
					console.log("댓글 답글달기 버튼이 클릭되었습니다.");
					let check = $(this).parents(".comment").children(".comment-div2");

					if(check.css("display") == "none"){
						check.show();
					} else {
						check.hide();
					}
				})
			
		}) //end Entry-Point