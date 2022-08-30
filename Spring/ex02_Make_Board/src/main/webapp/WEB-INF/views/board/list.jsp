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

	<style>
		/* 게시판 전체영역 */
		.board {
			display: flex;
			flex-direction: column;

			width: 100%;

			background-color: white;
			/* border: 1px solid red; */
		}

		
		.board-head {
			display: flex;
			justify-content: space-between;
			align-items: center;

			height: 30px;
			text-align: center;
			border-bottom: 1px double grey;
		}

	
		.board-content {
			display: flex;
			justify-content: space-between;
			align-items: center;

			height: 24px;
		}

		
		.board-col1 {
			width: 5%;
			text-align: center;
		}
		.board-col2 {
			width: 60%;
			margin-left: 20px;
		}

		.board-col2 a {
			width: 100%;
			cursor: pointer;
			text-decoration: none;
		}

		.board-col2 a:hover {
			background-color: rgb(250,250,250);
		}

		.board-col3 {
			width: 10%;
			text-align: center;
		}
		.board-col4 {
			width: 25%;
			text-align: center;
		}

		
		.board-top {
			text-align: right;
			margin-bottom: 10px;
		}

		#btn-board-register, #btn-board-hot{
			background-color: #666;
			color: white;

			height: 30px;
			width: 80px;
			border-radius: 5px;

			margin: 10px 10px;
		}
		
		#btn-board-register:hover {
			border: 1px solid yellow;
		}


		/* 페이징처리 */
		.board-footer {
			display: flex;
			justify-content: space-between;
		}

		.board-footer ul {
			display: flex;
			/* border: 1px solid blue; */
		}

		.board-footer ul li {
			display: flex;
			justify-content: center;
			align-items: center;
			list-style: none;
			width: 30px;
		}

		.board-footer ul li a {
			text-decoration: none;
			text-align: center;
			width: 100%;
		}

		.currPage {
			background-color: rgb(182, 238, 182);
		}

		.prev {
			width: 50px !important;
		}
		
		.next {
			width: 50px !important;
		}

	</style>

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
			<div class="board font-16-500">
				<div class="board-top">
					<button type="button" id="btn-board-register" class="font-16-700">글등록</button>
				</div>

				<div class="board-head font-16-700">
					<span class="board-col1 ">글번호</span>
					<span class="board-col2">글제목</span>
					<span class="board-col3">글쓴이</span>
					<span class="board-col4">날짜</span>
				</div>

				<c:forEach var="board" items="${board}">
					<div class="board-content">
						<span class="board-col1">${board.bno}</span>
						<span class="board-col2"><a href="/board/get?bno=${board.bno}&currPage=${pageMaker.cri.currPage}">${board.title}</a></span>
						<span class="board-col3">${board.writer}</span>
						<span class="board-col4">
							<fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${board.insert_ts}"></fmt:formatDate>
						</span>
					</div>
				</c:forEach>

			</div>

			<div class="board-footer">
				<button type="button" id="btn-board-hot">인기글</button>

				<ul>
					<c:if test="${pageMaker.prev}">
						<li class="prev"><a href="/board/list?currPage=${pageMaker.startPage - 1}">Prev</a></li>
					</c:if>

					<c:forEach var="pageNum" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="${pageMaker.cri.currPage == pageNum ? 'currPage' : ''}">
							<a href="/board/list?currPage=${pageNum}">${pageNum}</a>
						</li>
					</c:forEach>

					<c:if test="${pageMaker.next}">
						<li class="next"><a href="/board/list?currPage=${pageMaker.endPage + 1}">Next</a></li>
					</c:if>
				</ul>
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
</body>
</html>