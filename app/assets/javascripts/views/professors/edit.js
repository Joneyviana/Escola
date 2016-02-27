modulejs.define("professors.edit", function() {
$("#professor_image").change(function(){
    $("#uploadFile").val($(this).val());
});
});
