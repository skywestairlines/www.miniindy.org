<?php   

use SilverStripe\ORM\DataObject;


class Pricing extends DataObject 
{
    private static $table_name = 'Pricing';

    private static $db = [
        
    ];
    
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        return $fields;
    }

    public function getTitle()
    {
        return "Pricing";
    }
}