<?php

use SilverStripe\ORM\DataObject;

class Package extends DataObject
{
    private static $table_name = 'Package';

    private static $db = [
        
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        return $fields;

    }

    public function getTitle()
    {
        return "Package";
    }
}
