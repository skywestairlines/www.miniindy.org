<?php  

use SilverStripe\Assets\Image;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\ORM\FieldType\DBVarchar;
use SilverStripe\ORM\FieldType\DBHTMLText;
use SilverStripe\AssetAdmin\Forms\UploadField;


class Album extends DataObject
{
    private static $db = [
        "Name" => DBVarchar::class,
        "Info" => DBHTMLText::class,
    ];

    private static $has_one = [
        "Cover" => Image::class,
        "ImageGallery"=> ImageGallery::class,
    ];

    private static $many_many = [
        "Photos" => Image::class,        
    ];

    // private static $summary_fields = [
    //     "Cover.CMSThumbnail" => "Cover",
    //     "Name"
    // ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldsToTab("Root.Main", [
            new TextField("Name", "Album Title"),
            new UploadField("Cover", "Album Cover"),
            new TextareaField('Info', "Description"),
        ]);
        $fields->addFieldToTab("Root.Photos", new UploadField("Photos", "Album Photos"));
        $fields->removeFieldFromTab("Root.Main", "ImageGalleryID");
        return $fields;
    }
}
