
$(function () {

	// 닉네임검색 팝업창 띄우기
	$(".username_search").on('click', function(){
	    let popupUrl = '/center/report/usersearch';
	    let popupName = '닉네임 검색';
	    let popupSize = 'width=400, height=500, left=800, top=200';
	
	    window.open(popupUrl, popupName, popupSize);
	})
})
