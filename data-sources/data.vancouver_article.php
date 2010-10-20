<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcevancouver_article extends Datasource{
		
		var $dsParamROOTELEMENT = 'vancouver-article';
		var $dsParamORDER = 'desc';
		var $dsParamLIMIT = '20';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '$guide';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'48' => '{$article}, {$guide}',
				'51' => '58',
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
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'Vancouver Article',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-06-04T18:49:43+00:00');	
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