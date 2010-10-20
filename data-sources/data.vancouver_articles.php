<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcevancouver_articles extends Datasource{
		
		var $dsParamROOTELEMENT = 'vancouver-articles';
		var $dsParamORDER = 'asc';
		var $dsParamGROUP = '49';
		var $dsParamLIMIT = '100';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'title';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'51' => '58',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'title',
				'description',
				'guide',
				'city'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Vancouver Articles',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-06-14T20:54:48+00:00');	
		}
		
		function getSource(){
			return '10';
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