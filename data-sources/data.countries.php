<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcecountries extends Datasource{
		
		var $dsParamROOTELEMENT = 'countries';
		var $dsParamORDER = 'asc';
		var $dsParamLIMIT = '50';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'country';
		var $dsParamSTARTPAGE = '1';
		var $dsParamINCLUDEDELEMENTS = array(
				'country',
				'name'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Countries',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-05-01T19:03:31+00:00');	
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