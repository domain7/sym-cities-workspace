<?php

	require_once(TOOLKIT . '/class.event.php');
	
	Class eventpublish_navigation extends Event{
		
		const ROOTELEMENT = 'publish-navigation';
		
		public $eParamFILTERS = array(
			
		);
			
		public static function about(){
			return array(
					 'name' => 'Publish Navigation',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2008-03-10T18:39:14+00:00',
					 'trigger-condition' => 'action[publish-navigation]');	
		}

		public static function getSource(){
			return '1';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;publish-navigation result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/publish-navigation></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;publish-navigation result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing"/>
  ...
&lt;/publish-navigation></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Navigation
    &lt;input name="fields[navigation]" type="text" />
  &lt;/label>
  &lt;label>Description
    &lt;textarea name="fields[description]" rows="15" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;input name="action[publish-navigation]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" value="23" type="hidden" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" value="http://home/sym/cities/success/" type="hidden" /></code></pre>';
		}
		
		public function load(){			
			if(isset($_POST['action']['publish-navigation'])) return $this->__trigger();
		}
		
		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}		

	}

?>