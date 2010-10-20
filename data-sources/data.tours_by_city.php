<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcetours_by_city extends Datasource{
		
		var $dsParamROOTELEMENT = 'tours-by-city';
		var $dsParamORDER = 'asc';
		var $dsParamGROUP = '51';
		var $dsParamLIMIT = '20';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamSORT = 'title';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'49' => 'Tours',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'title',
				'description',
				'guide',
				'city',
				'location'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Tours by City',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-06-04T16:15:04+00:00');	
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