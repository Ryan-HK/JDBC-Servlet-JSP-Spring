
$(function () {

	// 닉네임검색 팝업창 띄우기
	$(".btn-primary3").on('click', function(){
	    let popupUrl = '/signup/map';
	    let popupName = '지역검색';
	    let popupSize = 'width=400, height=500, left=800, top=200';
	
	    window.open(popupUrl, popupName, popupSize);
	})
})
