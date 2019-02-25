<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;


class ImageGallery extends Page
{
  private static $table_name = "ImageGallery";

  private static $db = [];



  // private static $has_one = [
  //     'RootFolder' => Folder::class
  // ];
  private static $has_many = [
      'Albums' => Album::class
  ];

  public function getCMSFields()
  {
      $fields = parent::getCMSFields();

      $fields->addFieldToTab("Root.Albums", new GridField(
          "Albums", "Photo Albums", $this->Albums(),
          GridFieldConfig_RecordEditor::create()
      ));
      return $fields;
 }
  

//   public function SideBar()
//   {
//       return $this->renderWith();
//   }

}
