modulejs.define("professors.new", function() {
var person = modulejs.require("person");
  person.validate(".new_professor","professor");
  

  $("#professor_image").change(function(){
    $("#uploadFile").val($(this).val());
})
});
