modulejs.define("courses.index", function() {

  function search_persons(url ,element){
  promise = $.get(url);
  promise.done(function(data) {
    course = data.course ;
    var result = JST['templates/persons/index'](course);
    element.html(result);
    element.trigger("render:template")


  });
   }
    $(".course").click(function(){
    var id = $(this).attr('id');
    var element = $(this).children(".course-person");
    if (element.is(':parent')) {
      element.trigger("render:template")
    }
    else {
       element.hide();
       search_persons("/courses/"+ id ,element);
    }
    });

    $(".course-person").on("render:template",function(){
      if ($(this).is(":visible")){
        $(this).slideUp(1000);
      }
      else {
      $(".course-person").slideUp(1000);
      $(this).slideDown(1000);}
      });
});
