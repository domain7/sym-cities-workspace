<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcefeature_country extends Datasource{
		
		var $dsParamROOTELEMENT = 'feature-country';
		var $dsParamORDER = 'desc';
		var $dsParamLIMIT = '20';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '$destination';
		var $dsParamPARAMOUTPUT = 'system:id';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'22' => '{$destination}',
				'76' => 'Yes',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'country',
				'name',
				'description',
				'body',
				'abbreviation',
				'currency',
				'continent',
				'geography'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Feature Country',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-05-01T23:05:28+00:00');	
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