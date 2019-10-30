require('../../vendor/js/slides.min.jquery');

require('../../vendor/prettyPhoto/js/jquery.prettyPhoto');

window.$ = window.jQuery || document.write('<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"><\/script>');
(function($) {

    
    var prettyPhotoOptions = {
        modal: true,
        allow_resize: true,
        theme: 'light-rounded'
    };
    
    $(document).ready(function() {
        
        // $("a[rel^='prettyPhoto']", document).prettyPhoto(prettyPhotoOptions);

        // $("a[rel^='prettyPhoto']", document).each(function(){
        //     var ppOptions = $.extend({}, prettyPhotoOptions, $(this).data());
        //     console.log( $(this).data(), ppOptions );
        //     $(this).prettyPhoto(ppOptions);
        // });

        $("a[rel^='prettyPhoto']", document).on('click', function() {
            var ppOptions = $.extend({}, prettyPhotoOptions, $(this).data());
            console.log( $(this).data(), ppOptions );
            $(this).prettyPhoto(ppOptions);
            
        });
    });

})(jQuery);