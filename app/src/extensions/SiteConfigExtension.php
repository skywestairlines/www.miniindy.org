<?php

use SilverStripe\Forms\DateField;
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\FieldType\DBHTMLText;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\TextareaField;

class SiteConfigExtension extends DataExtension
{
    private static $db = [
        "EventStart" => DBDate::class,
        "EventFinish" => DBDate::class,
        "RegOpenDate" => DBDate::class,
        "RegCloseDate" => DBDate::class,
        "CheckAndPO" => DBHTMLText::class,
        "GoogleAnalytics" => DBHTMLText::class
    ];

    private static $has_one = [
        "Logo" => Image::class
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab("Root.Main", $LOGO =  new UploadField("Logo", "MiniIndy Logo"));        
        $fields->addFieldsToTab("Root.Main", $GUA = new TextareaField("GoogleAnalytics", "Google Analytics"));

        $fields->addFieldsToTab("Root.Event", new DateField("EventStart", "Event Start Date"));
        $fields->addFieldsToTab("Root.Event", new DateField("EventFinish", "Event End Date"));
        $fields->addFieldsToTab("Root.Event", new DateField("RegOpenDate", "Registration Open"));
        $fields->addFieldsToTab("Root.Event", new DateField("RegCloseDate", "Registration Close"));
        $fields->addFieldsToTab("Root.Event", new HTMLEditorField("CheckAndPO", "Check & Payment Options"));

        $LOGO->setFolderName("Website/Images");
        $GUA->setRows(10);

    }

    public function getRegIsOpen()
    {
        return true;
    }
}
