<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

class NewsPage extends Page
{

	private static $table_name = 'NewsPage';

	private static $db = array();

	private static $has_many = [
        'NewsEntries' => NewsEntry::class,
    ];

	private static $default_parent = 'media';
	private static $can_be_root = false;

	private static $icon = 'client/icons/news';

    public function getCMSFields()
    {
		$f = parent::getCMSFields();

		$f->addFieldToTab('Root.NewsItem', new GridField(
            'NewsEntries', 'News Entries', $this->NewsEntries(),
            $config = GridFieldConfig_RecordEditor::create()
        ));

		return $f;
	}
}
