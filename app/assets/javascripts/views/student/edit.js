modulejs.define("students.edit", function() {
  var person = modulejs.require("person");
  person.validate(".edit_student","student");
  person.validateAjax("/students/check_register_number");
  
   $("#student_image").change(function(){

      $("#uploadFile").val($(this).val());
  })
});
