console.log("myPage_cs_module....");



var mypageCSService = (function () {

    //--------------------------
    //1. 내 Qna 글 리스트 조회
    //--------------------------
    function getQnaList(param, callback, error){
        console.log("getQna function() invoked.");
        // console.log(param.category);
        var page = param.page;
        var category = param.category;

        // console.log(param.category);

        $.ajax({
            url: "/mypage/cs/qna/results/" + category + "/pages/" + page,
            type: "GET",
            dataType: "json",

            success: function(data){
                if(callback){
                    callback(data);
                }
            },

            error: function(xhr, status, error){
                if(error){
                    error();
                }
            }

        });

    } // getQnaList


    //--------------------------
    //2. 내 Report 글 리스트 조회
    //--------------------------
    function getReportList(param, callback, error){
        console.log("getReport function() invoked.");
        // console.log(param.category);
        var page = param.page;
        var category = param.category;

        // console.log(param.category);

        $.ajax({
            url: "/mypage/cs/report/results/" + category + "/pages/" + page,
            type: "GET",
            dataType: "json",

            success: function(data){
                if(callback){
                    callback(data);
                }
            },

            error: function(xhr, status, error){
                if(error){
                    error();
                }
            }

        });

    } // getReportList

    return {
        getQnaList : getQnaList,
        getReportList : getReportList
    }
})();