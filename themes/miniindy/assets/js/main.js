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

    });
})(jQuery);