<?php

class ResultsHolder_Controller extends Page_Controller
{
	public function GetResultsPages() {
		return DataObject::get('ResultsPage', '', 'Title DESC');
	}
}