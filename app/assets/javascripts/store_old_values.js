  $(document).ready(function(){
    $('#storeOldValues').click(function(event){
      var dogName = <%= @run.dog.name.to_json %>
      var duration = <%= @run.duration.to_json %>
      $('showOldValues').click(function(event){
        $('storeValueDog').val(dogName)
        $('storeValueDuration').val(duration)
      });
    });
  });
