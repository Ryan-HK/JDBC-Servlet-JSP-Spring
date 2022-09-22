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


// 취미선택
let maxCount = 3;								
let count = 0;   								

function CountChecked(field){ 					
	
	if (field.checked) {	
		count += 1;			
		$(field).attr('name', "sports"+count);	
				
	} else {						
		count -= 1;		
		$(field).attr('name', "hobby");				
	}

	if (count > maxCount) {						
		alert("최대 3개까지만 선택가능합니다.");	
        field.checked = false;			
        count -= 1;		
		$(field).attr('name', "hobby");								
	}
}


