<?php
use SilverStripe\Admin\ModelAdmin;

class SponsorAdmin extends ModelAdmin
{
	private static $managed_models = array(
		Sponsor::class => [
            "title" => "Sponsors List"
        ],
		SponsorType::class => [
            "title", "Sponsor types"
        ]
	);

	private static $url_segment = 'sponsors';
	private static $menu_title = 'Sponsors';

	private static $set_page_length = 40;

	var $showImportForm = true;
}
