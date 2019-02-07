<?php   

use SilverStripe\ORM\DataObject;


class Pricing extends DataObject 
{
    private static $table_name = 'Pricing';
    
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
    }
}