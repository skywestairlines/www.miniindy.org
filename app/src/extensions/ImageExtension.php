<?php

use SilverStripe\ORM\DataExtension;
use SilverStripe\Assets\Image_Backend;

class ImageExtension extends DataExtension
{
    private static $db = [
        "Caption" => "Text"
    ];
    private static $has_one = [
        "MikePage" => MikePage::class,
        // "Album" => Album::class
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

    public function getFormattedImage($format, $arg1 = null, $arg2 = null) 
    {
        return $this->owner;
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

    //public function Square($width = NULL)
    // ALEX - I changed the default from NULL (which used native size) to 125 in an attempt to prevent memory errors. Ideally, I want to 
    // bring the old default back and designate the width as it is needed OR not generate these on demand, use a stored version????
    public function Square($width = 125)
    {
        if($width == NULL) $width = $this->owner->getWidth();
        $variant = $this->owner->variantName(__FUNCTION__, $width);
        return $this->owner->manipulateImage($variant, function (Image_Backend $backend) use($width) {
            $clone = clone $backend;
            $resource = clone $backend->getImageResource();
            $resource->fit($width);
            $clone->setImageResource($resource);
            return $clone;
        });
    }

    public function Blur($amount = null)
    {
        $variant = $this->owner->variantName(__FUNCTION__, $amount);
        return $this->owner->manipulateImage($variant, function (Image_Backend $backend) use ($amount) {
            $clone = clone $backend;
            $resource = clone $backend->getImageResource();
            $resource->blur($amount);
            $clone->setImageResource($resource);
            return $clone;
        });
    }
}
