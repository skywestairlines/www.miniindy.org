<?php
$val .= '<div class="preview-holder">
    <a class="URL-link" href="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" target="_blank">
        ';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '
    </a>
    ';

if (!$scope->locally()->hasValue('IsReadonly', null, true)) { 
$val .= '
    <button role="button" type="button" class="btn btn-outline-secondary btn-sm edit">
        ';

$val .= _t('SilverStripe\CMS\Forms\SiteTreeURLSegmentField.Edit','Edit');
$val .= '
    </button>
    ';


}
$val .= '
</div>

<div class="edit-holder">
    <div class="input-group">
        <input ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= ' />
        <div class="input-group-append">
            <button role="button" data-icon="accept" type="button" class="btn btn-primary update">
                ';

$val .= _t('SilverStripe\CMS\Forms\SiteTreeURLSegmentField.OK','OK');
$val .= '
            </button>
        </div>
        <div class="input-group-append">
            <button role="button" data-icon="cancel" type="button" class="btn btn-outline-secondary btn-sm input-group-append cancel">
                ';

$val .= _t('SilverStripe\CMS\Forms\SiteTreeURLSegmentField.Cancel','Cancel');
$val .= '
            </button>
        </div>
    </div>
    ';

if ($scope->locally()->hasValue('HelpText', null, true)) { 
$val .= '<p class="form__field-description">';

$val .= $scope->locally()->XML_val('HelpText', null, true);
$val .= '</p>';


}
$val .= '
</div>
';

