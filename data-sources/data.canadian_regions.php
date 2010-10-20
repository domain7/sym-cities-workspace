<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcecanadian_regions extends Datasource{
		
		public $dsParamROOTELEMENT = 'canadian-regions';
		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Canadian Regions',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2010-09-19T15:00:06+00:00');	
		}
		
		public function getSource(){
			return 'static_xml';
		}
		
		public function allowEditorToParse(){
			return true;
		}
		
		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				$result = "<canada>
  <regions>
    <section id=\"6\" handle=\"regions\">Regions</section>
    <entry id=\"33\" cities=\"0\">
      <region handle=\"nunavut\">Nunavut</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"territory\">Territory</item>
      </type>
      <abbreviation handle=\"nu\">NU</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"32\" cities=\"0\">
      <region handle=\"northwest-territories\">Northwest Territories</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"territory\">Territory</item>
      </type>
      <abbreviation handle=\"nt\">NT</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"31\" cities=\"0\">
      <region handle=\"yukon\">Yukon</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"territory\">Territory</item>
      </type>
      <abbreviation handle=\"yt\">YT</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"30\" cities=\"0\">
      <region handle=\"newfoundland\">Newfoundland</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"province\">Province</item>
      </type>
      <abbreviation handle=\"nl\">NL</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"29\" cities=\"0\">
      <region handle=\"prince-edward-island\">Prince Edward Island</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"province\">Province</item>
      </type>
      <abbreviation handle=\"pe\">PE</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"28\" cities=\"0\">
      <region handle=\"nova-scotia\">Nova Scotia</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"province\">Province</item>
      </type>
      <abbreviation handle=\"ns\">NS</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"27\" cities=\"0\">
      <region handle=\"new-brunswick\">New Brunswick</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"province\">Province</item>
      </type>
      <abbreviation handle=\"nb\">NB</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"26\" cities=\"0\">
      <region handle=\"quebec\">Québec</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"province\">Province</item>
      </type>
      <abbreviation handle=\"qc\">QC</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"25\" cities=\"0\">
      <region handle=\"ontario\">Ontario</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"province\">Province</item>
      </type>
      <abbreviation handle=\"on\">ON</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"24\" cities=\"0\">
      <region handle=\"manitoba\">Manitoba</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"province\">Province</item>
      </type>
      <abbreviation handle=\"mb\">MB</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"23\" cities=\"0\">
      <region handle=\"saskatchewan\">Saskatchewan</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"province\">Province</item>
      </type>
      <abbreviation handle=\"sk\">SK</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"22\" cities=\"0\">
      <region handle=\"alberta\">Alberta</region>
      <description word-count=\"0\" />
      <type>
        <item handle=\"province\">Province</item>
      </type>
      <abbreviation handle=\"ab\">AB</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
    <entry id=\"21\" cities=\"3\">
      <region handle=\"british-columbia\">British Columbia</region>
      <description word-count=\"79\">
        <p>British Columbia (IPA: /ˌbrɪtɨʃ kəˈlʌmbiə/) (BC) (French: la Colombie-Britannique, C.-B.) is the westernmost of Canada’s provinces and is famed for its natural beauty, as reflected in its Latin motto, Splendor sine occasu (\"Splendour without Sunset (Diminishment)\".</p>
        <p>It was the sixth province to join the Canadian Confederation. Its residents are referred to as British Columbians.</p>
        <p>The capital of British Columbia is Victoria, the 15th largest metropolitan region in Canada. The largest city is Vancouver, Canada’s third-largest metropolitan area.</p>
        <p>(Source: <a href=\"http://en.wikipedia.org/wiki/British_columbia\">Wikipedia</a>)</p>
      </description>
      <type>
        <item handle=\"province\">Province</item>
      </type>
      <abbreviation handle=\"bc\">BC</abbreviation>
      <country section-id=\"5\" section-handle=\"countries\" link-id=\"20\" link-handle=\"canada\" />
    </entry>
  </regions>
</canada>";
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}			
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

