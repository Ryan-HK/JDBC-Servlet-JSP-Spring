
$(function(){
    jQuery('#select_group_sport').change(function() {
        var state = jQuery('#select_group_sport option:selected').val();
        if ( state == '기타' ) {
            jQuery('#sports_add_text').show();
        } else {
            jQuery('#sports_add_text').hide();
        }
    })
});

$(function() {

    $("#select_group_sport").change(function() {
        $("#input_hash1").val($(this).val());
    });
});
