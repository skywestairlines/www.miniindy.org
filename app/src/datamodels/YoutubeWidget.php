<?php
use SilverStripe\View\ArrayData;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\NumericField;
use SilverStripe\Widgets\Model\Widget;


class YoutubeWidget extends Widget {
	private static $db = array(
		"Method" => "Int",
		"User" => "Varchar",
		"MaxResults" => "Int",
		"StartIndex" => "Int"
	);

	private static $defaults = array(
		"Method" => 1,
		"MaxResults" => 5,
		"StartIndex" => 1
	);

	private static $title = "YouTube Videos";
	private static $cmsTitle = "YouTube Videos";
	private static $description = "Shows thumbnails of your Youtube videos.";

	public function Videos() {

		$youtube = new VideoFeed();

		try {
			switch ($this->Method){
			case 1:
				$videos = $youtube->getVideosUploadedByUser($this->User);
				break;
			case 2:
				$videos = $youtube->getFavoriteVideosByUser($this->User);
				break;
			}
		} catch(Exception $e) {
			return false;
		}

		$output = new DataObjectSet();
		foreach($videos as $video) {
			$videoId = array_pop(explode("/", $video->id));

			$output->push(new ArrayData(array(
				"Title" => $video->title,
				"Link" => $video->player_url,
				"Image" => $video->thumbnail_url,
				"Duration" => round((float)$video->content_duration/60, 2)
			)));

		}

		return $output;
	}

	public function getCMSFields() {

		return new FieldSet(
			new TextField("User", "Youtube username"),
			new DropdownField("Method", "Select ", array(
				'1' => 'Videos uploaded by',
				'2' => 'Favorite videos of'	) ),
			new NumericField("MaxResults", "Videos to Show", 5),
			new DropdownField("Sortby", "Sort by ", array(
				'relevance' => 'Relevance',
				'updated' => 'Upload date',
				'viewCount' => 'View count',
				'rating' => 'Rating'))
			);
	}
}
