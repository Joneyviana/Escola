modulejs.define("professors.edit", function() {
var person = modulejs.require("person");
  person.validate(".edit_professor","professor");
  

  $("#professor_image").change(function(){
    $("#uploadFile").val($(this).val());
});
});
