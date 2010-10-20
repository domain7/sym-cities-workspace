<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcefeature_cities extends Datasource{
		
		var $dsParamROOTELEMENT = 'feature-cities';
		var $dsParamORDER = 'asc';
		var $dsParamGROUP = '35';
		var $dsParamLIMIT = '200';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'city';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'74' => 'Yes',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'city',
				'description',
				'region',
				'country',
				'continent'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Feature Cities',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-05-01T22:49:25+00:00');	
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