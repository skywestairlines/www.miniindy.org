<?php

use SilverStripe\ORM\DataExtension;
use SilverStripe\ORM\FieldType\DBDate;

class SiteConfigExtension extends DataExtension
{
    private static $db = [
        "EventDate" => DBDate::class
    ];
}
