$(function(){
    jQuery('#select_board').change(function() {
        var state = jQuery('#select_board option:selected').val();
        if ( state == '문의' ) {
            jQuery('#access').show();
        } else {
            jQuery('#access').hide();
        }
    })
});


$(function(){
    jQuery('#select_board').change(function() {
        var state = jQuery('#select_board option:selected').val();
        if ( state == '중고거래' ) {
            jQuery('#select_transaction').show();
        } else {
            jQuery('#select_transaction').hide();
        }
    })
});

$("#input_file").on('change',function(){
    var fileName = $("#input_file").val();
    $(".upload_name").val(fileName);
});