<?php
$val .= '<a
    class="grid-field__icon-action ';

$val .= $scope->locally()->XML_val('ExtraClass', null, true);
$val .= ' action action-detail edit-link"
    href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" title="';

$val .= _t('SilverStripe\\Forms\\GridField\\GridFieldEditButton.EDIT','Edit');
$val .= '"
>
    <span class="sr-only">';

$val .= _t('SilverStripe\\Forms\\GridField\\GridFieldEditButton.EDIT','Edit');
$val .= '</span>
</a>
';

