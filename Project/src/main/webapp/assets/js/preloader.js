$(window).on("load", function () {
    $(".loader").fadeOut();
    $("#preloder").delay(200).fadeOut("slow");

    /*------------------
        Portfolio filter
    --------------------*/
    $(".portfolio__filter li").on("click", function () {
        $(".portfolio__filter li").removeClass("active");
        $(this).addClass("active");
    });
    if ($(".portfolio__gallery").length > 0) {
        var containerEl = document.querySelector(".portfolio__gallery");
        var mixer = mixitup(containerEl);
    }
});


/* ends preloader */
/* important use same class name and id if using commonly */    