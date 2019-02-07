<?php 
use SilverStripe\ORM\FieldType\DBBoolean;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\NumericField;


class VideoGallery extends Page {

   // define your database fields here - for example we have author
   private static $db = array(
   		"Method" => "Int",
		"User" => "Varchar",
		"Query" => "Varchar",
		"CategoryTag" => "Varchar",
		"Playlist" => "Varchar",
		"PerPage" => "Int",
   		"ShowVideoInPopup" => DBBoolean::class, // either show thumbs (default) or video objects
		"Sortby" => "Varchar"
   );

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
      $fields->addFieldToTab("Root.Content.Videos", new DropdownField("Method", "Select ", array(
				'1' => 'Videos containing phrase',
				'2' => 'Videos by Category or Tag',
				'3' => 'Videos uploaded by',
				'4' => 'Favorite videos of',
				'5' => 'Videos from playlist')));
      $fields->addFieldToTab("Root.Content.Videos", new TextField("User","Youtube Username"));
      $fields->addFieldToTab("Root.Content.Videos", new TextField("Query","Search for"));
      $fields->addFieldToTab("Root.Content.Videos", new TextField("CategoryTag", "Category or Tag"));
      $fields->addFieldToTab("Root.Content.Videos", new TextField("Playlist", "Playlist ID"));
      $fields->addFieldToTab("Root.Content.Videos", new CheckboxField("ShowVideoInPopup", "Show videos in a popup (rather than external link)"));
      $fields->addFieldToTab("Root.Content.Videos", new NumericField("PerPage", "Per Page", 10));
      $fields->addFieldToTab("Root.Content.Videos", new DropdownField("Sortby", "Sort by (descending)", array(
				'relevance' => 'Relevance',
				'updated' => 'Most recently updated',
				'published' => 'Most recently published',
				'viewCount' => 'Most Viewed',
				'rating' => 'Most Rated',
				'daterecorded' => 'Date Recorded',
      )));

      return $fields;
   }

   private function YoutubeVideos(){
		if($this->_cachedVideos) return $this->_cachedVideos;

   		$youtube = new YoutubeService();
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