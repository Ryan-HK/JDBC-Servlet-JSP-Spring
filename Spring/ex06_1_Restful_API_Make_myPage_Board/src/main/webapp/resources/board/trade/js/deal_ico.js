$(window).ready(()=> {

    const icoNum = 2;

    switch(icoNum){
        case 0 :
            $('.font-12-300[type="text"]').text('구매');
            $('.font-12-300[type="text"]').css("background","darkcyan");
            break;
        case 1 :
            $('.font-12-300[type="text"]').text('나눔')
            $('.font-12-300[type="text"]').css("background","coral");
            break;
        default :
            $('.font-12-300[type="text"]').text('판매');
            break;
    }
})