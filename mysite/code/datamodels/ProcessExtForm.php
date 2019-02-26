<?php
/**
 * ProcessExtForm class.
 *	
 *	Cart32 runs the getOrders.php script.  
 *	This file processes the script variables and inputs them into the proper 
 *	database table (sponsor) with the correct sponsorType.
 *	
 *	using DataObjectDecorator so this class wont be added to the DB - not sure if this is the best way though
 * 
 * @extends DataObjectDecorator
 */
class ProcessExtForm extends DataObjectDecorator {
	/*
		 get array of order items
		 parse them out
		 insert them into the Sponsor table
		 
		 incoming variables - plus vars from our forms
			FirstName = #Billing First Name#
			LastName = #Billing Last Name#
			Company = #Billing Company#
			Address = #Billing Address#
			City = #Billing City#
			State = #Billing State#
			Zip = #Billing Zip#
			Country = #Billing Country#
			Phone = #Billing Phone#
			Email = #Billing E-mail#
			oDate = #Order Date#
			oTime = #Order Time#
			
			other items can be accessed in a loop
			
	*/
	
	/**
	 * getPostVars function.
	 * 
	 * @access public
	 * @param mixed $data
	 * @return data or false if no data
	 */
	public function getPostVars($data) {
		if (!$data) {
			return false;
		} else {
			return $this->save2db($data);
		}
	}
	
	/**
	 * save2db function.
	 * 
	 * @access private
	 * @param mixed $data
	 * @return void
	 */
	private function save2db($data) {
		// save the parsed vars into the DB
		$s = new Sponsor();
		$s->Name = ($data['p1']) ? $data['p1'] : $data['Company'];
		$s->cContact = ($data['p2']) ? $data['p2'] : $data['FirstName'] . ' ' . $data['LastName'];
		$s->cEmail = ($data['p3']) ? $data['p3'] : $data['Email'];
		$s->cPhone = ($data['p4']) ? $data['p4'] : $data['Phone'];
		
		/*$s->Address = $data['Address'];
		$s->City = $data['City'];
		$s->State = $data['State'];
		$s->Zip = $data['Zip'];
		$s->Comments = $data['Comments'];
		
		$s->dateReg = $data['oDate'];
		$s->timeReg = $data['oTime'];
		*/
		
		// make sure we are pulling in the current list of SponsorTypes()
		$st = 0;
		$sTypeList = DataObject::get('SponsorType')->toNestedArray();
		foreach($sTypeList as $tKey => $tVal) {
			if($tVal['Title'] == $data['sponsorType']) {
				print $tVal['ID'] . ' ' . $tVal['Title'] . '<br />';
				$st = $tVal['ID'];
			}
		}
		
		$s->customLink = '#';
		$s->approved = '0';
		//$s->SortOrder = '0';		// ss still puts in the next sort num :(
		$s->LogoID = '0';
		
		$s->write();
		$s->SponsorTypes()->add($st);
		
		return $s;	// don't return anything...
	}
	
	/**
	 * test function. -- used for testing only
	 * 
	 * @access public
	 * @param string $var. (default: 'NOT SET')
	 * @return void
	 */
	function test($var = 'NOT SET') {
		return 'test var: ' . $var;
	}
	
}