modulejs.define("person", function() {
  return {
  /*validateAjax: function(Url) {
  $.validator.addMethod("checkRegisterNumber",
     function(value, element) {
         var result = false;
         $.ajax({
             type:"POST",
             async: false,
             url: Url, // script to validate in server side
             data: {register_number: value},
             success: function(data) {

                 result = (data.student !== null) ? false : true;
             }
         });
         // return true if username is exist in database
         return result;
     },
     "This register number is already taken! Try another."
 );
  }, */
  validate: function(idTag,role){
    var name =  role + "[name]";
    var register_number = role + "[register_number]";
    var status = role + "[status]";
    
    var myRules = {};
         myRules[name] = "required";
         myRules[register_number] = {number: true, minlength: 6,required:true};
         myRules[status] =  {number:true , required: true};
       
    $(idTag).validate({
     
     rules: myRules
    })
   
   }
  
  }

});