<?php

  // include base peer class
  require_once 'classes/om/BaseIncomingPeer.php';
  
  // include object class
  include_once 'classes/Incoming.php';


/**
 * Skeleton subclass for performing query and update operations on the 'incoming' table.
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
class IncomingPeer extends BaseIncomingPeer {
	
	public function computeTotal($person){
		
		$c = new Criteria();
		$c->add(IncomingPeer::PERSONIDFK, $person);
		
		$incomingsList = IncomingPeer::doSelect($c);
		
		$total = 0;
		foreach ($incomingsList as $incoming)
			$total += $incoming->getInAmount();
		
		return $total;
		
	}

} // IncomingPeer
