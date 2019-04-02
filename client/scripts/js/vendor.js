require('../../vendor/js/slides.min.jquery');

require('../../vendor/prettyPhoto/js/jquery.prettyPhoto');

window.$ = window.jQuery || document.write('<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"><\/script>');
(function($) {


    var prettyPhotoOptions = {
        social_tools: '<div class="center"><a id="download-pretty-photo" href="#" class="btn btn-primary btn-md"><strong>Download</strong></a></div>',
        modal: true,
        allow_resize: true,
        theme: 'light-rounded'
    };

    $(document).ready(function() {

        $("a[rel^='prettyPhoto']", document).prettyPhoto(prettyPhotoOptions);

        $(document).on('click', "a[rel^='prettyPhoto']", function() {

            $(this).prettyPhoto($.extend({}, prettyPhotoOptions, $(this).data()));
        });
        $(document).on('click', "#download-pretty-photo", function(e) {
            e.preventDefault();

            var ppImage = $(this).closest('.pp_pic_holder').find('img'); console.log(ppImage);
            var ppImgSrc = ppImage.attr('src').split('?')[0];
            var link = document.createElement("a"); 
            link.download = ppImgSrc;
            link.href = ppImgSrc;
            link.onclick = "return false;";
            console.log( link );
            // $(link).click();
            link.click();
        });
        
    });

})(jQuery);