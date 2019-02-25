<?php 
use SilverStripe\Control\Director;
use SilverStripe\View\Requirements;
 

class YoutubeGalleryController extends PageController {
	function init() {
		if(Director::fileExists(project() . "/css/YoutubeGallery.css")) {
			Requirements::css(project() . "/css/YoutubeGallery.css");
		} elseif(Director::fileExists('themes/' . project() . "/css/YoutubeGallery.css")) {
			Requirements::css('themes/' . project() . "/css/YoutubeGallery.css");
		} else {
			Requirements::css("youtubeservice/css/YoutubeGallery.css");
		}

		// only include if necessary
		if($this->failover->ShowVideoInPopup) {
			// prototype SUCKS ASS!
			/*Requirements::javascript( "youtubeservice/javascript/prototype.js" );
			Requirements::javascript( "youtubeservice/javascript/effects.js" );
			Requirements::javascript( "youtubeservice/javascript/lightwindow.js" );*/
			// using jquery PrettyPhoto - from the image_gallery
			Requirements::javascript("http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js");
			Requirements::javascript("youtubeservice/javascript/jquery.prettyPhoto.js");
			Requirements::javascript("youtubeservice/javascript/prettyphoto_init.js");

			//Requirements::css("youtubeservice/css/lightwindow.css");
			Requirements::css("youtubeservice/css/prettyPhoto.css");
		}

      parent::init();
   }

}
