<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcecity_guide extends Datasource{
		
		var $dsParamROOTELEMENT = 'city-guide';
		var $dsParamORDER = 'desc';
		var $dsParamLIMIT = '20';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '$guide';
		var $dsParamPARAMOUTPUT = 'system:id';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'46' => '{$guide}',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'guide',
				'description',
				'sort'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'City Guide',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-03-17T01:35:01+00:00');	
		}
		
		function getSource(){
			return '9';
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