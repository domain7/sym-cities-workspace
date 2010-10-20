<?php

	require_once(TOOLKIT . '/class.event.php');
	
	Class eventpublish_content extends Event{
		
		const ROOTELEMENT = 'publish-content';
		
		public $eParamFILTERS = array(
			
		);
			
		public static function about(){
			return array(
					 'name' => 'Publish Content',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-06-23T17:38:18+00:00',
					 'trigger-condition' => 'action[publish-content]');	
		}

		public static function getSource(){
			return '3';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;publish-content result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/publish-content></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;publish-content result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/publish-content></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Title
    &lt;input name="fields[title]" type="text" />
  &lt;/label>
  &lt;label>URL
    &lt;input name="fields[url]" type="text" />
  &lt;/label>
  &lt;label>Heading
    &lt;input name="fields[heading]" type="text" />
  &lt;/label>
  &lt;label>Description
    &lt;textarea name="fields[description]" rows="6" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Code
    &lt;textarea name="fields[code]" rows="3" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Body
    &lt;textarea name="fields[body]" rows="20" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Category
    &lt;select name="fields[category]">
      &lt;option value="None">None&lt;/option>
      &lt;option value="Destinations">Destinations&lt;/option>
      &lt;option value="Travel">Travel&lt;/option>
      &lt;option value="Accommodations">Accommodations&lt;/option>
      &lt;option value="Dining">Dining&lt;/option>
      &lt;option value="Events">Events&lt;/option>
      &lt;option value="Other">Other&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Sort
    &lt;input name="fields[sort]" type="text" />
  &lt;/label>
  &lt;input name="fields[section]" type="hidden" value="..." />
  &lt;input name="action[publish-content]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://home/sym/cities/success/" /></code></pre>';
		}
		
		public function load(){			
			if(isset($_POST['action']['publish-content'])) return $this->__trigger();
		}
		
		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}		

	}

?>