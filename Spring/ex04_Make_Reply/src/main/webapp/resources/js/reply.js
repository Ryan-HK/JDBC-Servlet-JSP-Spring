
console.log("Reply Module....");

var replyService = (function () {

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

    } // get List

    return {
        getList : getList
    }

})();


