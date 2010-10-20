<?php

	require_once(TOOLKIT . '/class.event.php');
	
	Class eventpublish_city extends Event{
		
		const ROOTELEMENT = 'publish-city';
		
		public $eParamFILTERS = array(
			
		);
			
		public static function about(){
			return array(
					 'name' => 'Publish City',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-06-03T23:58:09+00:00',
					 'trigger-condition' => 'action[publish-city]');	
		}

		public static function getSource(){
			return '7';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;publish-city result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/publish-city></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;publish-city result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/publish-city></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>City
    &lt;input name="fields[city]" type="text" />
  &lt;/label>
  &lt;label>Description
    &lt;textarea name="fields[description]" rows="8" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Body
    &lt;textarea name="fields[body]" rows="16" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Region
    &lt;select name="fields[region]">
      &lt;option value="YT">YT&lt;/option>
      &lt;option value="WY">WY&lt;/option>
      &lt;option value="WV">WV&lt;/option>
      &lt;option value="WI">WI&lt;/option>
      &lt;option value="WA">WA&lt;/option>
      &lt;option value="VT">VT&lt;/option>
      &lt;option value="VIC">VIC&lt;/option>
      &lt;option value="VA">VA&lt;/option>
      &lt;option value="UT">UT&lt;/option>
      &lt;option value="TX">TX&lt;/option>
      &lt;option value="TN">TN&lt;/option>
      &lt;option value="TAS">TAS&lt;/option>
      &lt;option value="SK">SK&lt;/option>
      &lt;option value="SD">SD&lt;/option>
      &lt;option value="SC">SC&lt;/option>
      &lt;option value="SA">SA&lt;/option>
      &lt;option value="RI">RI&lt;/option>
      &lt;option value="QL">QL&lt;/option>
      &lt;option value="QC">QC&lt;/option>
      &lt;option value="PE">PE&lt;/option>
      &lt;option value="PA">PA&lt;/option>
      &lt;option value="OR">OR&lt;/option>
      &lt;option value="ON">ON&lt;/option>
      &lt;option value="OK">OK&lt;/option>
      &lt;option value="OH">OH&lt;/option>
      &lt;option value="NY">NY&lt;/option>
      &lt;option value="NV">NV&lt;/option>
      &lt;option value="NU">NU&lt;/option>
      &lt;option value="NT">NT&lt;/option>
      &lt;option value="NSW">NSW&lt;/option>
      &lt;option value="NS">NS&lt;/option>
      &lt;option value="NM">NM&lt;/option>
      &lt;option value="NL">NL&lt;/option>
      &lt;option value="NJ">NJ&lt;/option>
      &lt;option value="NH">NH&lt;/option>
      &lt;option value="NE">NE&lt;/option>
      &lt;option value="ND">ND&lt;/option>
      &lt;option value="NC">NC&lt;/option>
      &lt;option value="NB">NB&lt;/option>
      &lt;option value="MT">MT&lt;/option>
      &lt;option value="MS">MS&lt;/option>
      &lt;option value="MO">MO&lt;/option>
      &lt;option value="MN">MN&lt;/option>
      &lt;option value="MI">MI&lt;/option>
      &lt;option value="ME">ME&lt;/option>
      &lt;option value="MD">MD&lt;/option>
      &lt;option value="MB">MB&lt;/option>
      &lt;option value="MA">MA&lt;/option>
      &lt;option value="LA">LA&lt;/option>
      &lt;option value="KY">KY&lt;/option>
      &lt;option value="KS">KS&lt;/option>
      &lt;option value="IN">IN&lt;/option>
      &lt;option value="IL">IL&lt;/option>
      &lt;option value="ID">ID&lt;/option>
      &lt;option value="IA">IA&lt;/option>
      &lt;option value="HI">HI&lt;/option>
      &lt;option value="GA">GA&lt;/option>
      &lt;option value="FL">FL&lt;/option>
      &lt;option value="DE">DE&lt;/option>
      &lt;option value="DC">DC&lt;/option>
      &lt;option value="CT">CT&lt;/option>
      &lt;option value="CO">CO&lt;/option>
      &lt;option value="CA">CA&lt;/option>
      &lt;option value="BC">BC&lt;/option>
      &lt;option value="AZ">AZ&lt;/option>
      &lt;option value="AR">AR&lt;/option>
      &lt;option value="AL">AL&lt;/option>
      &lt;option value="AK">AK&lt;/option>
      &lt;option value="AB">AB&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;input name="fields[country]" type="hidden" value="..." />
  &lt;label>Continent
    &lt;select name="fields[continent]">
      &lt;option value="SA">SA&lt;/option>
      &lt;option value="OC">OC&lt;/option>
      &lt;option value="NA">NA&lt;/option>
      &lt;option value="EU">EU&lt;/option>
      &lt;option value="AS">AS&lt;/option>
      &lt;option value="AN">AN&lt;/option>
      &lt;option value="AF">AF&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Time Zone
    &lt;input name="fields[time-zone]" type="text" />
  &lt;/label>
  &lt;label>Geography
    &lt;select name="fields[geography][]" multiple="multiple">
      &lt;option value="Southern Hemisphere">Southern Hemisphere&lt;/option>
      &lt;option value="South Pacific">South Pacific&lt;/option>
      &lt;option value="Pacific Northwest">Pacific Northwest&lt;/option>
      &lt;option value="Northern Hemisphere">Northern Hemisphere&lt;/option>
      &lt;option value="Baja Peninsula">Baja Peninsula&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Feature
    &lt;select name="fields[feature]">
      &lt;option value="Yes">Yes&lt;/option>
      &lt;option value="No">No&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Guide
    &lt;select name="fields[guide]">
      &lt;option value="Yes">Yes&lt;/option>
      &lt;option value="No">No&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;input name="action[publish-city]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://home/sym/cities/success/" /></code></pre>';
		}
		
		public function load(){			
			if(isset($_POST['action']['publish-city'])) return $this->__trigger();
		}
		
		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}		

	}

?>