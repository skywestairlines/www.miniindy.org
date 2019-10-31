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

    private static $many_many = [
        "Logos" => Image::class
    ];
    private static $owns = [
        "Logos"
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab("Root.Main", $LOGOs =  new UploadField("Logos", "MiniIndy Logos"));        
        $fields->addFieldsToTab("Root.Main", $GUA = new TextareaField("GoogleAnalytics", "Google Analytics"));

        $fields->addFieldsToTab("Root.Event", new DateField("EventStart", "Event Start Date"));
        $fields->addFieldsToTab("Root.Event", new DateField("EventFinish", "Event End Date"));
        $fields->addFieldsToTab("Root.Event", new DateField("RegOpenDate", "Registration Open"));
        $fields->addFieldsToTab("Root.Event", new DateField("RegCloseDate", "Registration Close"));
        $fields->addFieldsToTab("Root.Event", new HTMLEditorField("CheckAndPO", "Check & Payment Options"));

        $LOGOs->setFolderName("Website/Images")->getValidator()
              ->setAllowedExtensions(["jpg","jpeg","png","eps","pdf"])
              ;

        $GUA->setRows(10);

    }

    public function Logo()
    {
        $Logos = $this->owner->obj('Logos');
        if($Logos) return $Logos->First();
        return null;
    }

    

    public function getRegIsOpen()
    {
        return true;
    }
}
