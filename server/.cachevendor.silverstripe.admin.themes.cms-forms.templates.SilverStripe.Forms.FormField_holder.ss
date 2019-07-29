<?php
$val .= '<div id="';

$val .= $scope->locally()->XML_val('HolderID', null, true);
$val .= '" class="form-group field';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);

}
$val .= '">
    ';

if ($scope->locally()->hasValue('Title', null, true)) { 
$val .= '
        <label for="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" id="title-';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" class="form__field-label">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</label>
    ';


}
$val .= '
    <div class="form__field-holder';

if (!$scope->locally()->hasValue('Title', null, true)) { 
$val .= ' form__field-holder--no-label';


}
$val .= '">
        ';

$val .= $scope->locally()->XML_val('Field', null, true);
$val .= '
        ';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= '<p class="alert ';

$val .= $scope->locally()->XML_val('AlertType', null, true);
$val .= '" role="alert" id="message-';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Message', null, true);
$val .= '</p>';


}
$val .= '
        ';

if ($scope->locally()->hasValue('Description', null, true)) { 
$val .= '<p class="form__field-description form-text" id="describes-';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Description', null, true);
$val .= '</p>';


}
$val .= '
    </div>
    ';

if ($scope->locally()->hasValue('RightTitle', null, true)) { 
$val .= '<p class="form__field-extra-label" id="extra-label-';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('RightTitle', null, true);
$val .= '</p>';


}
$val .= '
</div>
';

