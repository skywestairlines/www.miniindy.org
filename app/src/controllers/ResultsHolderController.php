<?php

use SilverStripe\ORM\DataObject;


class ResultsHolderController extends PageController
{
	public function GetResultsPages()
	{
		return DataObject::get(ResultsPage::class, '', 'Title DESC');
	}
}
