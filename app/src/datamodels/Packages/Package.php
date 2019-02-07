<?php

use SilverStripe\ORM\DataObject;

class Package extends DataObject
{
    private static $table_name = 'Package';

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
    }
}
