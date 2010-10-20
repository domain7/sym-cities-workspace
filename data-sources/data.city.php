<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcecity extends Datasource{
		
		var $dsParamROOTELEMENT = 'city';
		var $dsParamORDER = 'desc';
		var $dsParamLIMIT = '1';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '$city';
		var $dsParamPARAMOUTPUT = 'system:id';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'31' => '{$city}',
				'35' => '{$ds-country}',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'city',
				'description',
				'body',
				'region',
				'country',
				'continent',
				'time-zone',
				'geography',
				'feature',
				'guide'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-country');
		}
		
		function about(){
			return array(
					 'name' => 'City',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-06-04T00:02:24+00:00');	
		}
		
		function getSource(){
			return '7';
		}
		
		function allowEditorToParse(){
			return true;
		}
		
		function grab(&$param_pool){
			$result = NULL;
				
			include(TOOLKIT . '/data-sources/datasource.section.php');
			
			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

?>