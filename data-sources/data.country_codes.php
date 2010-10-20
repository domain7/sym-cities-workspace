<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcecountry_codes extends Datasource{
		
		public $dsParamROOTELEMENT = 'country-codes';
		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Country Codes',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2010-09-19T15:09:22+00:00');	
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
				$result = "<country-codes>
  <country>
    <name>Afghanistan</name>
    <code>AF</code>
  </country>
  <country>
    <name>Åland Islands</name>
    <code>AX</code>
  </country>
  <country>
    <name>Albania</name>
    <code>AL</code>
  </country>
  <country>
    <name>Algeria</name>
    <code>DZ</code>
  </country>
  <country>
    <name>American Samoa</name>
    <code>AS</code>
  </country>
  <country>
    <name>Andorra</name>
    <code>AD</code>
  </country>
  <country>
    <name>Angola</name>
    <code>AO</code>
  </country>
  <country>
    <name>Anguilla</name>
    <code>AI</code>
  </country>
  <country>
    <name>Antarctica</name>
    <code>AQ</code>
  </country>
  <country>
    <name>Antigua and Barbuda</name>
    <code>AG</code>
  </country>
  <country>
    <name>Argentina</name>
    <code>AR</code>
  </country>
  <country>
    <name>Armenia</name>
    <code>AM</code>
  </country>
  <country>
    <name>Aruba</name>
    <code>AW</code>
  </country>
  <country>
    <name>Australia</name>
    <code>AU</code>
  </country>
  <country>
    <name>Austria</name>
    <code>AT</code>
  </country>
  <country>
    <name>Azerbaijan</name>
    <code>AZ</code>
  </country>
  <country>
    <name>Bahamas</name>
    <code>BS</code>
  </country>
  <country>
    <name>Bahrain</name>
    <code>BH</code>
  </country>
  <country>
    <name>Bangladesh</name>
    <code>BD</code>
  </country>
  <country>
    <name>Barbados</name>
    <code>BB</code>
  </country>
  <country>
    <name>Belarus</name>
    <code>BY</code>
  </country>
  <country>
    <name>Belgium</name>
    <code>BE</code>
  </country>
  <country>
    <name>Belize</name>
    <code>BZ</code>
  </country>
  <country>
    <name>Benin</name>
    <code>BJ</code>
  </country>
  <country>
    <name>Bermuda</name>
    <code>BM</code>
  </country>
  <country>
    <name>Bhutan</name>
    <code>BT</code>
  </country>
  <country>
    <name>Bolivia</name>
    <code>BO</code>
  </country>
  <country>
    <name>Bosnia and Herzegovina</name>
    <code>BA</code>
  </country>
  <country>
    <name>Botswana</name>
    <code>BW</code>
  </country>
  <country>
    <name>Bouvet Island</name>
    <code>BV</code>
  </country>
  <country>
    <name>Brazil</name>
    <code>BR</code>
  </country>
  <country>
    <name>British Indian Ocean Territory</name>
    <code>IO</code>
  </country>
  <country>
    <name>Brunei Darussalam</name>
    <code>BN</code>
  </country>
  <country>
    <name>Bulgaria</name>
    <code>BG</code>
  </country>
  <country>
    <name>Burkina Faso</name>
    <code>BF</code>
  </country>
  <country>
    <name>Burundi</name>
    <code>BI</code>
  </country>
  <country>
    <name>Cambodia</name>
    <code>KH</code>
  </country>
  <country>
    <name>Cameroon</name>
    <code>CM</code>
  </country>
  <country>
    <name>Canada</name>
    <code>CA</code>
  </country>
  <country>
    <name>Cape Verde</name>
    <code>CV</code>
  </country>
  <country>
    <name>Cayman Islands</name>
    <code>KY</code>
  </country>
  <country>
    <name>Central African Republic</name>
    <code>CF</code>
  </country>
  <country>
    <name>Chad</name>
    <code>TD</code>
  </country>
  <country>
    <name>Chile</name>
    <code>CL</code>
  </country>
  <country>
    <name>China</name>
    <code>CN</code>
  </country>
  <country>
    <name>Christmas Island</name>
    <code>CX</code>
  </country>
  <country>
    <name>Cocos (Keeling) Islands</name>
    <code>CC</code>
  </country>
  <country>
    <name>Colombia</name>
    <code>CO</code>
  </country>
  <country>
    <name>Comoros</name>
    <code>KM</code>
  </country>
  <country>
    <name>Congo</name>
    <code>CG</code>
  </country>
  <country>
    <name>Congo, The Democratic Republic of the</name>
    <code>CD</code>
  </country>
  <country>
    <name>Cook Islands</name>
    <code>CK</code>
  </country>
  <country>
    <name>Costa Rica</name>
    <code>CR</code>
  </country>
  <country>
    <name>Côte d\'Ivoire</name>
    <code>CI</code>
  </country>
  <country>
    <name>Croatia</name>
    <code>HR</code>
  </country>
  <country>
    <name>Cuba</name>
    <code>CU</code>
  </country>
  <country>
    <name>Cyprus</name>
    <code>CY</code>
  </country>
  <country>
    <name>Czech Republic</name>
    <code>CZ</code>
  </country>
  <country>
    <name>Denmark</name>
    <code>DK</code>
  </country>
  <country>
    <name>Djibouti</name>
    <code>DJ</code>
  </country>
  <country>
    <name>Dominica</name>
    <code>DM</code>
  </country>
  <country>
    <name>Dominican Republic</name>
    <code>DO</code>
  </country>
  <country>
    <name>Ecuador</name>
    <code>EC</code>
  </country>
  <country>
    <name>Egypt</name>
    <code>EG</code>
  </country>
  <country>
    <name>El Salvador</name>
    <code>SV</code>
  </country>
  <country>
    <name>Equatorial Guinea</name>
    <code>GQ</code>
  </country>
  <country>
    <name>Eritrea</name>
    <code>ER</code>
  </country>
  <country>
    <name>Estonia</name>
    <code>EE</code>
  </country>
  <country>
    <name>Ethiopia</name>
    <code>ET</code>
  </country>
  <country>
    <name>Falkland Islands (Malvinas)</name>
    <code>FK</code>
  </country>
  <country>
    <name>Faroe Islands</name>
    <code>FO</code>
  </country>
  <country>
    <name>Fiji</name>
    <code>FJ</code>
  </country>
  <country>
    <name>Finland</name>
    <code>FI</code>
  </country>
  <country>
    <name>France</name>
    <code>FR</code>
  </country>
  <country>
    <name>French Guiana</name>
    <code>GF</code>
  </country>
  <country>
    <name>French Polynesia</name>
    <code>PF</code>
  </country>
  <country>
    <name>French Southern Territories</name>
    <code>TF</code>
  </country>
  <country>
    <name>Gabon</name>
    <code>GA</code>
  </country>
  <country>
    <name>Gambia</name>
    <code>GM</code>
  </country>
  <country>
    <name>Georgia</name>
    <code>GE</code>
  </country>
  <country>
    <name>Germany</name>
    <code>DE</code>
  </country>
  <country>
    <name>Ghana</name>
    <code>GH</code>
  </country>
  <country>
    <name>Gibraltar</name>
    <code>GI</code>
  </country>
  <country>
    <name>Greece</name>
    <code>GR</code>
  </country>
  <country>
    <name>Greenland</name>
    <code>GL</code>
  </country>
  <country>
    <name>Grenada</name>
    <code>GD</code>
  </country>
  <country>
    <name>Guadeloupe</name>
    <code>GP</code>
  </country>
  <country>
    <name>Guam</name>
    <code>GU</code>
  </country>
  <country>
    <name>Guatemala</name>
    <code>GT</code>
  </country>
  <country>
    <name>Guernsey</name>
    <code>GG</code>
  </country>
  <country>
    <name>Guinea</name>
    <code>GN</code>
  </country>
  <country>
    <name>Guinea-bissau</name>
    <code>GW</code>
  </country>
  <country>
    <name>Guyana</name>
    <code>GY</code>
  </country>
  <country>
    <name>Haiti</name>
    <code>HT</code>
  </country>
  <country>
    <name>Heard Island and Mcdonald Islands</name>
    <code>HM</code>
  </country>
  <country>
    <name>Holy See (Vatican City State)</name>
    <code>VA</code>
  </country>
  <country>
    <name>Honduras</name>
    <code>HN</code>
  </country>
  <country>
    <name>Hong Kong</name>
    <code>HK</code>
  </country>
  <country>
    <name>Hungary</name>
    <code>HU</code>
  </country>
  <country>
    <name>Iceland</name>
    <code>IS</code>
  </country>
  <country>
    <name>India</name>
    <code>IN</code>
  </country>
  <country>
    <name>Indonesia</name>
    <code>ID</code>
  </country>
  <country>
    <name>Iran, Islamic Republic of</name>
    <code>IR</code>
  </country>
  <country>
    <name>Iraq</name>
    <code>IQ</code>
  </country>
  <country>
    <name>Ireland</name>
    <code>IE</code>
  </country>
  <country>
    <name>Isle of Man</name>
    <code>IM</code>
  </country>
  <country>
    <name>Israel</name>
    <code>IL</code>
  </country>
  <country>
    <name>Italy</name>
    <code>IT</code>
  </country>
  <country>
    <name>Jamaica</name>
    <code>JM</code>
  </country>
  <country>
    <name>Japan</name>
    <code>JP</code>
  </country>
  <country>
    <name>Jersey</name>
    <code>JE</code>
  </country>
  <country>
    <name>Jordan</name>
    <code>JO</code>
  </country>
  <country>
    <name>Kazakhstan</name>
    <code>KZ</code>
  </country>
  <country>
    <name>Kenya</name>
    <code>KE</code>
  </country>
  <country>
    <name>Kiribati</name>
    <code>KI</code>
  </country>
  <country>
    <name>Korea, Democratic People\'s Republic of</name>
    <code>KP</code>
  </country>
  <country>
    <name>Korea, Republic of</name>
    <code>KR</code>
  </country>
  <country>
    <name>Kuwait</name>
    <code>KW</code>
  </country>
  <country>
    <name>Kyrgyzstan</name>
    <code>KG</code>
  </country>
  <country>
    <name>Lao People\'s Democratic Republic</name>
    <code>LA</code>
  </country>
  <country>
    <name>Latvia</name>
    <code>LV</code>
  </country>
  <country>
    <name>Lebanon</name>
    <code>LB</code>
  </country>
  <country>
    <name>Lesotho</name>
    <code>LS</code>
  </country>
  <country>
    <name>Liberia</name>
    <code>LR</code>
  </country>
  <country>
    <name>Libyan Arab Jamahiriya</name>
    <code>LY</code>
  </country>
  <country>
    <name>Liechtenstein</name>
    <code>LI</code>
  </country>
  <country>
    <name>Lithuania</name>
    <code>LT</code>
  </country>
  <country>
    <name>Luxembourg</name>
    <code>LU</code>
  </country>
  <country>
    <name>Macao</name>
    <code>MO</code>
  </country>
  <country>
    <name>Macedonia, The Former Yugoslav Republic of</name>
    <code>MK</code>
  </country>
  <country>
    <name>Madagascar</name>
    <code>MG</code>
  </country>
  <country>
    <name>Malawi</name>
    <code>MW</code>
  </country>
  <country>
    <name>Malaysia</name>
    <code>MY</code>
  </country>
  <country>
    <name>Maldives</name>
    <code>MV</code>
  </country>
  <country>
    <name>Mali</name>
    <code>ML</code>
  </country>
  <country>
    <name>Malta</name>
    <code>MT</code>
  </country>
  <country>
    <name>Marshall Islands</name>
    <code>MH</code>
  </country>
  <country>
    <name>Martinique</name>
    <code>MQ</code>
  </country>
  <country>
    <name>Mauritania</name>
    <code>MR</code>
  </country>
  <country>
    <name>Mauritius</name>
    <code>MU</code>
  </country>
  <country>
    <name>Mayotte</name>
    <code>YT</code>
  </country>
  <country>
    <name>Mexico</name>
    <code>MX</code>
  </country>
  <country>
    <name>Micronesia, Federated States of</name>
    <code>FM</code>
  </country>
  <country>
    <name>Moldova, Republic of</name>
    <code>MD</code>
  </country>
  <country>
    <name>Monaco</name>
    <code>MC</code>
  </country>
  <country>
    <name>Mongolia</name>
    <code>MN</code>
  </country>
  <country>
    <name>Montenegro</name>
    <code>ME</code>
  </country>
  <country>
    <name>Montserrat</name>
    <code>MS</code>
  </country>
  <country>
    <name>Morocco</name>
    <code>MA</code>
  </country>
  <country>
    <name>Mozambique</name>
    <code>MZ</code>
  </country>
  <country>
    <name>Myanmar</name>
    <code>MM</code>
  </country>
  <country>
    <name>Namibia</name>
    <code>NA</code>
  </country>
  <country>
    <name>Nauru</name>
    <code>NR</code>
  </country>
  <country>
    <name>Nepal</name>
    <code>NP</code>
  </country>
  <country>
    <name>Netherlands</name>
    <code>NL</code>
  </country>
  <country>
    <name>Netherlands Antilles</name>
    <code>AN</code>
  </country>
  <country>
    <name>New Caledonia</name>
    <code>NC</code>
  </country>
  <country>
    <name>New Zealand</name>
    <code>NZ</code>
  </country>
  <country>
    <name>Nicaragua</name>
    <code>NI</code>
  </country>
  <country>
    <name>Niger</name>
    <code>NE</code>
  </country>
  <country>
    <name>Nigeria</name>
    <code>NG</code>
  </country>
  <country>
    <name>Niue</name>
    <code>NU</code>
  </country>
  <country>
    <name>Norfolk Island</name>
    <code>NF</code>
  </country>
  <country>
    <name>Northern Mariana Islands</name>
    <code>MP</code>
  </country>
  <country>
    <name>Norway</name>
    <code>NO</code>
  </country>
  <country>
    <name>Oman</name>
    <code>OM</code>
  </country>
  <country>
    <name>Pakistan</name>
    <code>PK</code>
  </country>
  <country>
    <name>Palau</name>
    <code>PW</code>
  </country>
  <country>
    <name>Palestinian Territory, Occupied</name>
    <code>PS</code>
  </country>
  <country>
    <name>Panama</name>
    <code>PA</code>
  </country>
  <country>
    <name>Papua New Guinea</name>
    <code>PG</code>
  </country>
  <country>
    <name>Paraguay</name>
    <code>PY</code>
  </country>
  <country>
    <name>Peru</name>
    <code>PE</code>
  </country>
  <country>
    <name>Philippines</name>
    <code>PH</code>
  </country>
  <country>
    <name>Pitcairn</name>
    <code>PN</code>
  </country>
  <country>
    <name>Poland</name>
    <code>PL</code>
  </country>
  <country>
    <name>Portugal</name>
    <code>PT</code>
  </country>
  <country>
    <name>Puerto Rico</name>
    <code>PR</code>
  </country>
  <country>
    <name>Qatar</name>
    <code>QA</code>
  </country>
  <country>
    <name>Réunion</name>
    <code>RE</code>
  </country>
  <country>
    <name>Romania</name>
    <code>RO</code>
  </country>
  <country>
    <name>Russian Federation</name>
    <code>RU</code>
  </country>
  <country>
    <name>Rwanda</name>
    <code>RW</code>
  </country>
  <country>
    <name>Saint Barthélemy</name>
    <code>BL</code>
  </country>
  <country>
    <name>Saint Helena</name>
    <code>SH</code>
  </country>
  <country>
    <name>Saint Kitts and Nevis</name>
    <code>KN</code>
  </country>
  <country>
    <name>Saint Lucia</name>
    <code>LC</code>
  </country>
  <country>
    <name>Saint Martin</name>
    <code>MF</code>
  </country>
  <country>
    <name>Saint Pierre and Miquelon</name>
    <code>PM</code>
  </country>
  <country>
    <name>Saint Vincent and the Grenadines</name>
    <code>VC</code>
  </country>
  <country>
    <name>Samoa</name>
    <code>WS</code>
  </country>
  <country>
    <name>San Marino</name>
    <code>SM</code>
  </country>
  <country>
    <name>Sao Tome and Principe</name>
    <code>ST</code>
  </country>
  <country>
    <name>Saudi Arabia</name>
    <code>SA</code>
  </country>
  <country>
    <name>Senegal</name>
    <code>SN</code>
  </country>
  <country>
    <name>Serbia</name>
    <code>RS</code>
  </country>
  <country>
    <name>Seychelles</name>
    <code>SC</code>
  </country>
  <country>
    <name>Sierra Leone</name>
    <code>SL</code>
  </country>
  <country>
    <name>Singapore</name>
    <code>SG</code>
  </country>
  <country>
    <name>Slovakia</name>
    <code>SK</code>
  </country>
  <country>
    <name>Slovenia</name>
    <code>SI</code>
  </country>
  <country>
    <name>Solomon Islands</name>
    <code>SB</code>
  </country>
  <country>
    <name>Somalia</name>
    <code>SO</code>
  </country>
  <country>
    <name>South Africa</name>
    <code>ZA</code>
  </country>
  <country>
    <name>South Georgia and the South Sandwich Islands</name>
    <code>GS</code>
  </country>
  <country>
    <name>Spain</name>
    <code>ES</code>
  </country>
  <country>
    <name>Sri Lanka</name>
    <code>LK</code>
  </country>
  <country>
    <name>Sudan</name>
    <code>SD</code>
  </country>
  <country>
    <name>Suriname</name>
    <code>SR</code>
  </country>
  <country>
    <name>Svalbard and Jan Mayen</name>
    <code>SJ</code>
  </country>
  <country>
    <name>Swaziland</name>
    <code>SZ</code>
  </country>
  <country>
    <name>Sweden</name>
    <code>SE</code>
  </country>
  <country>
    <name>Switzerland</name>
    <code>CH</code>
  </country>
  <country>
    <name>Syrian Arab Republic</name>
    <code>SY</code>
  </country>
  <country>
    <name>Taiwan, Province of China</name>
    <code>TW</code>
  </country>
  <country>
    <name>Tajikistan</name>
    <code>TJ</code>
  </country>
  <country>
    <name>Tanzania, United Republic of</name>
    <code>TZ</code>
  </country>
  <country>
    <name>Thailand</name>
    <code>TH</code>
  </country>
  <country>
    <name>Timor-leste</name>
    <code>TL</code>
  </country>
  <country>
    <name>Togo</name>
    <code>TG</code>
  </country>
  <country>
    <name>Tokelau</name>
    <code>TK</code>
  </country>
  <country>
    <name>Tonga</name>
    <code>TO</code>
  </country>
  <country>
    <name>Trinidad and Tobago</name>
    <code>TT</code>
  </country>
  <country>
    <name>Tunisia</name>
    <code>TN</code>
  </country>
  <country>
    <name>Turkey</name>
    <code>TR</code>
  </country>
  <country>
    <name>Turkmenistan</name>
    <code>TM</code>
  </country>
  <country>
    <name>Turks and Caicos Islands</name>
    <code>TC</code>
  </country>
  <country>
    <name>Tuvalu</name>
    <code>TV</code>
  </country>
  <country>
    <name>Uganda</name>
    <code>UG</code>
  </country>
  <country>
    <name>Ukraine</name>
    <code>UA</code>
  </country>
  <country>
    <name>United Arab Emirates</name>
    <code>AE</code>
  </country>
  <country>
    <name>United Kingdom</name>
    <code>GB</code>
  </country>
  <country>
    <name>United States</name>
    <code>US</code>
  </country>
  <country>
    <name>United States Minor Outlying Islands</name>
    <code>UM</code>
  </country>
  <country>
    <name>Uruguay</name>
    <code>UY</code>
  </country>
  <country>
    <name>Uzbekistan</name>
    <code>UZ</code>
  </country>
  <country>
    <name>Vanuatu</name>
    <code>VU</code>
  </country>
  <country>
    <name>Venezuela</name>
    <code>VE</code>
  </country>
  <country>
    <name>Viet Nam</name>
    <code>VN</code>
  </country>
  <country>
    <name>Virgin Islands, British</name>
    <code>VG</code>
  </country>
  <country>
    <name>Virgin Islands, U.S.</name>
    <code>VI</code>
  </country>
  <country>
    <name>Wallis and Futuna</name>
    <code>WF</code>
  </country>
  <country>
    <name>Western Sahara</name>
    <code>EH</code>
  </country>
  <country>
    <name>Yemen</name>
    <code>YE</code>
  </country>
  <country>
    <name>Zambia</name>
    <code>ZM</code>
  </country>
  <country>
    <name>Zimbabwe</name>
    <code>ZW</code>
  </country>
</country-codes>";
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
