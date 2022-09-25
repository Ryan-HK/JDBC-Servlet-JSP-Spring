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
	
	<!-- Socket JS 라이브러리  -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.3.0/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>



	<script src="/resources/js/reply.js"></script>
	<script src="/resources/js/board.js"></script>
	<script defer src="/resources/js/btn.js"></script>

	<style>

	</style>

	<script>

	</script>
	
	<%@ page session="true" %>

</head>
<body>
	<%
	session.setAttribute("user_id", "Ryan");
	%>


	<h1>userid  : ${loginUserID}</h1>
	<h1>세션 ID : <%= session.getId() %></h1>
	
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
			<form class="board-register" action="/board/modify" method="POST" enctype="multipart/form-data">
				<input type="hidden" name="bno" value="${board.bno}">
				<input type="hidden" name="currPage" value="${cri.currPage}">

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
				<!-- 이미지 영역 -->
				<div class="img-area">
					<c:forEach var="list" items="${board.list}">
						<div class="img-box font-12-400">
							<c:if test="${loginUserID == board.writer}">
								<label for="file${list.attach_no}" class="file-label img-btn">수정</label>
								<input type="file" name="files" id="file${list.attach_no}" class="file-modify">
								<input type="hidden" name="attach_no" value="${list.attach_no}">

								<label for="delete-checkbox${list.attach_no}" class="delete-img-label img-btn">삭제</label>
								<input type="checkbox" name="deleteFile" value="${list.attach_no}" id="delete-checkbox${list.attach_no}" class="btn-delete-img">
							</c:if>
							

							<img src="/upload/getFile?filePath=${list.uploadPath}/${list.uuid}">
						</div>
					</c:forEach>	
				</div>

				<div class="register-text">
					<span class="register-col1 font-16-700">내용</span>
				</div>

				<div class="register-content">
					<textarea name="content" class="register-col3 modify-col" id="content"  disabled>${board.content}</textarea>
				</div>

				<div class="register-btns">
					<c:if test="${loginUserID == board.writer}">
						<button type="button" class="register-btn" id="modify-btn">수정하기</button>
						<button type="submit" class="register-btn" id="modify-btn-submit">수정완료</button>
					</c:if>

					<button type="button" class="register-btn" id="list-btn">글리스트</button>

					<c:if test="${loginUserID == board.writer}">
						<button type="button" class="register-btn" id="delete-btn">삭제하기</button>
					</c:if>
				</div>
			</form>

			<div class="comment-box">
				<div class="comment-title">
					<span class="font-18-700">댓글</span>
				</div>

				<div class="wrap_comment">
					<!-- 댓글리스트 불려오는 영역 -->


				</div>

				<ul class="reply-paging font-16-700">
					
				</ul>

				<div class="register-comment font-14-500" id="register-comment">
					<div class="register-comment-writer">
						닉네임 <input type="text" name="" id="register-writer" value="${loginUserID}" disabled>
					</div>


					<textarea name="" id="register-reply" class="register-comment-text" placeholder="메시지를 입력하세요."></textarea>


					<div class="register-comment-btn">
						<button type="button" class="comment-btn register-reply-btn">
							등록
						</button>
					</div>

					<div class="well">
						<input type="text" id="msg" class="form-control">
						<button id="btnSend" class="btn btn-primary">Send Message</button>
					</div>

					<ul class="chat-box">
						<li>테스트</li>
					</ul>
				</div>

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
			<form action="/user/loginPost" method="POST">
				<fieldset>
					<legend>Login Form</legend>
		
					<div><input type="text" name="userid" placeholder="User ID"></div>
					<div><input type="password" name="userpw" placeholder="User Password"></div>
					<div>Remember-me <input type="checkbox" name="rememberMe"></div>
					<p></p>
		
					<div><button type="submit">Sign-in</button></div>
				</fieldset>
			</form>
		</div>
	</div>

	<!-- <script>
		// Pure WebSocket JS

		var socket = null;

		connect();

		function connect() {
			var ws = new WebSocket("ws://localhost:8080/myEcho");

			socket = ws;

			// Connection이 연결되었을 때,
			ws.onopen = function() {
				console.log('info : connection opened.');

				// 서버로부터 데이터 수신하기 
				// : Connection이 연결된 상태에서 데이터가 수신되어야 한다.
				ws.onmessage = function(event){
					console.log("ReceiveMessage :",event.data+ '\n');
				}
				// Connection이 닫혔을 때, 
				ws.onclose = function(event) {
					console.log('Info : Connection closed.');

					// 1초후, Retry Connect (재연결)
					setTimeout( function() { connect();}, 1000);   
				};

				// Error 발생 시,
				ws.onerror = function(err){
					console.log('Error : ', err);
				}

			};


		} // connect()

		// 버튼 클릭 시, 
		$('#btnSend').on('click', function(evt){
			evt.preventDefault();

			if(socket.readyState != 1) return; 

			let msg = $('input#msg').val();
			socket.send(msg);
			$('input#msg').val('');
			
		})
		
	</script> -->

	<!-- <script>
		// SockJS를 이용
		var socket = null;

		connectSockJS();

		function connectSockJS()  {
			var sock = new SockJS("/myEcho");

			socket = sock;

			sock.onopen = function () {
				console.log('Info : connection opened.');

				sock.onmessage = function(event){
					console.log("ReceiveMessage : ", event.data +'\n');
				}

				sock.onclose = function (event){
					console.log('Info : connection closed.');
					
					// 1초 후, Retry Connect (재연결)
					setTimeout( function() {connectSockJS();}, 1000);

				} // onclose

				sock.onerror = function(err){
					console.log('Error : ', err);
				}
			}
		} // connectSockJS


		// 버튼 클릭 시, 
		$('#btnSend').on('click', function(evt){
			evt.preventDefault();

			if(socket.readyState != 1) return; 

			let msg = $('input#msg').val();
			socket.send(msg);
			$('input#msg').val('');
			
		})

	</script> -->
	
	<script>
		var socket = null;

		connectStomp();

		function connectStomp(){
			// endPoint : 접속URL
			var sock = new SockJS("/stompTest");

			// Stomp에게 뚫어진 Pipe를 알려준다.
			var client = Stomp.over(sock);

			isStomp = true;
			socket = client;

			client.connect({}, function () {
				console.log("Connected stompTest!!!");

				// client.send('/TTT', {}, "msg : Haha~~~");

				client.subscribe('/topic/'+1, function(event){
					console.log("!!!!!!!!!!!!event>>", event);
					$('.chat-box').append(`<li>\${event}</li>`);
				});
			})

		}

						// 버튼 클릭 시, 
		$('#btnSend').on('click', function(evt){
			console.log("버튼클릭또")

			if(isStomp){
				

				if(!isStomp && socket.readyState != 1) return; 

				let msg = $('input#msg').val();
				$('input#msg').val('');
				socket.send('/'+1, {}, msg);
				


				
			}

		})

	</script>
	
	<script>
		
		//------------------
		// 댓글목록 불러오기
		//------------------
		$(function (){

			// 현재 게시글 번호를 바인딩
			var bnoValue = '<c:out value="${board.bno}"/>';
			var replyEndPage = '<c:out value="${replyRealEndPage}"/>';
			console.log(replyEndPage);

			// HTML 파씽이 완료 후, showList함수 호출 (댓글목록 불러오기)
			showList(replyEndPage);
			
			var filter = {
				category : 0,
				search: '',
				searchCategory : '',
			}

			
			function showList(page, filter){

				var currentTime = replyService.getCurrTime();
	
				replyService.getList({bno:bnoValue, page: page || 1}, function(data){

				let list = data.list;
				let str = "";
				let replyDiv = $(".wrap_comment");

				for(var i=0, len = list.length; i<len; i++){
					
					var replyer = list[i].replyer;
					var replyDate = list[i].replyDate;
					var reply = list[i].reply;
					var rno = list[i].rno;

					var fmtReplyDate = replyService.timeFormat(currentTime, replyDate);

				str += 
				`<div class="comment">
				<form action="#" class="comment-div1">
					
					<div class="comment-col1">
						<div class="comment-writer">
							
							<span class="font-14-500" id="replyer-\${rno}">\${replyer}</span>
							&nbsp;<span class="font-12-500" id="replyDate-\${rno}">\${fmtReplyDate}</span>
						</div>

						<div class="comment-btn-box font-14-500">
							<button type=button class="comment-btn show-comment-form" onclick="f_ReplyReplyBtnOn()">답글</button>
							<button type=button class="comment-btn modify-comment-btn" onclick="f_modifyReplyBtnOn()">수정</button>
							<button class="comment-btn modify-comment-submit" type="button">수정완료</button>
							<button type=button class="comment-btn delete-comment-btn">삭제</button>
							<input type="hidden" class="comment-rno" value="\${rno}">
						</div>
						
					</div>
					<textarea id="reply-\${rno}" class="comment-col2" disabled>\${reply}</textarea>
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

				}// for


				// 댓글 페이징 처리
				let cri = data.cri;
				let startPage = data.startPage;
				let endPage = data.endPage;
				let prev = data.prev;
				let next = data.next;
				let currPage = cri.currPage;
				// 전역변수로, 현재 마지막페이지 변수바인딩
				// -- 댓글 등록 시, 마지막 페이지로 이동 필요
				replyEndPage = endPage;			


				let replyPagingUl = $(".reply-paging");
				var replyPaging = "";

				if(prev){
					replyPaging += `<li class="reply-prev">Prev</li>`;
				}

				var step;

				for(step = startPage; step <= endPage; step++){
					if(startPage == 0){
						break;
					}

					if(currPage == step){
						replyPaging += `<li class="reply-currPage btn-currPage">\${step}</li>`
					} else {
						replyPaging += `<li class="btn-currPage">\${step}</li>`
					}
				}

				if(next){
					replyPaging += `<li class="reply-next">NEXT</li>`;
				}

				replyDiv.html(str);
				replyPagingUl.html(replyPaging);


				//---------------------
				// 페이징 이동하기
				//---------------------
				$(".btn-currPage").on('click', function () {
					let goPage = $(this).text();
					console.log(goPage);

					showList(goPage);
				})


				//---------------------
				// 댓글 수정하기
				//---------------------
				$(".modify-comment-submit").on('click', function (){
					// console.log("댓글 수정완료 버튼이 클릭되었습니다.");

					// 댓글 rno 변수 바인딩
					let rno = $(this).siblings("input").val();

					var reply = {
						rno : rno,
						replyer : $(`#replayer-\${rno}`).text(),
						replyDate : $(`#replyDate-\${rno}`).text(),
						reply : $(`#reply-\${rno}`).val()
					};

					replyService.modify(reply, function(result){

						alert(result);
						$(this).hide();
						$(this).parent().children(".modify-comment-btn").show();
						$(this).parents(".comment-div1").children(".comment-col2").attr('disabled', true);

						showList(currPage);

					});
	
				}) //end::댓글 수정하기


				//---------------------
				// 댓글 삭제하기
				//---------------------
				$(".delete-comment-btn").on('click', function (){
					// console.log("댓글 삭제 버튼이 클릭되었습니다.");

					let rno = $(this).siblings("input").val();

					var reply = {
						rno : rno
					}

					replyService.remove(reply, function(result) {
						alert(result);

						showList(currPage);

					})

				}) //end:: 댓글삭제하기


			}) //end::replyServuce.getList()	





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

					showList(replyEndPage);

					$("#register-reply").val('');
					replyer : $("#register-writer").val(`\${loginUserID}`);
				})
			}) //end 댓글등록버튼


			//----------------------------
			// 이미지 삭제 (화면에서만...)
			//----------------------------
			$(".btn-delete-img").change(function () {
				console.log("클릭");
				if(confirm("이미지를 삭제하시겠습니까?")){
					$(this).parent().css("display", "none");
				}	
			})


			//----------------------------
			// 이미지 수정 시, 화면에서만 교체(화면에서만...)
			//----------------------------


		}) //end Entry-Point

	</script>
	
	
</body>
</html>