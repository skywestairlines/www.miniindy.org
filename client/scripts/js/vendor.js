// require('../../vendor/js/slides.min.jquery');
// require('../../vendor/prettyPhoto/js/jquery.prettyPhoto');


(function($) {

    $(document).ready(function() {
        $("a[rel^='prettyPhoto']", document).prettyPhoto();

        $(document).on('click', "a[rel^='prettyPhoto']", function() {
            $(this).prettyPhoto();
        });
    });

})(jQuery);