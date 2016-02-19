(function() {
 "use strict";

  $(document).ready(function() {
    var mymodule,
        dispatch_to = $("body").attr("dispatcher"),
        modules = modulejs.state();

    if(modules[dispatch_to]) {
      action_module = modulejs.require(dispatch_to);
      action_module();
    }
  });
})();
