require('./main');
require('./money');
require('./register');

;(function($){
    /**
     * ****************************************************************************************************************
     *                  BRIGHTCOVE CODE
     * ****************************************************************************************************************
     * 
     */

     ///
     // ==========================================================================================

     ////

     

        // $.fn.addBCPlayer = function(){

        //     var myPlayer,
        //     playerHTML,
        //     // +++ Set the data for the player +++
        //     playerData = {
        //         accountId:  $(this).data('accountId'), //"1752604059001",
        //         playerId: $(this).data('pleyerId'), //"rJtrO8EKW",
        //         videoId: $(this).data('videoId') //"5550679964001"
        //     };
        //     console.log(playerData);

        //     // playerData = $(this).data();

        //     $(this).data();

        //     // +++ Build the player and place in HTML DOM +++
        //     function addPlayer() 
        //     {
        //     // Dynamically build the player video element
        //     playerHTML =
        //         '<video-js id="myPlayerID" data-video-id="' +
        //         playerData.videoId +
        //         '"  data-account="' +
        //         playerData.accountId +
        //         '" data-player="' +
        //         playerData.playerId +
        //         '" data-embed="default" class="video-js" controls></video-js>';
        //     // Inject the player code into the DOM
        //     document.getElementById("bc-player").innerHTML = playerHTML;
        //     // Add and execute the player script tag
        //     var s = document.createElement("script");
        //     s.src =
        //         "https://players.brightcove.net/" +
        //         playerData.accountId +
        //         "/" +
        //         playerData.playerId +
        //         "_default/index.min.js";
        //     // Add the script tag to the document
        //     document.body.appendChild(s);
        //     // Call a function to play the video once player's JavaScropt loaded
        //     s.onload = callback;
        //     }

        //     // +++ Initialize the player and start the video +++
        //     function callback() {
        //     myPlayer = bc("myPlayerID");
        //     // Can also use the following to assign a player instance to the variable if you choose not to use IDs for elements directly
        //     // myPlayer = bc(document.getElementById('myPlayerID'));
        //     myPlayer.on("loadedmetadata", function() {
        //         // Mute the audio track, if there is one, so video will autoplay on button click
        //         myPlayer.muted(true);
        //         myPlayer.play();
        //     });
        // }
        //     addPlayer();

        // };

        $(document).ready(function(){
            var hash = window.location.hash;
    
            if(hash == undefined || hash.indexOf('get') == -1) return;
    
            var videoId = hash.split('get')[1];
                if(videoId === undefined) return;    
    
                var videoModal = $('[data-video-id="'+videoId+'"]', document);
                if(videoModal.length == 0) return;
    
                videoModal.trigger('click');
        });

     

    $(function(){
        
        $('[data-toggle="modal"]', document).on('click', function(){
            
            console.log($(this).data());

            var modalPopup = $('#popupvideogallery', document);
            // var modalTitle = modalPopup.find('.modal-title');
            var modalLink = modalPopup.find('iframe');
            // var modalVideo = modalPopup.find('video-js');
            
            // // Reset the BC player
            // // myBCPlayer.reset();
            
            // // store data attributes in memory
            // var videoId = $(this).data('videoId');
            // var videoName = $(this).data('videoName');
            var videoLink = $(this).data('link');
            console.log(videoLink);
            // var videoPlayer = $(this).data('player');
            
            // // Update the modal title
            // modalTitle.text(videoName);
            modalLink.attr('src', videoLink);
            
            // //Update video-js attributes with id and player
            // // modalVideo.attr('id', videoPlayer).data('id', videoPlayer);
            // // modalVideo.attr('data-player', videoPlayer).data('player', videoPlayer);
            // modalVideo.attr('data-video-id', videoId).data('videoId', videoId);
            
            // // Reload (or rather load) the player
            // //EITHER:
            // var myBCPlayer = bc(modalVideo.attr('id'));
            // myBCPlayer.load();
            // // OR:
            // var bcVideo =  modalVideo.find('video-js');
            // bcVideo.attr('data-video-id', videoId).data('videoId', videoId);
    
            // $.each( $(this).data(), function(attr, videoPlayer){
            //     if(attr.indexOf('video') != -1 ) {
            //         var videoPlayer = $('[data-toggle="modal"]').data('player');
            //         var videoId = attr.toLowerCase().replace('video','');
            //         console.log('videoPlayer is:' + videoPlayer);
            //         console.log('videoId is:'+ videoId);
            //         modalVideo.attr(videoId, videoPlayer);
    
            //         var dataPlayer = attr.toLowerCase().replace('videoid','player');
            //         console.log('videoPlayer is:' + videoPlayer);
            //         console.log('dataPlayer is:'+ dataPlayer);
            //         modalVideo.attr('data-' + dataPlayer, videoPlayer);
            //     }
            // });
    
        //    $(this).addBCPlayer();
            
        //     modalPopup.modal();
        
        });

        $('.modal', document).on('hidden.bs.modal', function(e){
            $('iframe').attr('src','');
            
            //for homepage popupvideo
            myPlayer = bc("myPlayerID");
            myPlayer.pause();
            myPlayer.resetProgressBar_();
        });

        // $('.vjs-icon-placeholder', document).on('click', function(){
        //     var modalPopup = $('#popupvideogallery', document);
        //     var modalTitle = modalPopup.find('.modal-title');
        //     var modalVideo = modalPopup.find('video-js');
        //     var myBCPlayer = bc( modalVideo.attr('id') );

        //     myBCPlayer.play();

        // });    
    
        // $('.modal', document).on('hide.bs.modal', function(e){
            
        //     // Store modal popup and video-js into memory
        //     var modalPopup = $('#popupvideogallery', document);
        //     var modalVideo = modalPopup.find('video-js');
        //     var myPlayer = bc( modalVideo.attr('id') );

        //     // Remove the html5 video tag from within video-js
        //     // myBCPlayer.reset();

        //     // TODO: kill//stop the player

            
        //     // var myPlayer = bc( modalVideo.attr('id') );
        //     // myPlayer.reset();
        //     // var myPlayer = bc( $('[data-toggle="modal"]').data('player') );
        //     myPlayer.pause();
        //     myPlayer.resetProgressBar_();
        //     // myPlayer.autoplay = true;
        //     // myPlayer.dispose();
        // });
    
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
            
    
            // $('.modal').on('hidden.bs.modal', function(){
            //     var source = document.getElementById('myPlayer');
                
            //     $.each($(".video-js"), it => {
            //         //it.pause();
            //         var player = $(".video-js")[it].player;
    
            //         if (player.currentTime() !== '0'){
            //             player.currentTime('0');
            //         }
    
            //         // console.log(player.getCache());
            //         // console.log(it);
                    
            //     });
                
            //     // source.setAttribute('src', 'NEW MP4');
            //     // player.load();
       
        // $('.modal', document).on('hidden.bs.modal', function () {
        //     var myPlayer = bc("myBCPlayer");
        //     myPlayer.muted(true);
        //     myPlayer.play();
        // });
    
    
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
    });


    /**
     ****************************************************************************************************************
     *                      PRETTYPHOTO
     ****************************************************************************************************************
     */
    $(document).ready(function(){
        
        $('#popupvideo', document).modal('show');

        $(".pp_close").on("click", function(){
            $.prettyPhoto.close();
          });       

        

        $(document).ready(function() { 
            $("a[rel^='prettyPhoto']").prettyPhoto({
                    theme: 'light-rounded',
                    image_markup: '<img id="fullResImage" src="{path}" /><span class="download-btn"><a href="{path}" download>Download</a></span>',
                    changepicturecallback: function(){
                        $(".pp_content").css("height", $(".pp_content").height() + $(".download-btn").outerHeight() + 10);
                    }
                });
            });

    });

    

    
})(jQuery);