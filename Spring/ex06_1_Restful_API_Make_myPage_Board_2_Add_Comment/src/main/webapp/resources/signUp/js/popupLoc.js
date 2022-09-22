$(function () {      
    // 팝업창 확인버튼이 눌렸을 때, 부모창으로 닉네임값 전달
    $(".find_location_btn").on("click", function (){
        let e = $("#currLocation").text();
        $("#loc", opener.document).val(e);

        window.close();

    })
})
