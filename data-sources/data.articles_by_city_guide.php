<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcearticles_by_city_guide extends Datasource{
		
		var $dsParamROOTELEMENT = 'articles-by-city-guide';
		var $dsParamORDER = 'asc';
		var $dsParamGROUP = '49';
		var $dsParamLIMIT = '100';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '$guide';
		var $dsParamSORT = 'title';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'49' => '{$guide}',
				'51' => '{$ds-feature-city}',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'title',
				'heading',
				'description',
				'body',
				'url',
				'guide',
				'city',
				'location',
				'address',
				'phone',
				'open',
				'admission',
				'tags'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-feature-city');
		}
		
		function about(){
			return array(
					 'name' => 'Articles by City Guide',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-06-14T21:03:22+00:00');	
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