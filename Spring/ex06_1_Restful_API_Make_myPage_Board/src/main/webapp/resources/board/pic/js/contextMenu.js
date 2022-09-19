$(function(){
    $.contextMenu({
        selector: '.context-menu-one', 
        callback: function(key, options) {
            var m = "click: " + key;
            window.console && console.log(m); 
        },
        items: {
            "userData": {name: "회원정보", icon: "fa-solid fa-envelope"},
            "message": {name: "쪽지", icon: "fa-solid fa-user"},
        }
    });
    
    $('.context-menu-one').on('click', function(e){
        console.log('clicked', this);
    })

});