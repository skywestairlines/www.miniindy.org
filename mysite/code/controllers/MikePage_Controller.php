<?php

class MikePage_Controller extends Page_Controller
{
	public function init() {
		parent::init();
		//Requirements::Javascript('mysite/javascript/slides.min.jquery.js');
		//Requirements::Javascript('mysite/javascript/homeCommon.js');
		//Requirements::CSS('sponsers/css/sponsor.css');
	}
	
	function getRaceType() {
		if($this->MyFormType == 'other') {
			return '<form method="post" action="https://shoppingcartsecure.com/cart32.exe/4356343682-additem" name="Form">
				<table border="0" style="width:425px;">
					<tr >
						<td align="right"style="text-align:right;">Name you would like to appear on the presentation:</td>
						<td align="left"><input name="p1" type=coName size="20"></td>
					</tr>
					<tr>
						<td align="right" style="text-align:right;">Amount: $</td>
						<td align="left">$200</td>
					</tr>
					<tr>
						<td align="right" style="text-align:right;"><input type="submit" style="padding:5px; background:#244673;border-radius:3px; color:#fff; border:0;" value="Add to Cart" name="submit"></td>
						<td></td>
					</tr>
				</table>
				<input type="hidden" name="PartNo" value="Partsoth">
				<input type="hidden" name="Price" value="200" >
				<input type=hidden name="t1" value="t-Name on Presentation">
				 <input type=hidden name="Item" value="Mikes Gift">
				<input type="hidden" name="Qty" value="1">
				</p>
				</form><br />';
		}else{
			return '';
		}
	
	}
	
	public function uploadMike(){
	
		$form = new Form(
			$this,
			"uploadMike",
			new FieldList(
				$upload = new MultipleFileUploadField('upload','<p style="color:#244673;font-weight:bold;">Upload Images of Mike Gibson</p>')
			),
			new FieldList(
				new FormAction("done","Done")
			)	
		);
		
		$upload->setFileTypes(
			array('jpg','gif','png','jpeg')
		);
		$upload->setUploadFolder('Uploads/MikeImages');
		//$upload->uploadOnSubmit();
		return $form;
	}
	
	public function done($data, $form){
		$form->sessionMessage("Files Uploaded! Thank you!","good");
		return Director::redirectBack();
		return;
	}
}