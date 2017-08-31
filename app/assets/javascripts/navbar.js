$(document).ready(function() {

//MOBILE ONE AND MOBILE THREE
var menu = "close";
$(".mobile-header .menu-toggle").click(function() {

    if (menu === "close") {
        $(".mobile-nav").css("transform", "translate(0, 0)");
       menu = "open";
    } else {
        $(".mobile-nav").css("transform", "translate(-100%, 0)");
        menu = "close";
    }
});
});
