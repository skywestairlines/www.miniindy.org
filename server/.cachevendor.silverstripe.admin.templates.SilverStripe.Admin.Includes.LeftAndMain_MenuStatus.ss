<?php
$val .= '<div class="cms-login-status">
	';

$scope->locally()->obj('CurrentMember', null, true); $scope->pushScope();
$val .= '
        <a href="';

$val .= $scope->locally()->XML_val('AdminURL', null, true);
$val .= 'myprofile" class="cms-login-status__profile-link" title="';

$val .= _t('SilverStripe\Admin\LeftAndMain.PROFILE','{name} profile',array('name'=>$scope->locally()->XML_val('Name', null, true)));
$val .= '">
            <i class="font-icon-torso"></i>
            <span>
                ';

if ($scope->locally()->hasValue('FirstName', null, true)&&$scope->locally()->hasValue('Surname', null, true)) { 
$val .= $scope->locally()->XML_val('FirstName', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('Surname', null, true);

}else if ($scope->locally()->hasValue('FirstName', null, true)) { 
$val .= $scope->locally()->XML_val('FirstName', null, true);

}else { 
$val .= $scope->locally()->XML_val('Email', null, true);

}
$val .= '
            </span>
        </a>
	';


; $scope->popScope(); 
$val .= '

	<a href="';

$val .= $scope->locally()->XML_val('LogoutURL', null, true);
$val .= '" class="cms-login-status__logout-link font-icon-logout" title="';

$val .= _t('SilverStripe\Admin\LeftAndMain.LOGOUT','Log out');
$val .= '"></a>
</div>
';

