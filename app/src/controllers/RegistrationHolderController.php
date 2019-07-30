<?php

use SilverStripe\ORM\DataObject;



class RegistrationHolderController extends PageController
{
    public function GetRegPages()
    {
        return DataObject::get(RaceReg::class);
    }
}
