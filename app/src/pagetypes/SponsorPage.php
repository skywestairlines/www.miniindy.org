<?php
use SilverStripe\Forms\LiteralField;


class SponsorPage extends Page {
	private static $db = array();

	public function getCMSFields() {
		$f = parent::getCMSFields();

		$f->addFieldToTab('Root.Content.Main', new LiteralField('', '<p>To View/Edit all sponsors, click on "Sponsors" in the left menu.</p>'));

		return $f;
	}
}

