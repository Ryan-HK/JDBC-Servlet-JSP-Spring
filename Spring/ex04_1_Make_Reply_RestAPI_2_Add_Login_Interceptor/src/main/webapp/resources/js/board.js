// 게시글 리스트이동 / 수정하기 / 삭제하기
$(function() {
	// console.log("버튼 자바스크립트 ");
	
	var sch = location.search;
	var params = new URLSearchParams(sch);
	
	var currPage = params.get('currPage');

	// 게시글 리스트로 이동
	$("#list-btn").on('click', function(){
		location.href = `/board/list?currPage=${currPage}`;
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

})