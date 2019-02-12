<?php

use SilverStripe\ORM\DataExtension;

class ImageExtension extends DataExtension
{
    private static $has_one = [
        "MikePage" => MikePage::class
    ];

    public function SetWidth($width)
    {
        return $this->owner->ScaleWidth($width);
    }

    public function URL()
    {
        $_this = $this->owner;
        $url = $_this->URL;
        if($url != null) return $url;

        $title = $_this->TITLE ?: 'image';
        $width = $_this->WIDTH ?:  200;
        $height = $_this->HEIGHT ?: 150;
        return "//placehold.it/{$width}X{$height}?text=".$title;
    }
}
