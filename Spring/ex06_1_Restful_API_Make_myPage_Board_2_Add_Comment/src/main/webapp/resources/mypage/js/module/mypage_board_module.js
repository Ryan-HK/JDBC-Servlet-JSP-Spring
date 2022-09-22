console.log("mypage_board_module....");



var mypageBoardService = (function () {



    //--------------------------
    //1. 내 글 목록 불러오기
    //--------------------------
    function getBoardList(param, filter, callback, error){


        var page = param.page;
        var category = param.category;
        var keyword = filter.keyword;  
        var type = filter.type;

        $.ajax({
            url: "/mypage/board/categorys/" + category + "/pages/" + page,
            type: "GET",
            dataType: "json",
            data: filter,
            contentType : "application/json; charset=utf-8",

            success:function(data){
                if(callback){
                    callback(data);
                }
            },

            error: function(xhr, status,error){
                if(error){
                    error();
                }
            }

        })

    } // getBoardList


    //--------------------------
    //2. 내 글 삭제하기
    //--------------------------
    function removeArticle(bno, callback, error){
        
        $.ajax({
            type: 'delete',
            url: '/mypage/board/articles/' + bno,
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
    } // deleteArticle

    return {
        getBoardList : getBoardList,
        removeArticle : removeArticle
    }

})();