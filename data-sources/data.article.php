<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcearticle extends Datasource{
		
		var $dsParamROOTELEMENT = 'article';
		var $dsParamORDER = 'desc';
		var $dsParamLIMIT = '1';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '$guide';
		var $dsParamPARAMOUTPUT = 'system:id';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'48' => '{$article}',
				'51' => '{$ds-city}',
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
			$this->_dependencies = array('$ds-city');
		}
		
		function about(){
			return array(
					 'name' => 'Article',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-03-16T21:26:33+00:00');	
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