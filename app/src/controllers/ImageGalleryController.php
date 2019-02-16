<?php

class ImageGalleryController extends PageController
{

    private static $allowed_actions = [
        "album" => true
    ];
    public function init()
    {
        return parent::init();
    }

    public function album($id)
    {
        $AlbumID = $this->urlParams["ID"];

        $Photos = Album::get()->filter( compact('AlbumID') );

        return $Photos->renderWith("AlbumList");
    }
}
