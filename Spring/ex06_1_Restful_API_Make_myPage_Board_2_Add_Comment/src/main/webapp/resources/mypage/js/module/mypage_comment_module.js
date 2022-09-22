console.log("myPage_comment_module....");



var mypageCommentService = (function () {

    //--------------------------
    //1. 내 댓글목록 불러오기
    //--------------------------
    function getCommentList(param, filter, callback, error){
        // console.log("getCommentList function() invoked.");
        // console.log(param.category);
        var page = param.page;
        var category = param.category;
        var keyword = filter.keyword;
        var type = filter.type;

        // console.log(param.category);

        $.ajax({
            url: "/mypage/comment/categorys/" + category + "/pages/" + page,
            type: "GET",
            dataType: "json",
            data : filter,
            contentType : "application/json; charset=utf-8",

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

    } //getCommentdList

    //--------------------------
    //2. 내 댓글 삭제하기
    //--------------------------
    function removeReply(bno, callback, error){

        $.ajax({
            type: 'delete',
            url : '/mypage/comment/replys/' + bno,
            async: false,

            success : function(result){
                if(callback){
                    callback(result);
                }
            },

            error : function (xhr, status, er){
                if(error){
                    error(er);
                }
            }
        });


    } // removeReply



    return {
        getCommentList : getCommentList,
        removeReply : removeReply
    }
})();