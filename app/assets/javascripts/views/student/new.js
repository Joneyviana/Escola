
modulejs.define("students.new", function() {
  $.validator.addMethod("checkRegisterNumber",
     function(value, element) {
         var result = false;
         $.ajax({
             type:"POST",
             async: false,
             url: "/students/check_register_number", // script to validate in server side
             data: {register_number: value},
             success: function(data) {

                 result = (data.student !== null) ? false : true;
             }
         });
         // return true if username is exist in database
         return result;
     },
     "This username is already taken! Try another."
 );
    $("#student").validate({
    errorClass: "error_validation",
       rules: {
         'student[name]':"required",
         'student[register_number]': {number: true, minlength: 6,required:true,checkRegisterNumber:true},
         'student[status]': {number:true , required: true}
       }

    });


   $("#student_image").change(function(){

      $("#uploadFile").val($(this).val());
  })
});
