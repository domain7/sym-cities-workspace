<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcecontent extends Datasource{
		
		var $dsParamROOTELEMENT = 'content';
		var $dsParamORDER = 'desc';
		var $dsParamLIMIT = '20';
		var $dsParamREDIRECTONEMPTY = 'no';
		var $dsParamREQUIREDPARAM = '$content';
		var $dsParamPARAMOUTPUT = 'system:id';
		var $dsParamSORT = 'system:id';
		var $dsParamSTARTPAGE = '1';
		
		var $dsParamFILTERS = array(
				'10' => '{$content}',
				'17' => '{$ds-section-details}',
		);
		
		var $dsParamINCLUDEDELEMENTS = array(
				'title',
				'url',
				'heading',
				'description',
				'code',
				'body',
				'category',
				'sort',
				'section'
		);

		
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-section-details');
		}
		
		function about(){
			return array(
					 'name' => 'Content',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-06-09T16:03:03+00:00');	
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