$(document).ready(function(){
  $('#toggleInbox').hide();
  $('.container-two-run').on("click", ".toggleButton", function(event){
    event.preventDefault();
    $('#toggleInbox').toggle();
    $('.toggleButton').toggle();
  });
  $('#closechat').click(function(){
    $('#toggleInbox').toggle();
    $('.toggleButton').toggle();
  });
});
