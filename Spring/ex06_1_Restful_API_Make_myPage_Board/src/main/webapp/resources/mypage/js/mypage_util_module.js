console.log("mypage_utile_module....");



var mypageUtilService = (function () {



    //--------------------------
    //1. 날짜 format하기
    //--------------------------
    function timeFormat(targetTime){

        // 현재시간
        var currentTime = new Date();
        
        // 포맷팅 대상 시간
        var formatTime = new Date(targetTime);
                // console.log(targetTime);
                // console.log(formatTime);
                // 현재시간 년/월/일/ 계산
                var currentY = ('0'+ currentTime.getFullYear()).slice(-2);
                var currentM = ('0'+ (currentTime.getMonth() + 1)).slice(-2);
                var currentD = ('0'+ currentTime.getDate()).slice(-2);
        
                // 포맷팅 대상 년/월/일 계산
                var formatY = ('0'+ formatTime.getFullYear()).slice(-2);
                var formatM = ('0'+ (formatTime.getMonth() + 1)).slice(-2);
                var formatD = ('0'+ formatTime.getDate()).slice(-2);
                var formatH = ('0'+ formatTime.getHours()).slice(-2);
                var formatMM = ('0'+ formatTime.getMinutes()).slice(-2);

                if(currentY == formatY && currentM == formatM && currentD == formatD){
        
                    return '오늘 ' + formatH + ':' + formatMM;
        
                } else {
        
                    return formatY + '.' + formatM + '.' + formatD;
                }

    } // timeFormat


    return {
        timeFormat : timeFormat
    }

})();