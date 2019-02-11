<?php

use SilverStripe\ORM\DataObject;

class SiteMap extends Page
{

	private static $table_name = 'SiteMap';

	private static $db = [];
	private static $has_one = [];
    private static $icon = 'client/icons/node';

    public function SiteMapper()
    {
        $Pages = DataObject::get("Page", "ParentID = 0");
        $Pages = $this->customise( compact('Pages') );
        return $Pages->renderWith("Includes/SiteMap");
    }
}
