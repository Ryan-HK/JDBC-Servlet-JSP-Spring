// 이미지 업로드 미리보기
$('input[name="file"]').change(function(){
    setImageFromFile(this, '.profile');
    
});

// 기본 클릭시
$('#currImg').click(()=> {
  $('.profile').attr('src', '/resources/signUp/img/profile.png');
  $('input[name="file"]').val("");
})

function setImageFromFile(input, expression) {
    if (input.files && input.files[0]) {
    let reader = new FileReader();
    reader.onload = function (e) {
        $(expression).attr('src', e.target.result);
    }
    
    reader.readAsDataURL(input.files[0]);
  } // if

}

