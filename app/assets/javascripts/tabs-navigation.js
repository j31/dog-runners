$(document).ready(function() {

  $(".tab").on("click", function(e){
    console.log('hello');
    $(".tab").removeClass('active');
    $(this).addClass('active');
    $(".tab-content").addClass('hidden');
    $($(this).data('target')).removeClass('hidden');
  });

  $(".dog-selection-menu-item").on("click", function(e){
    console.log('hello');
    $(".dog-selection-menu-item").removeClass('active-dog');
    $(this).addClass('active-dog');
    $(".dog-profile").addClass('hidden');
    $($(this).data('target')).removeClass('hidden');
  });

});
