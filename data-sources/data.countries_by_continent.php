<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcecountries_by_continent extends Datasource{
		
		var $dsParamROOTELEMENT = 'countries-by-continent';
		var $dsParamORDER = 'asc';
		var $dsParamGROUP = '25';
		var $dsParamLIMIT = '100';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '$continent';
		var $dsParamSORT = 'country';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'25' => '{$ds-continent}',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'country',
				'name'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-continent');
		}
		
		function about(){
			return array(
					 'name' => 'Countries by Continent',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-05-01T19:03:40+00:00');	
		}
		
		function getSource(){
			return '5';
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