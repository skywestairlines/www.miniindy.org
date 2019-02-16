<?php

use SilverStripe\ORM\DataExtension;

class ImageExtension extends DataExtension
{
    private static $db = [
        "Caption" => "Text"
    ];
    private static $has_one = [
        "MikePage" => MikePage::class,
        "Album" => Album::class
    ];

    public function SetWidth($width)
    {
        return $this->owner->ScaleWidth($width);
    }

    public function SetHeight($width)
    {
        return $this->owner->ScaleHeight($width);
    }

    public function SetSize($width, $height)
    {
        return $this->owner->Fill($width, $height);
    }

    public function SetRatioSize($width, $height) 
    {
        return $this->owner->Fit($width, $height);
    }

    // public function URL()
    // {
    //     $_this = $this->owner;
    //     $url = $_this->URL;
    //     if($url != null) return $url;

    //     $title = $_this->TITLE ?: 'image';
    //     $width = $_this->WIDTH ?:  200;
    //     $height = $_this->HEIGHT ?: 150;
    //     return "//placehold.it/{$width}X{$height}?text=".$title;
    // }
}
