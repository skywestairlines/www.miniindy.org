<?php

namespace App\Controllers;

use SilverStripe\ORM\DataObject;
use PageController;
use App\Pagetypes\ResultsPage;





class ResultsHolderController extends PageController
{
	public function GetResultsPages() {
		return DataObject::get(ResultsPage::class, '', 'Title DESC');
	}
}