function selectEmail(ele){
    var $ele = $(ele);
    var $email2 = $('#addr');

    if($ele.val() == "1"){
        $email2.attr('readonly', false);
        $email2.val('');
    } else {
        $email2.attr('readonly', true);
        $email2.val($ele.val());
    }
}

// 메일 발송 ajax
$('.btn-primary1').click(()=> {

    const email1 = $('#email1').val();
    const email2 = $('#addr').val();
    const email = email1 + '@' + email2
    const checkNum = $(".form-control");

    if( email1  == ''  || email2  == '' ){
        alert("이메일을 입력해 주세요.");
    } else {
        $.ajax({
            type: 'get',
            url: '/mailCheck?email='+email,
            
            success: ((data) => {
                currentNum=data;
                alert("전송되었습니다.");   
                $('#email1').attr('readonly', true);
                $('#email2').attr('readonly', true); 
            }),
            error: ((data) => {
                alert("발송이 실패 했습니다.");
            })
        }) // ajax

    } // if-else
    
})

const successMailMessage = '인증완료 되었습니다.';
const failMailMessage = '인증번호가 불일치 합니다. 다시 입력하세요.';

// 인증처리
$('#pinNumCheck').click(()=> {
    const message = $("#pinNum");
    const inputNum = $("#form-control").val();

    if(inputNum === currentNum) {
        message.text(successMailMessage);
        message.css('color','green');
        $("#form-control").attr('readonly', true);
        $('input[name=email1]').attr('readonly', true);
        $('input[name=email2]').attr('readonly', true);

    } else if(currentNum == null) {
        message.text(failMailMessage);
        message.css('color','red');
    } else {
        message.text(failMailMessage);
        message.css('color','red');
    }

})

const successIdMessage = '사용 가능한 ID 입니다.';
const failIdMessage = '이미 사용중인 ID 입니다.';

$('#idBtn').click(()=> {
    const id = $('#id').val();
    const idResult = $('#idResult');
    
    if(id == '') {
        alert('아이디를 입력 해주세요.');
    } else {
        $.ajax ({
            type: 'POST',
            url: '/signup/idCheck',
            data : {'id': id},
            async: false,
            success: ((data) => {
                if(data == true) {
                    idResult.text(successIdMessage);
                    idResult.css('color','green');
                } else {
                    idResult.text(failIdMessage);
                    idResult.css('color','red');
                }
            }),
            error: ((data) => alert('인증을 할수 없습니다.'))
        })// ajax
	} // if

}) 

const successNickMessage = '사용 가능한 닉네임 입니다.';
const failNickMessage = '이미 사용중인 닉네임 입니다.';

$('#nickBtn').click(()=> {
    const nickname = $('#nick_name').val();
    const nickNameResult = $('#nickNameResult');

    
    if(nickname == '') {
        alert('닉네임을 입력 해주세요.');
    } else {
        $.ajax ({
            type: 'POST',
            url: '/signup/nickNameCheck',
            data : {'nickname': nickname},
            async: false,
            success: ((data) => {
                if(data == true) {
                    nickNameResult.text(successNickMessage);
                    nickNameResult.css('color','green');
                } else {
                    nickNameResult.text(failNickMessage);
                    nickNameResult.css('color','red');
                }
            }),
            error: ((data) => alert('인증을 할수 없습니다.'))
        })// ajax
	} // if

}) 

// 비밀번호 확인

const failPwMessage = '비밀번호가 일치하지 않습니다.';
const successPwMessage = '비밀번호가 일치합니다.';

$('.pass2').keyup(()=> {
    const pwCheck = $('#pwCheck');
    const pass1 = $('.pass1').val();
    const pass2 = $('.pass2').val();
    
    if(pass1 != pass2) {
        pwCheck.text(failPwMessage)
        pwCheck.css('color','red');
    } else {
        pwCheck.text(successPwMessage);
        pwCheck.css('color','green');
    }

})

function autoHypenPhone(str){
    str.value = str.value.replace(/[^0-9]/g, '');

}



function handleOnInput(e)  {
    e.value = e.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/, '')
}

// 필수 체크
$('.sign_up').click(()=> {
    
    if($('#idResult').text() != successIdMessage) {
		alert("아이디 인증을 완료해 주세요..");	
	} else if( $('#nickNameResult').text() != successNickMessage) {
		alert("닉네임 인증을 완료해 주세요.");
	} else if($('#pwCheck').text() != successPwMessage) {
		alert("비밀번호를 확인해 주세요.");
	} else if($("#pinNum").text() != successMailMessage) {
		alert("이메일 인증을 완료해 주세요.");
	} else if( $("input[id='agree_1']").is(':checked') == false) {
		alert("이용약관 동의 해주세요.");
	} else if($("input[id='agree_2']").is(':checked') == false) {
		alert("개인정보 수집-이용 동의 해주세요.");
	} else if($("input[id='agree_3']").is(':checked') == false) {
		alert("위치정보 수집-이용 동의 해주세요.");
	} else {
		$('.sign_up').attr('type', 'submit');
	}
})
