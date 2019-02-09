<?php


use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DropdownField;
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
        'VideoInfo' => DBHTMLText::class

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
                "https://bcove.video/" => "BrightCove",
                "https://www.youtube.com/watch?v=" => "Youtube",
                "Other" => '',
            ]),
            new TextField("VideoData", $this->VideoType == "Other" ? "Video Link" : "Video ID"),
            UploadField::create("VideoImage")->setFolderName("Uploads/videos"),
            HTMLEditorField::create("VideoInfo")->setRows(2)
        ]);
        return $fields;
    }
}
