<?php




use SilverStripe\ORM\DataObject;
use App\Pagetypes\ResultsPage;





class ResultsHolderController extends PageController
{
	public function GetResultsPages() {
		return DataObject::get(ResultsPage::class, '', 'Title DESC');
	}
}