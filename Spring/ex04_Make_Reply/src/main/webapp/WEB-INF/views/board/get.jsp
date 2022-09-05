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
	<link rel="stylesheet" href="/resources/css/board-list">

	 <!-- jQuery 라이브러리 연동 방법 - 네트워크 전송방법 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.0/jquery-migrate.min.js"></script>
	

	<style>
		section {
			/* border: 5px solid red; */
		}

		/* 게시판 - 전체 영역(폼태그 영역) */
		.board-register {
			display: flex;
			flex-direction: column;
			
			padding: 10px 10px;

			align-items: center;
			background-color: white;
			/* border: 1px solid red; */
		}

		.board-title {
			/* border: 1px solid blue; */
			width: 100%;
		}

		.register-title {
			display: flex;
			justify-content: center;
			/* border: 1px solid blue; */
			width: 100%;
		}

		.register-writer {
			display: flex;
			justify-content: center;
			/* border: 1px solid blue; */
			width: 100%;
		}

		.register-content {
			display: flex;
			justify-content: center;
			/* border: 1px solid blue; */
			width: 100%;

		}

		.register-btns {
			display: flex;
			justify-content: center;
			width: 100%;
			/* border: 1px solid blue; */
		}

		.register-btn {
			background-color: #666;
			color: white;

			height: 30px;
			width: 80px;
			border-radius: 5px;

			margin: 10px 10px;
		}

		.register-btn:hover {
			box-shadow: 0px 0px 3px 3px rgba(255, 7, 7, 0.589);
		}

		.register-col1 {
			display: flex;
			/* border: 1px solid green; */
			width: 100%;
		}
		

		.register-col2 {
			width: 100%;
			height: 30px;
			background-color: white;
			border: 1px solid black;
		}

		#writer:focus {
			outline: none;
		}
		
		.register-col3 {
			width: 100%;
			resize: none;
			background-color: white;
			border: 1px solid black;
			min-height: 400px;
		}

		.register-text {
			display: flex;
			justify-content: center;
			width: 100%;

			margin-top: 10px;
			
			/* border: 5px solid red; */
		}

		#modify-btn-submit {
			display: none;
		}


		/* 댓글부위 */



		.comment-box {
			display: flex;
			flex-direction: column;
			/* border: 2px solid blue; */
			padding: 10px 10px;
			width: 100%;
			background-color: white;
		}

		.comment-div1 {
			display: flex;
			flex-direction: column;
			
			/* border: 1px solid green; */
		}

		.comment-col1 {
			display: flex;
			justify-content: space-between;
		}

		.comment-writer{
			width: 70%;
			display: flex;
			align-items: center;
		}

		.register-comment {
			margin-top: 5px;
			/* border: 2px solid red;; */
			display: flex;
			flex-direction: column;
		}

		.comment-col2 {
			resize: none;
			/* width: 100%; */
			
		}

		.register-comment-text {
			resize: none;
			height: 60px;
			margin-top: 10px;
		}

		.register-comment-btn {
			display: flex;
			justify-content: flex-end;
		}


		.line1 {
			width: 100%;
			height: 1px;
			border-bottom: 1px solid black;
			margin-top: 50px;
		}

		/* 답글달기 */
		.comment-div2 {
			margin-top: 15px;
			display: none;
		}
		
		.comment-div2 textarea {
			box-shadow: 0px 0px 3px 3px rgba(255, 7, 7, 0.589);
		}

		.comment-btn {
			background-color: #666;
			height: 25px;
			color: white;
			border-radius: 5px;
			margin: 3px 0;
		}


		/* 댓글 수정 */
		.modify-comment-submit {
			display: none;
		}

	</style>

	<script>
		$(function() {

			// 게시글 리스트로 이동
			$("#list-btn").on('click', function(){
				console.log("리스트로 이동");
				location.href = "/board/list?currPage=${param.currPage}";
			})

			// 게시글 수정하기 버튼 눌렀을 때, 수정버튼 활성화
			$("#modify-btn").on('click', function(){
				$("#modify-btn").hide();

				$("#modify-btn-submit").show();

				$(".modify-col").css({
					boxShadow: "0px 0px 3px 3px rgba(255, 189, 7, 0.589)"
				}).attr("disabled", false);

				$(".board-title span").text("게시글 수정하기");

				$(".comment-box").hide();
			})

			// 게시글 삭제하기
			$("#delete-btn").on('click', function(){
				let formObj = $(".board-register");

				formObj.attr("action", "/board/remove");

				formObj.submit();
			})


			// 리플 답글달기 활성화
			$(".show-comment-form").on('click', function(){
				let check = $(this).parents(".comment").children(".comment-div2");

				if(check.css("display") == "none"){
					check.show();
				} else {
					check.hide();
				}
			})

			// 댓글 수정 활성화
			$(".modify-comment-btn").on('click', function(){
				
				$(this).hide();
				$(this).next().show();
				
			})


		})
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

			<!-- <div class="comment-box">
				<div class="comment-title">
					<span class="font-18-700">댓글</span>
				</div>

				<div class="comment">
					<form action="#" class="comment-div1">
						<div class="comment-col1">
							<div class="comment-writer">
								<span class="font-14-500">닉네임</span>
								&nbsp;<span class="font-12-500">날짜</span>
							</div>

							<div class="comment-btn-box font-14-500">
								<button type=button class="comment-btn show-comment-form">답글</button>
								<button type=button class="comment-btn modify-comment-btn">수정</button>
								<button class="comment-btn modify-comment-submit" type="submit">수정완료</button>
								<button type=button class="comment-btn delete-comment-btn">삭제</button>
							</div>
							
						</div>
						<textarea name="" id="" class="comment-col2"></textarea>
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
				</div>

				<div class="comment">
					<form action="#" class="comment-div1">
						<div class="comment-col1">
							<div class="comment-writer">
								<span class="font-14-500">닉네임</span>
								&nbsp;<span class="font-12-500">날짜</span>
							</div>

							<div class="comment-btn-box font-14-500">
								<button type=button class="comment-btn show-comment-form">답글</button>
								<button type=button class="comment-btn modify-comment-btn">수정</button>
								<button class="comment-btn modify-comment-submit" type="submit">수정완료</button>
								<button type=button class="comment-btn delete-comment-btn">삭제</button>
							</div>
							
						</div>
						<textarea name="" id="" class="comment-col2"></textarea>
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
				</div>

				<form action="#" class="register-comment font-14-500" id="register-comment">
					<div class="register-comment-writer">
						닉네임 <input type="text" name="" id="">
					</div>


					<textarea name="" id="" class="register-comment-text"></textarea>


					<div class="register-comment-btn">
						<button type="submit" class="comment-btn">
							등록
						</button>
					</div>
				</form>

			</div> -->
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

</body>
</html>