<?php

use SilverStripe\ORM\DataList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\ORM\FieldType\DBInt;
use SilverStripe\ORM\FieldType\DBBoolean;
use SilverStripe\ORM\FieldType\DBVarchar;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;


class VideoGallery extends Page {

   // define your database fields here - for example we have author
   private static $db = array(
   		"Method" => DBInt::class,
		"User" => DBVarchar::class,
		"Query" => DBVarchar::class,
		"CategoryTag" => DBVarchar::class,
		"Playlist" => DBVarchar::class,
		"PerPage" => DBInt::class,
   		"ShowVideoInPopup" => DBBoolean::class, // either show thumbs (default) or video objects
        "Sortby" => DBVarchar::class,
        "VideoSize" => DBVarchar::class,
   );

   private static $has_many = [
       "Videos" => Video::class,
   ];

   private static $defaults = array(
		"Method" => 1,
		"PerPage" => 10,
		"Sortby" => 'relevance'
	);

  private static $icon = "youtubeservice/images/youtube";

	/**
	 * Internal cache to avoid hitting the API more than once
	 * per page-rendering.
	 *
	 * @var DataObjectSet
	 */
    protected $_cachedVideos = null;
    

   // add custom fields for this youtube gallery page
   public function getCMSFields() {
   	  // We should uncomment this when you can load and unload javascript files dynamically at any time via Javascript
   	  // See http://open.silverstripe.com/ticket/594
   	  //Requirements::javascript( 'youtubeservice/javascript/YoutubeGallery_CMS.js' );

      $fields = parent::getCMSFields();
      $fields->addFieldsToTab("Root.VideoSettings", [
        new DropdownField("Method", "Select ", array(
				'1' => 'Videos containing phrase',
				'2' => 'Videos by Category or Tag',
				'3' => 'Videos uploaded by',
				'4' => 'Favorite videos of',
				'5' => 'Videos from playlist')),
        new TextField("User","Youtube Username"),
        new TextField("Query","Search for"),
        new TextField("CategoryTag", "Category or Tag"),
        new TextField("Playlist", "Playlist ID"),
        new CheckboxField("ShowVideoInPopup", "Show videos in a popup (rather than external link)"),
        new NumericField("PerPage", "Per Page", 10),
        new DropdownField("Sortby", "Sort by (descending)", [
				'relevance' => 'Relevance',
				'updated' => 'Most recently updated',
				'published' => 'Most recently published',
				'viewCount' => 'Most Viewed',
				'rating' => 'Most Rated',
				'daterecorded' => 'Date Recorded',
        ])
      ]);

    $fields->addFieldToTab("Root.VideosList", new GridField(
        "Videos", "Videos", $this->Videos(),
        GridFieldConfig_RecordEditor::create()
    ));

      return $fields;
   }

   public function VideosFeed(){
		if($this->_cachedVideos) return $this->_cachedVideos;

   		$youtube = new VideoFeed(
            new DataList(Video::class), "youtube-videos", "Youtube Videos"
        );
		$page = isset($_GET['page'])? (int)$_GET['page']: 1;
		$start_index = (($page-1) * $this->PerPage) + 1 ;

		switch ($this->Method){
			case 1:
				$videos = $youtube->getVideosByQuery($this->Query, $this->PerPage, $start_index, $this->Sortby);
				break;
			case 2:
				$videos = $youtube->getVideosByCategoryTag($this->CategoryTag, $this->PerPage, $start_index, $this->Sortby);
				break;
			case 3:
				$videos = $youtube->getVideosUploadedByUser($this->User, $this->PerPage, $start_index, $this->Sortby);
				break;
			case 4:
				$videos = $youtube->getFavoriteVideosByUser($this->User, $this->PerPage, $start_index, $this->Sortby);
				break;
			case 5:
				$videos = $youtube->getPlaylist($this->Playlist, $this->PerPage, $start_index, $this->Sortby);
                break;
            default:
                $videos = $youtube;
		}

        // caching
		$this->_cachedVideos = $videos;

		return $videos;
	}

	public function flushCache($persistent = true) {
		parent::flushCache($persistent);

		unset($this->_cachedVideos);
	}
}
