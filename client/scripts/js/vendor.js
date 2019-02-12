require('../../vendor/js/slides.min.jquery');

require('../../vendor/prettyPhoto/js/jquery.prettyPhoto');

window.$ = window.jQuery || document.write('<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"><\/script>');
(function($) {

    $(document).ready(function() {
        $("a[rel^='prettyPhoto']", document).prettyPhoto();

        $(document).on('click', "a[rel^='prettyPhoto']", function() {
            $(this).prettyPhoto();
        });
    });

})(jQuery);