<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcecities extends Datasource{
		
		var $dsParamROOTELEMENT = 'cities';
		var $dsParamORDER = 'asc';
		var $dsParamLIMIT = '100';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'city';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'35' => '{$ds-country}',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'city',
				'description',
				'region',
				'country'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-country');
		}
		
		function about(){
			return array(
					 'name' => 'Cities',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-05-01T19:04:45+00:00');	
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