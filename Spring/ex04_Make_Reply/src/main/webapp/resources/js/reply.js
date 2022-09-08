
console.log("Reply Module....");

var replyService = (function () {
    //--------------------
    // 댓글목록 불러오기
    //--------------------
    function getList(param, callback, error){

        let bno = param.bno;
        let page = param.page;

        $.ajax({
            url: "/replies/pages/" + bno + "/" + page,
            type: "GET",
            dataType: "json",

            // 성공시....
            success:function(data){
                if(callback){
                    console.log(data);
                    callback(data);
                }
            },

            error: function(xhr, status, error){
                if(error){
                    error();
                }
            }
        })

    } // getList

    //--------------------
    // 댓글 추가
    //--------------------
    function add(reply, callback, error){
        console.log(reply);

        $.ajax({
            type: 'POST',
            url : "/replies/new",
            data : JSON.stringify(reply),   // 전송할 DATA
            contentType : "application/json; charset=utf-8", // 전송할 DATA TYPE
            
            success : function (result, status, xhr){
                if(callback){
                    callback(result);
                }
            },

            error : function (xhr, status, er){
                if(error){
                    error(er);
                }
            }
        })

    } // add

    //--------------------
    // 댓글 수정
    //--------------------
    function modify(reply, callback, error){

        $.ajax({
            type: 'PUT',
            url: '/replies/' + reply.rno,
            data: JSON.stringify(reply),
            contentType : "application/json; charset=utf-8",
            
            success : function(result, status, xhr){
                if(callback){
                    callback(result);
                }
            },

            error : function (xhr, status, er){
                if(error){
                    error(er);
                }
            }

        })

    } // modify

    return {
        getList : getList,
        add : add,
        modify : modify
    }

})();


