<?php

use SilverStripe\Dev\Debug;


class ImageGalleryController extends PageController
{

    private static $allowed_actions = [ "album" ];
    public function init()
    {
        return parent::init();
    }

    public function AlbumContent()
    {
        $AlbumID = $this->request->getVar('album');

        if($AlbumID == NULL) return false;

        // $Album = Album::get_by_id((int)$AlbumID);

        return Album::get_by_id((int)$AlbumID);
    }
}
