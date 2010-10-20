<?php

	require_once(TOOLKIT . '/class.event.php');
	
	Class eventpublish_country extends Event{
		
		const ROOTELEMENT = 'publish-country';
		
		public $eParamFILTERS = array(
			
		);
			
		public static function about(){
			return array(
					 'name' => 'Publish Country',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-03-15T19:50:32+00:00',
					 'trigger-condition' => 'action[publish-country]');	
		}

		public static function getSource(){
			return '5';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;publish-country result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/publish-country></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;publish-country result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing"/>
  ...
&lt;/publish-country></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Country
    &lt;input name="fields[country]" type="text" />
  &lt;/label>
  &lt;label>Description
    &lt;textarea name="fields[description]" rows="24" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Code
    &lt;input name="fields[code]" type="text" />
  &lt;/label>
  &lt;label>Abbreviation
    &lt;input name="fields[abbreviation]" type="text" />
  &lt;/label>
  &lt;label>Currency
    &lt;input name="fields[currency]" type="text" />
  &lt;/label>
  &lt;input name="fields[continent]" type="hidden" value="..." />
  &lt;label>Geography
    &lt;select name="fields[geography][]" multiple="multiple">
      &lt;option value="Southern Hemisphere">Southern Hemisphere&lt;/option>
      &lt;option value="South Pacific">South Pacific&lt;/option>
      &lt;option value="Pacific Northwest">Pacific Northwest&lt;/option>
      &lt;option value="Northern Hemisphere">Northern Hemisphere&lt;/option>
      &lt;option value="Baja Peninsula">Baja Peninsula&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Featured
    &lt;input name="fields[featured]" type="checkbox" />
  &lt;/label>
  &lt;input name="action[publish-country]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" value="23" type="hidden" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" value="http://home/sym/cities/success/" type="hidden" /></code></pre>';
		}
		
		public function load(){			
			if(isset($_POST['action']['publish-country'])) return $this->__trigger();
		}
		
		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}		

	}

?>