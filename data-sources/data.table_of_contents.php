<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcetable_of_contents extends Datasource{
		
		var $dsParamROOTELEMENT = 'table-of-contents';
		var $dsParamORDER = 'asc';
		var $dsParamLIMIT = '100';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '$section';
		var $dsParamSORT = 'title';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'17' => '{$ds-section-details}',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'title',
				'sort'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-section-details');
		}
		
		function about(){
			return array(
					 'name' => 'Table of Contents',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-06-09T17:57:55+00:00');	
		}
		
		function getSource(){
			return '3';
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