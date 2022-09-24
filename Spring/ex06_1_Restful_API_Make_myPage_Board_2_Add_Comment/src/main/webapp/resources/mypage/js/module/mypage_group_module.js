console.log("mypage_group_module....");



var mypageGroupService = (function () {

    //--------------------------
    //1. 내가 참여한 그룹 목록 불러오기
    //--------------------------
    function getGroupList(param, callback, error){
        console.log('getGroupList() invoked.');

        var page = param.page;
        // var category = param.category;
        

        $.ajax({
            url: "/mypage/group/pages/" + page,
            type: "GET",
            dataType: "json",

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

        });

    } // getGroupList


    // //--------------------------
    // //2. 내가 참여한 그룹 나가기
    // //--------------------------
    // function outGroup(gno, callback, error){
        
    //     $.ajax({
    //         type: 'delete',
    //         url: '/mypage/group/groups/' + gno,
    //         success : function(result){
	// 			if(callback){
    //                 callback(result);
    //             }
    //         },

    //         error : function (xhr, status, er){
    //             if(error){
    //                 error(er);
    //             }
    //         }

    //     });
    // } // outGroup

    return {
        getGroupList : getGroupList
    }

})();