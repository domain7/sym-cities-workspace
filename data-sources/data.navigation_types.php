<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcenavigation_types extends Datasource{
		
		var $dsParamROOTELEMENT = 'navigation-types';
		var $dsParamORDER = 'asc';
		var $dsParamLIMIT = '20';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamPARAMOUTPUT = 'system:id';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		var $dsParamINCLUDEDELEMENTS = array(
				'navigation',
				'description'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Navigation Types',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-03-10T19:58:06+00:00');	
		}
		
		function getSource(){
			return '1';
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