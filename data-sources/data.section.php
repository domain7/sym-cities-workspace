<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcesection extends Datasource{
		
		var $dsParamROOTELEMENT = 'section';
		var $dsParamORDER = 'desc';
		var $dsParamLIMIT = '1';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamPARAMOUTPUT = 'system:id';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'4' => '{$current-page}',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'title',
				'url',
				'heading',
				'description',
				'body'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Section',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-03-09T17:39:19+00:00');	
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