<?php
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\ORM\DataObject;
use App\Pagetypes\HomePage;



class SliderImage extends DataObject {

	private static $table_name = 'SliderImage';

	private static $db = array(
		'Caption' => 'Varchar(80)'
	);

	private static $has_one = array(
		'Link' => SiteTree::class,
		'Photo' => BetterImage::class,
		'HomePage' => HomePage::class,
	);

	private static $summary_fields = [
        "Photo.CMSThumbnail" => "Photo"
	];

	public function SlideShowImage() {
		return $this->Photo()->SetRatioSize('437', '263');
	}

	public function HeroSlideShow() {
		return $this->Photo()->SetRatioSize('620', '294');
	}

	public function getCMSFields() {
		$f = parent::getCMSFields();

		$f->addFieldToTab('Root.Main', $dropdown = new SimpleTreeDropdownField('LinkID', 'Page Link', SiteTree::class));
		$dropdown->setEmptyString('Select One...');

		$f->removeFieldFromTab('Root.Main', 'SortOrder');

		return $f;
	}

	public function getSliderLink() {
		if($this->LinkID) {
			$pageLink = DataObject::get_by_id(SiteTree::class, $this->LinkID);
			return $pageLink->Link();
		}
	}
}
