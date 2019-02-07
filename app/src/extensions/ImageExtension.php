<?php

use App\Pagetypes\MikePage;
use SilverStripe\ORM\DataExtension;

class ImageExtension extends DataExtension
{
    private static $has_one = [
        "MikePage" => MikePage::class
    ];
}
