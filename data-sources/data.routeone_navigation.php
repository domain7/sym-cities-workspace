<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcerouteone_navigation extends Datasource{
		
		var $dsParamROOTELEMENT = 'routeone-navigation';
		var $dsParamORDER = 'desc';
		var $dsParamREDIRECTONEMPTY = 'no';
		
		var $dsParamFILTERS = array(
				'parent' => '/routeone',
		);
		function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		function about(){
			return array(
					 'name' => 'RouteOne Navigation',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-05-01T21:13:45+00:00');	
		}
		
		function getSource(){
			return 'navigation';
		}
		
		function allowEditorToParse(){
			return true;
		}
		
		function grab(&$param_pool){
			$result = NULL;
				
			include(TOOLKIT . '/data-sources/datasource.navigation.php');
			
			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

?>