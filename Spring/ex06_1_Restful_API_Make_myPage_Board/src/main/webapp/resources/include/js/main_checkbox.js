// 전체 선택
$(".checkbox_group").on("click", "#agree_all", function () {
    $(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
});

// 개별 선택
$(".checkbox_group").on("click", ".normal", function() {
    var is_checked = true;

    $(".checkbox_group .normal").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#agree_all").prop("checked", is_checked);
});