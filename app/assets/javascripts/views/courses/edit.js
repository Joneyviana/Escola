modulejs.define("courses.edit", function() {


  $("#name").hide();
  $("#course").validate({
    rules: {
      'course[status]': {number:true , required: true}
     }
  });

});
