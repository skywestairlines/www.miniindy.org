require('./main');
require('./money');
require('./register');

;(function($){
    $(document).ready(function(){
        
        $('#popupvideo', document).modal('show');

        $(".pp_close").on("click", function(){
            $.prettyPhoto.close();
          });


        // $('#popupvideogallery$Pos').on('hidden.bs.modal', function (e) {
        //     $(this).removeData();
        // });

        // $('.modal').on('hidden.bs.modal', function(){
        //      $(this).removeData();
        // });
            //location.reload(true);
            // var id = event.target;
            // console.log(id);
            // $(this).find(id).html("load the content here");

        // $('[data-target="#popupvideogallery"]').on('hidden.bs.modal', function(e){
        //     var id = event.target.nodeName;
        //     $(this).find(id).html(e.data).player.pause;
        // });
        

        $('.modal').on('hidden.bs.modal', function(){
            var source = document.getElementById('myPlayer');
            
            $.each($(".video-js"), it => {
                //it.pause();
                var player = $(".video-js")[it].player;

                if (player.currentTime() !== '0'){
                    player.currentTime('0');
                }

                console.log(player.getCache());
                console.log(it);
                
            });
            
            // source.setAttribute('src', 'NEW MP4');
            // player.load();
        });




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