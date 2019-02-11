(function($) {
    $(document).ready(function() {
        // !jQuery Slider
        $('#slides').slides({
            preload: true,
            effect: 'fade',
            crossfade: true,
            play: 5000,
            preloadImage: '/themes/miniindy/images/ajax-loaderHome.gif',
            generateNextPrev: true
        });

        $('.dropdown', document).on('hover', function() {
            var show = 'show';
            $(this).toggleClass(show);
            $(this).find('.dropdown-menu').toggleClass(show);
        });

        $('#RuleList > li, #rulelist > li', document).on('click', function() {
            var allTargets = $(this).closest('ul').find('li');
            allTargets.each(function() {
                $(this).find('ul').hide();
            });
            $(this).find('ul').show();
        });

    });

})(jQuery);