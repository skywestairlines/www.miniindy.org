<?php


use TractorCow\ImageGallery\Pages\ImageGalleryPage;


class ImageGallery extends ImageGalleryPage
{
  // private static $table_name = "ImageGallery";

  // private static $has_one = [
  //     'RootFolder' => Folder::class
  // ];
  // private static $has_many = [
  //     'Albums' => ImageGalleryAlbum::class,
  //     'GalleryItems' => ImageGalleryItem::class
  // ];

  public function SideBar()
  {
      return $this->renderWith();
  }

}
