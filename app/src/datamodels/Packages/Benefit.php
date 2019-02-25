<?php

use SilverStripe\ORM\DataObject;

class Benefit extends DataObject
{
    private static $table_name = 'Benefit';

    private static $db = [
        
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        return $fields;

    }

    public function getTitle()
    {
        return "Benefit";
    }
}
