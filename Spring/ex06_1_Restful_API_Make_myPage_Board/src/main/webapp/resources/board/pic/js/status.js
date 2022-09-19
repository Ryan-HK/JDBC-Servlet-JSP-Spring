$(window).ready( ()=> {
    const statusNum = 0;

    switch(statusNum){
        case 0 :
            $('.inquery_status>t').text('처리완료');
            $('.inquery_status').css("background","rgb(20 167 255)");
            break;
        default :
            $('.inquery_status>t').text('처리중');
            $('.inquery_status').css("background","gray");
            break;
    }
})