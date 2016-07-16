modulejs.define("students.new", function() {
  var person = modulejs.require("person");
  person.validate("#new_student","student");
  person.validateAjax("/students/check_register_number");
  
   $("#student_image").change(function(){

      $("#uploadFile").val($(this).val());
  })
});
