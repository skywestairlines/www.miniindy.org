<?php
if ($scope->locally()->hasValue('Backlink', null, true)) { 
$val .= '
    <a class="btn btn-secondary font-icon-left-open-big toolbar__back-button btn--no-text" href="';

$val .= $scope->locally()->XML_val('Backlink', null, true);
$val .= '">
        <span class="sr-only">';

$val .= _t('SilverStripe\Admin\LeftAndMain.NavigateUp',"Navigate up a folder");
$val .= '</span>
    </a>
';


}
$val .= '
';

