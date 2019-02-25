<?php
use SilverStripe\Assets\File;
use SilverStripe\Security\Permission;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\LiteralField;
use SilverStripe\ORM\DataObject;



class NewsEntry extends DataObject {

	private static $table_name = 'NewsEntry';

	private static $db = array(
		'Title' => 'Varchar(100)',
		'NewsDate' => 'Date'
	);

	private static $singular_name = 'News Entry';
	private static $plural_name	= 'News Entries';

	private static $has_one = array(
		'PDF' => File::class,
		'NewsPage' => NewsPage::class
	);

	private static $summary_fields = array(
		'NewsDate'  => 'News Date',
		'Title' 	=> 'News Title',
		//'PDF' 		=> 'Pdf File'
	);

	private static $default_sort = 'NewsDate DESC';

	public function getCMSFields() {
		$f = parent::getCMSFields();

		$pdf = new FileUploadField('PDF', 'Pdf File');
		$pdf->setUploadFolder('Uploads/pdfs');
        $pdf->setFileTypes(array('pdf'));

		if(!Permission::check('ADMIN')) {
			$pdf->removeFolderSelection();
		}

		$d = new DateField('NewsDate', DBDate::class);
		$d->setConfig('showcalendar', true);

		$f->addFieldToTab('Root.Main', new TextField('Title', 'News Title'));
		$f->addFieldToTab('Root.Main', $pdf);
		$f->addFieldToTab('Root.Main', new LiteralField('', '<p></p>'));
		$f->addFieldToTab('Root.Main', $d);

		return $f;
	}
}
