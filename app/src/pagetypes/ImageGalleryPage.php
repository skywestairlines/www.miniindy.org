<?php




use SilverStripe\ORM\FieldType\DBInt;
use SilverStripe\ORM\FieldType\DBVarchar;

class ImageGalleryPage extends Page
{
    private static $table_name = "ImageGalleryPage";

    private static $db = [
        'GalleryUI' => DBVarchar::class,
        'CoverImageWidth' => DBInt::class,
        'CoverImageHeight'  => DBInt::class,
        'ThumbnailSize'  => DBInt::class,
        'Square' => DBInt::class,
        'NormalSize'  => DBInt::class,
        'MediaPerPage'  => DBInt::class,
        'UploadLimit'  => DBInt::class,
        'RootFolderID'  => DBInt::class,
        'MediumSize'  => DBInt::class,
        'NormalHeight' => DBInt::class,
    ];
}
