<?php
$val .= '<div class="typography">
    <div id="">
        ';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '

        ';

if ($scope->locally()->hasValue('AlbumContent', null, true)) { 
$val .= '
        <h2>';

$val .= $scope->locally()->obj('AlbumContent', null, true)->XML_val('Name', null, true);
$val .= '</h2>
        <div class="row">
            ';

$scope->locally()->obj('AlbumContent', null, true)->obj('Photos', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
            <div class="col-md-3 mb-3">
                <a href="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '?';

if ($scope->locally()->obj('Up', null, true)->hasValue('PhotoSize', null, true)) { 
$val .= $scope->locally()->obj('Up', null, true)->XML_val('PhotoSize', null, true);

}else { 
$val .= 'width=640&height=480';


}
$val .= '" rel="prettyPhoto[miniindyGallery]"
                    title="';

$val .= $scope->locally()->XML_val('TITLE', null, true);
$val .= '" class="">
                    <img src="';

$val .= $scope->locally()->obj('Square', null, true)->XML_val('URL', null, true);
$val .= '" alt="';

$val .= $scope->locally()->XML_val('TITLE', null, true);
$val .= '" class="img-fluid img-thumbnail" />
                </a>
            </div>
            ';


}; $scope->popScope(); 
$val .= '
        </div>
        ';


}else { 
$val .= '
        <div class="row">
            ';

$scope->locally()->obj('Albums', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
            <div class="col-md-6">
                <div class="bg-white pb-2">
                    <a href="';

$val .= $scope->locally()->obj('Up', null, true)->XML_val('Link', null, true);
$val .= '?album=';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" class="btn btn-block btn-primary btn-sm text-white">
                        ';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '
                        <span class="px-3">(';

$val .= $scope->locally()->obj('Photos', null, true)->XML_val('Count', null, true);
$val .= ')</span>
                    </a>
                </div>
            </div>
            ';


}; $scope->popScope(); 
$val .= '
        </div>
        ';


}
$val .= '

    </div>
</div>
';

