

// Radio Button Action - DURATION
$(document).ready(function(){
  $(".duration-choice").click(function(){
    $('.duration-choice').removeClass("active");
    $(this).toggleClass("active");
  });
});

// Radio Button Action - DOGS
$(document).ready(function(){
  $(".dog-choice").click(function(){
    $('.dog-choice').removeClass("active");
    $(this).toggleClass("active");
  });
});

// Radio Button Action - INTENSITY
$(document).ready(function(){
  $(".intensity-choice").click(function(){
    $('.intensity-choice').removeClass("active");
    $(this).toggleClass("active");
  });
});
