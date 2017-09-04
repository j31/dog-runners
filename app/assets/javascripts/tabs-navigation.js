$(document).ready(function() {

  $(".tab").on("click", function(e){
    console.log('hello');
    $(".tab").removeClass('active');
    $(this).addClass('active');
    $(".tab-content").addClass('hidden');
    $($(this).data('target')).removeClass('hidden');
  });

});
