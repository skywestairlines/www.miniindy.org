<?php
class SponsorAdmin extends RemodelAdmin {
	public static $managed_models = array(
		'Sponsor',
		'SponsorType'
	);
	
	static $url_segment = 'sponsors';
	static $menu_title = 'Sponsors Admin';
	
	static $set_page_length = 40;
	
	var $showImportForm = true;
}