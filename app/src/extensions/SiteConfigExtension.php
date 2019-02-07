<?php

use SilverStripe\Forms\DateField;
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\AssetAdmin\Forms\UploadField;

class SiteConfigExtension extends DataExtension
{
    private static $db = [
        "EventStart" => DBDate::class,
        "EventFinish" => DBDate::class,
        "RegOpenDate" => DBDate::class
    ];

    private static $has_one = [
        "Logo" => BetterImage::class
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab("Root.Main", new DateField("EventStart", "Event Start Date"));
        $fields->addFieldsToTab("Root.Main", new DateField("EventFinish", "Event End Date"));
        $fields->addFieldsToTab("Root.Main", new DateField("RegOpenDate", "Registration Open Date"));

        $fields->addFieldsToTab("Root.Main", $LOGO =  new UploadField("Logo", "MiniIndy Logo"));
        $LOGO->setFolderName("Website/Images");

    }
}
