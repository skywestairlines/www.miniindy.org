<?php
class FlyerEntry extends DataObject {
	static $db = array(
		'Title' => 'Varchar(100)',
		'FlyerDate' => 'Date'
	);
	
	static $singular_name = 'Flyer Entry';
	static $plural_name	= 'Flyer Entries';
	
	static $has_one = array(
		'PDF' => 'File',
		'FlyerPage' => 'FlyerPage'
	);
	
	static $summary_fields = array(
		'FlyerDate'  => 'Flyer Date',
		'Title' 	=> 'Flyer Title',
		//'PDF' 		=> 'Pdf File'
	);
	
	static $default_sort = 'FlyerDate DESC';
	
	public function getCMSFields() {
		$f = parent::getCMSFields();
		
		$pdf = new FileUploadField('PDF', 'Pdf File');
		$pdf->setUploadFolder('Uploads/pdfs');
		$pdf->setFileTypes(array('pdf'));
		if(!Permission::check('ADMIN')) {
			$pdf->removeFolderSelection();
		}
		
		$d = new DateField('FlyerDate', 'Date');
		$d->setConfig('showcalendar', true);
		
		$f->addFieldToTab('Root.Main', new TextField('Title', 'Flyer Title'));
		$f->addFieldToTab('Root.Main', $pdf);
		$f->addFieldToTab('Root.Main', new LiteralField('', '<p></p>'));
		$f->addFieldToTab('Root.Main', $d);
		
		return $f;
	}
}