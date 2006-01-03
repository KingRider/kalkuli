<?php

require_once 'classes/om/BaseIncoming.php';


/**
 * Skeleton subclass for representing a row from the 'incoming' table.
 *
 * What is shared by the community
 *
 * This class was autogenerated by Propel on:
 *
 * 11/06/05 03:40:55
 *
 * You should add additional methods to this class to meet the
 * application requirements.  This class will only be generated as
 * long as it does not already exist in the output directory.
 *
 * @package classes
 */	
class Incoming extends BaseIncoming {
	
	public function getOperationTS() {
		return $this->getOperation()->getOperationTS(DATE_FORMAT);
	}
	
	public function getOperationDescription() {
		return $this->getOperation()->getOperationDescription();
	}
	
	public function getPersonId() {
		return $this->getPerson()->getPersonId();
	}
	
	public function getPersonName() {
		return $this->getPerson()->getPersonName();
	}
	
	public function getOperationAmountTotal(){
		return $this->getOperation()->computeAmountTotal();
	}

} // Incoming