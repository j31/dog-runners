$(document).ready(function(){
  $('#toggleInbox').hide();
  $('.toggleButton').click(function(event){
    event.preventDefault();
    $('#toggleInbox').toggle();
    $('.toggleButton').toggle();
  });
});
