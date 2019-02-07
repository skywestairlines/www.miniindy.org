<?php

abstract class DataModelAdmin extends ModelAdmin
{
    public function getEditForm($id = null, $fields = null)
    {
        $form = parent::getEditForm($id, $fields);
        $className = $this->sanitiseClassName($this->modelClass);
        $gridField = $form->Fields()->fieldByName($className);
        // $gridField->getConfig()->addComponent(new GridFieldBulkManager());
        return $form;
    }
}