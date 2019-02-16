<?php
use SilverStripe\ORM\DataObject;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\ORM\FieldType\DBInt;
use SilverStripe\Forms\TreeDropdownField;
use SilverStripe\Assets\Image;



class SliderImage extends DataObject {

	private static $table_name = 'SliderImage';

	private static $db = array(
        'Caption' => 'Varchar(80)',
        'SortOrder' => DBInt::class,
	);

	private static $has_one = array(
		'Link' => SiteTree::class,
		'Photo' => Image::class,
		'HomePage' => HomePage::class,
	);

	private static $summary_fields = [
        "Photo.CMSThumbnail" => "Photo",
        "Title"
    ];
    
    public function getTitle()
    {
        return $this->Caption;
    }

	public function SlideShowImage() {
		return $this->photo->SetRatioSize('437', '263');
	}

	public function HeroSlideShow() {
		return $this->photo->SetRatioSize('620', '294');
	}

	public function getCMSFields() {
		$f = parent::getCMSFields();

		$f->addFieldToTab('Root.Main', $dropdown = new TreeDropdownField('LinkID', 'Page Link', SiteTree::class));
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
