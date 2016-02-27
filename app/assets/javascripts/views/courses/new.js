modulejs.define("courses.new", function() {

  $.validator.addMethod("checkName",
     function(value, element) {
         var result = false;
         $.ajax({
             type:"POST",
             async: false,
             url: "/courses/checkName", // script to validate in server side
             data: {name: value},
             success: function(data) {

                 result = (data.course !== null) ? false : true;
             }
         });
         // return true if username is exist in database
         return result;
     },
     "This name is already taken! Try another."
 );
    $("#course").validate({

       rules: {
         'course[name]':{required:true, checkName:true},
         'course[status]': {number:true , required: true}
       }

    });

});
