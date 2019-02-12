<?php
use TractorCow\ImageGallery\Pages\ImageGalleryPage;


class ImageGallery extends ImageGalleryPage
{
  private static $table_name = "ImageGallery";

  public function SideBar()
  {
      return $this->renderWith();
  }
}
