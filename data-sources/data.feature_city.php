<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcefeature_city extends Datasource{
		
		var $dsParamROOTELEMENT = 'feature-city';
		var $dsParamORDER = 'desc';
		var $dsParamLIMIT = '20';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '$destination';
		var $dsParamPARAMOUTPUT = 'system:id';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'31' => '{$destination}',
				'74' => 'Yes',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'city',
				'description',
				'body',
				'region',
				'country',
				'continent',
				'time-zone',
				'geography',
				'feature',
				'guide'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Feature City',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-06-03T23:45:47+00:00');	
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