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
		'Anchor' => 'Varchar(255)',
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
		return $this->photo->Fit('437', '263');
	}

	public function HeroSlideShow() {
		return $this->photo->Fit('620', '294');
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


    public function updateCMSFields(FieldList $fields)
    {
        // Site tree field as a combination of tree drop down and anchor text field
        $siteTreeField = Wrapper::create(
            TreeDropdownField::create(
                'SiteTreeID',
                _t('Linkable.PAGE', 'Page'),
                SiteTree::class
            ),
            TextField::create(
                'Anchor',
                _t('Linkable.ANCHOR', 'Anchor/Querystring')
            )->setRightTitle(
                _t(
                    'Linkable.ANCHORINFO',
                    'Include # at the start of your anchor name or, ? at the start of your querystring'
                )
            )
        );

    }
}
