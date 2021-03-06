<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcesections extends Datasource{
		
		var $dsParamROOTELEMENT = 'sections';
		var $dsParamORDER = 'asc';
		var $dsParamGROUP = '9';
		var $dsParamLIMIT = '20';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamPARAMOUTPUT = 'system:id';
		var $dsParamSORT = 'sort';
		var $dsParamSTARTPAGE = '1';
		var $dsParamINCLUDEDELEMENTS = array(
				'title',
				'url',
				'heading',
				'description',
				'sort',
				'navigation'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Sections',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-03-07T07:10:56+00:00');	
		}
		
		function getSource(){
			return '2';
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