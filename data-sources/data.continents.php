<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcecontinents extends Datasource{
		
		var $dsParamROOTELEMENT = 'continents';
		var $dsParamORDER = 'asc';
		var $dsParamLIMIT = '20';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'continent';
		var $dsParamSTARTPAGE = '1';
		var $dsParamINCLUDEDELEMENTS = array(
				'continent',
				'name'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Continents',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-05-01T19:03:22+00:00');	
		}
		
		function getSource(){
			return '4';
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