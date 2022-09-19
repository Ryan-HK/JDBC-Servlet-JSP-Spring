function selectEmail(ele){
	console.log('selectEmail() invoked.');
	
    var $ele = $(ele);
    var $email2 = $('input[name=email2]');

    if($ele.val() == "1"){
        $email2.attr('readonly', false);
        $email2.val('');
    } else {
        $email2.attr('readonly', true);
        $email2.val($ele.val());
    }
}


//id 중복체크
function idCheck(){
    //새창 만들기
    console.log('idCheck() invoked.');
    window.open("idCheckForm.jsp", "idwin", "width=400, height=350");
  }
  
  
  //닉네임 중복체크
  function nickCheck(){
      //새창 만들기
      console.log('nickCheck() invoked.');
      window.open("nickCheckForm.jsp", "nickwin", "width=400, height=350");
  }//emailCheck() end
  