<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceregions extends Datasource{
		
		var $dsParamROOTELEMENT = 'regions';
		var $dsParamORDER = 'asc';
		var $dsParamLIMIT = '60';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'region';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'36' => '{$ds-country}',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'region',
				'name',
				'country',
				'continent'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-country');
		}
		
		function about(){
			return array(
					 'name' => 'Regions',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-05-01T19:04:26+00:00');	
		}
		
		function getSource(){
			return '6';
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