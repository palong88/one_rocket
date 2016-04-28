// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs


//= require materialize-sprockets
//= require turbolinks
//= require bootstrap
//= require bootstrap-modal
//= require bootstrap-modalmanager
//= require_tree .



    $$(document).on("page:load ready", function(){
    $("input.datepicker").datepicker();
});


 <script>
$( ".selector" ).tabs({
  activate: function(event,ui) {
    var anchor = $(event.target).attr("id");
    location.hash = anchor; //this will add #id to your url, which upon refresh will trigger the jquery tab selection event
  }
}); 
</script>
