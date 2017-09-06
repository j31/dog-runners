$(document).ready(function(){
  $('#toggleInbox').hide();
  $('.container-two-run').on("click", ".toggleButton", function(event){
    event.preventDefault();
    $('#toggleInbox').toggle();
    $('.toggleButton').toggle();
    window.scrollBy(0,1000);
  });
  $('#closechat').click(function(){
    $('#toggleInbox').toggle();
    $('.toggleButton').toggle();
  });
});
