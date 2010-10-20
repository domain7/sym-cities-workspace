<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcefeature_continents extends Datasource{
		
		var $dsParamROOTELEMENT = 'feature-continents';
		var $dsParamORDER = 'asc';
		var $dsParamLIMIT = '20';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'name';
		var $dsParamSTARTPAGE = '1';
		var $dsParamINCLUDEDELEMENTS = array(
				'continent',
				'name',
				'description'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Feature Continents',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-05-01T19:05:44+00:00');	
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