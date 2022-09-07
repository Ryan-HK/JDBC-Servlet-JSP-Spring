<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>list</title>
	<link rel="stylesheet" href="/resources/css/default.css">
	<link rel="stylesheet" href="/resources/css/ui.css">
	<link rel="stylesheet" href="/resources/css/ui-page.css">
	<link rel="stylesheet" href="/resources/css/font.css">
	<link rel="stylesheet" href="/resources/css/board-list.css">

	 <!-- jQuery 라이브러리 연동 방법 - 네트워크 전송방법 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.0/jquery-migrate.min.js"></script>
	
	<script src="/resources/js/reply.js"></script>
	<script src="/resources/js/board.js"></script>
	<script defer src="/resources/js/btn.js"></script>

	<style>

	</style>

	<script>



	</script>

</head>
<body>
	<div class="page">
		<!-- header -->
		<header class="header">
			<h1 class="website-title">웹사이트</h1>
			<form class="search-form">
				<input type="search">
				<input type="submit" value="검색">
			</form>
			<!-- <div id="modal-switch">â</div> -->
		</header>

		<!-- menu -->
		<ul class="menu">
			<li class="menu-item">
				<a href="#" class="menu-link">Home</a>
			</li>
			<li class="menu-item">
				<a href="#" class="menu-link">About</a>
			</li>
			<li class="menu-item">
				<a href="#" class="menu-link">Product</a>
			</li>
			<li class="menu-item">
				<a href="#" class="menu-link">Contact</a>
			</li>
		</ul>
		
		<!-- <div class="content-container"> -->
		<!-- primary -->
		<section class="primary">
			<form class="board-register" action="/board/modify" method="POST">
				<input type="hidden" name="bno" value="${board.bno}">
				<input type="hidden" name="cri" value="${currPage}">

				<div class="board-title">
					<span class="font-22-700">자유게시판</span>
				</div>

				<div class="register-text">
					<span class="register-col1 font-16-700">제목</span>
				</div>

				<div class="register-title">
					<input type="text" class="register-col2 modify-col" name="title" id="title"  disabled required value="${board.title}">
				</div>

				<div class="register-text">
					<span class="register-col1 font-16-700">작성자</span>
				</div>

				<div class="register-writer">
					<input type="text" class="register-col2" name="writer" id="writer" readonly value="${board.writer}">
				</div>

				<div class="register-text">
					<span class="register-col1 font-16-700">내용</span>
				</div>

				<div class="register-content">
					<textarea name="content" class="register-col3 modify-col" id="content"  disabled>${board.content}</textarea>
				</div>

				<div class="register-btns">
					<button type="button" class="register-btn" id="modify-btn">수정하기</button>
					<button type="submit" class="register-btn" id="modify-btn-submit">수정완료</button>
					<button type="button" class="register-btn" id="list-btn">글리스트</button>
					<button type="button" class="register-btn" id="delete-btn">삭제하기</button>
				</div>
			</form>

			<div class="comment-box">
				<div class="comment-title">
					<span class="font-18-700">댓글</span>
				</div>

				<div class="wrap_comment">
					<!-- 댓글리스트 불려오는 영역 -->
				</div>


				<form action="#" class="register-comment font-14-500" id="register-comment">
					<div class="register-comment-writer">
						닉네임 <input type="text" name="" id="register-writer">
					</div>


					<textarea name="" id="register-reply" class="register-comment-text"></textarea>


					<div class="register-comment-btn">
						<button type="button" class="comment-btn register-reply-btn">
							등록
						</button>
					</div>
				</form>

			</div>
		</section>

		<!-- secondary-a -->
		<aside class="secondary secondary-a">
			<ul class="info-list">
				<li class="info-list-item">
					Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fugit numquam aspernatur excepturi, eos soluta praesentium maiores commodi minus accusantium?
				</li>
				<li class="info-list-item">
					Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsam tempora nisi unde corrupti dicta.
				</li>
				<li class="info-list-item">
					Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam consequatur alias, ducimus ea magnam nostrum repudiandae repellendus deleniti veniam? Assumenda expedita ad eum nihil!
				</li>
			</ul>

			<ul class="user-list friend-list">
				<li class="user-item friend-item">
					<figure class="user-photo" style="background-image: url(images/ilbuni.png);"></figure>
					<p class="user-name">
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae temporibus ad obcaecati sint sed dolore amet consequuntur tempora, quas repellat quisquam ratione accusantium eius suscipit totam iusto, ex voluptates. Asperiores!
					</p>
				</li>
				<li class="user-item friend-item">
					<figure class="user-photo" style="background-image: url(images/ilbuni.png);"></figure>
					<p class="user-name">
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae temporibus ad obcaecati sint sed dolore amet consequuntur tempora, quas repellat quisquam ratione accusantium eius suscipit totam iusto, ex voluptates. Asperiores!
					</p>
				</li>
				<li class="user-item friend-item">
					<figure class="user-photo" style="background-image: url(images/ilbuni.png);"></figure>
					<p class="user-name">
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae temporibus ad obcaecati sint sed dolore amet consequuntur tempora, quas repellat quisquam ratione accusantium eius suscipit totam iusto, ex voluptates. Asperiores!´
					</p>
				</li>
			</ul>
		</aside>

		<!-- secondary-b -->
		<aside class="secondary secondary-b">
			<ul class="user-list message-list">
				<li class="user-item message-item">
					<figure class="user-photo" style="background-image: url(images/ilbuni.png);"></figure>
					<p class="message-content">
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure nobis, nisi numquam harum voluptates vel corrupti dolorem id, dicta eveniet similique architecto et, exercitationem quaerat alias ratione. Dicta, beatae, aspernatur, sit commodi quis illo non aut repellendus veritatis at ab.
					</p>
				</li>
				<li class="user-item message-item">
					<figure class="user-photo" style="background-image: url(images/ilbuni.png);"></figure>
					<p class="message-content">
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure nobis, nisi numquam harum voluptates vel corrupti dolorem id, dicta eveniet similique architecto et, exercitationem quaerat alias ratione.
					</p>
				</li>
				<li class="user-item message-item">
					<figure class="user-photo" style="background-image: url(images/ilbuni.png);"></figure>
					<p class="message-content">
						Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure nobis, nisi numquam harum voluptates vel corrupti dolorem id.
					</p>
				</li>
			</ul>
		</aside>
		<!-- </div> -->
		
		<!-- footer -->
		<footer class="footer">
			
			Lorem ipsum dolor sit amet.
		</footer>
	</div>

	<input type="checkbox" id="modal-switch">
	<label for="modal-switch">
		<span>modal ì´ê³  ë«ê¸°</span>
	</label>
	
	<div class="modal">
		<div class="dialog">
			Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque exercitationem odio, modi laboriosam a perspiciatis est delectus quisquam obcaecati vel eos natus ipsam quasi reprehenderit nihil eligendi quam aliquid! Totam vitae quis, obcaecati quos, ut aut eveniet architecto sed harum ea deleniti itaque saepe unde nulla?
		</div>
	</div>

	<script>
		//------------------
		// 댓글목록 불러오기
		//------------------
		$(function (){


			var bnoValue = '<c:out value="${board.bno}"/>';
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

				str += 
				`<div class="comment">
				<form action="#" class="comment-div1">
					<div class="comment-col1">
						<div class="comment-writer">
							<span class="font-14-500">\${replyer}</span>
							&nbsp;<span class="font-12-500">\${replyDate}</span>
						</div>

						<div class="comment-btn-box font-14-500">
							<button type=button class="comment-btn show-comment-form" onclick="f_ReplyReplyBtnOn()">답글</button>
							<button type=button class="comment-btn modify-comment-btn" onclick="f_modifyReplyBtnOn()">수정</button>
							<button class="comment-btn modify-comment-submit" type="button" onclick="f_modifyReplySubmitBtn()">수정완료</button>
							<button type=button class="comment-btn delete-comment-btn">삭제</button>
						</div>
						
					</div>
					<textarea name="" id="" class="comment-col2" disabled>\${reply}</textarea>
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

				//---------------------
				// 댓글 수정하기
				//---------------------
				$(".modify-comment-submit").on('click', function (){
					console.log("댓글 수정완료 버튼이 클릭되었습니다.");

					$(this).hide();
					$(this).parent().children(".modify-comment-btn").show();
					$(this).parents(".comment-div1").children(".comment-col2").attr('disabled', true);
					
				})






			})	

			} //end showList
			
			//---------------------
			// 댓글 등록하기
			//---------------------
			$(".register-reply-btn").on('click', function (){
			// console.log('댓글등록 버튼 클릭');

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

					$("#register-reply").val('');
					replyer : $("#register-writer").val('');
				})
			}) //end 댓글등록버튼

		}) //end Entry-Point



		//---------------------
		// 댓글 삭제하기
		//---------------------
		function f_removeReplyBtn(e) {
				console.log('댓글삭제버튼이 클릭되었습니다.');
				let ev = $(event.target);



		}

	</script>
	
	
</body>
</html>