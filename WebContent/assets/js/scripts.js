jQuery(document).ready(function () {

    /*
        Fullscreen background
    */
    // $.backstretch([
    //     "../assets/img/backgrounds/2.jpg"
    //     , "../assets/img/backgrounds/3.jpg"
    //     , "../assets/img/backgrounds/1.jpg"
    // ], {duration: 3000, fade: 750});

    $.backstretch([
        "../img/main-bg/skin-blue.jpg"
        , "../img/main-bg/skin-city.jpg"
        , "../img/main-bg/skin-greenish.jpg"
        , "../img/main-bg/skin-kiwi.jpg"
        , "../img/main-bg/skin-lights.jpg"
        , "../img/main-bg/skin-night.jpg"
        , "../img/main-bg/skin-ocean.jpg"
        , "../img/main-bg/skin-sunny.jpg"
        , "../img/main-bg/skin-sunset.jpg"
        , "../img/main-bg/skin-violate.jpg"
        , "../img/main-bg/skin-yellow.jpg"
    ], {duration: 5000, fade: 750});
    /*
        Form validation
    */
    $('.login-form input[type="text"], .login-form input[type="password"], .login-form textarea').on('focus', function () {
        $(this).removeClass('input-error');
    });

    $('.login-form').on('submit', function (e) {

        $(this).find('input[type="text"], input[type="password"], textarea').each(function () {
            if ($(this).val() == "") {
                e.preventDefault();
                $(this).addClass('input-error');
            }
            else {
                $(this).removeClass('input-error');
            }
        });

    });


});
