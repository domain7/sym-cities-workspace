<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcefeature_regions extends Datasource{
		
		var $dsParamROOTELEMENT = 'feature-regions';
		var $dsParamORDER = 'asc';
		var $dsParamGROUP = '36';
		var $dsParamLIMIT = '200';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'region';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'75' => 'Yes',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'region',
				'name',
				'country',
				'continent',
				'geography'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Feature Regions',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-05-01T23:02:42+00:00');	
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