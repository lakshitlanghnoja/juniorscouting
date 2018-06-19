$(window).scroll(function() {


    var scroll = $(window).scrollTop();

    if (scroll >= 105) {
        $(".top_nav_wrapper").addClass("fix-nav")  ;
    }
    else {
        $(".top_nav_wrapper").removeClass("fix-nav");


    }
});



$(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
        $('.scrolltop:hidden').stop(true, true).fadeIn();
    } else {
        $('.scrolltop').stop(true, true).fadeOut();
    }
});
$(function () {
    $(".scroll").click(function () {
        $("html,body").animate({scrollTop: $(".thetop").offset().top}, "1000");
        return false
    })
})


window.onbeforeunload = function () {
    window.scrollTo(0, 0);
}