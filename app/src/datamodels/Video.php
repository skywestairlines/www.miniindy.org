<?php


use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\ORM\FieldType\DBInt;
use SilverStripe\ORM\FieldType\DBText;
use SilverStripe\ORM\FieldType\DBVarchar;
use SilverStripe\ORM\FieldType\DBHTMLText;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class Video extends DataObject
{
    private static $table_name = "Videos";

    private static $db = [
        'VideoName' => DBText::class,
        'VideoType' => DBVarchar::class,
        'VideoData' => DBVarchar::class,
        'VideoUser' => DBText::class,
        'VideoInfo' => DBHTMLText::class,
        'FavedBy'   => DBVarchar::class,
        'PlayList'  => DBVarchar::class,
        'SortOrder' => DBInt::class
    ];

    private static $has_one = [
        'VideoImage' => BetterImage::class,
        "VideoGallery" => VideoGallery::class
    ];



    private static $summary_fields = [
        "VideoImage.StripThumbnail" => "Thumb",
        "VideoName" => "Name",
        "VideoLink"
    ];

    public function getTitle()
    {
        return $this->Name;
    }

    public function getVideoLink()
    {
        return $this->VideoType.$this->VideoData;
    }

    

    public function getCMSFields()
    {

        $fields = new FieldList([
            new TextField("VideoName"),
            new TextField("VideoUser"),
            new DropdownField("VideoType", "Video Type", [
                "https://bcove.video/" => "BrightCove (video) Short Link",
                "https://players.brightcove.net/pages/v1/index.html?accountId=1589608515001&playerId=HyJPGnaE&videoId=" => "BrightCove (video) Full Link",
                "https://bcove.me/" => "BrightCove (me) Short Link",
                "http://link.brightcove.com/services/player/bcpid4753221242001?bckey=AQ~~,AAABchwNBbk~,jxXk22NHrvEL-3Dlk-x2HkoseXWXrulL&bctid=" => "BrightCove (me) Full Link",
                "https://www.youtube.com/watch?v=" => "Youtube",
                "Other" => 'Other Links',
            ]),
            new TextField("VideoData", $this->VideoType == "Other" ? "Video Link" : "Video ID"),
            UploadField::create("VideoImage")->setFolderName("Uploads/videos"),
            HTMLEditorField::create("VideoInfo")->setRows(2)
        ]);

        
        return $fields;
    }

    // public function getVideoLastCharacters($VideoLinkToExplode){
	// 	$videoexplode = explode("/", $VideoLinkToExplode);
	// 	return end($videoexplode); 
	// }
}
