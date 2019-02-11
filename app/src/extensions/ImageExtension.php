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

    public function getURL()
    {
        dump($this->owner);
    }
}
