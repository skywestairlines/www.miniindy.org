(function($) {
    $(document).ready(function() {
        $('#slides').slides({
            preload: true,
            effect: 'fade',
            crossfade: true,
            play: 5000,
            preloadImage: '/themes/miniindy/images/ajax-loaderHome.gif',
            generateNextPrev: true
        });


        $('.dropdown', document).on('mouseenter mouseleave', function() {
            var show = 'show';
            $(this).toggleClass(show);
            $(this).find('.dropdown-menu').toggleClass(show);
        });

        $('#RulesList .holder, #ruleslist .holder', document).on('click', function() {
            $('#RulesList .bobo, #ruleslist .bobo', document).hide();
            $(this).next('.bobo').show();
        });

    });

})(jQuery);