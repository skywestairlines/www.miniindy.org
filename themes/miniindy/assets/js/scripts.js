require('./main');
require('./money');
require('./register');

;(function($){
    $(document).ready(function(){
        
        $('#exampleModalCenter', document).modal('show');
    });

    // $('[name="dontshow"]', document).on('change click', function(){
    //     console.log(this)
    //     var $form = $(this).closest('form');
    //     var $action = $form.attr('action');
    //     var $donotshow = $(this).val();

    //     console.log($form, $action, $donotshow);

        // $.post($action, {donotshow: $donotshow}, funcion(res){
        //     res
        // });
    //});

    
})(jQuery);