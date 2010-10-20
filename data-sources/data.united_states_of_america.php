<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceunited_states_of_america extends Datasource{
		
		public $dsParamROOTELEMENT = 'united-states-of-america';
		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'United States of America',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/cities',
							'email' => 'stephen@domain7.com'),
					 'version' => '1.0',
					 'release-date' => '2010-09-19T15:06:19+00:00');	
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
				$result = "<united-states-of-america>
  <state>
    <name>Alabama</name>
    <abbreviation>AL</abbreviation>
    <id>1</id>
  </state>
  <state>
    <name>Alaska</name>
    <abbreviation>AK</abbreviation>
    <id>2</id>
  </state>
  <state>
    <name>Arizona</name>
    <abbreviation>AZ</abbreviation>
    <id>3</id>
  </state>
  <state>
    <name>Arkansas</name>
    <abbreviation>AR</abbreviation>
    <id>4</id>
  </state>
  <state>
    <name>California</name>
    <abbreviation>CA</abbreviation>
    <id>5</id>
  </state>
  <state>
    <name>Colorado</name>
    <abbreviation>CO</abbreviation>
    <id>6</id>
  </state>
  <state>
    <name>Connecticut</name>
    <abbreviation>CT</abbreviation>
    <id>7</id>
  </state>
  <state>
    <name>Delaware</name>
    <abbreviation>DE</abbreviation>
    <id>8</id>
  </state>
  <state>
    <name>District of Columbia</name>
    <abbreviation>DC</abbreviation>
    <id>9</id>
  </state>
  <state>
    <name>Florida</name>
    <abbreviation>FL</abbreviation>
    <id>10</id>
  </state>
  <state>
    <name>Georgia</name>
    <abbreviation>GA</abbreviation>
    <id>11</id>
  </state>
  <state>
    <name>Hawaii</name>
    <abbreviation>HI</abbreviation>
    <id>12</id>
  </state>
  <state>
    <name>Idaho</name>
    <abbreviation>ID</abbreviation>
    <id>13</id>
  </state>
  <state>
    <name>Illinois</name>
    <abbreviation>IL</abbreviation>
    <id>14</id>
  </state>
  <state>
    <name>Indiana</name>
    <abbreviation>IN</abbreviation>
    <id>15</id>
  </state>
  <state>
    <name>Iowa</name>
    <abbreviation>IA</abbreviation>
    <id>16</id>
  </state>
  <state>
    <name>Kansas</name>
    <abbreviation>KS</abbreviation>
    <id>17</id>
  </state>
  <state>
    <name>Kentucky</name>
    <abbreviation>KY</abbreviation>
    <id>18</id>
  </state>
  <state>
    <name>Louisiana</name>
    <abbreviation>LA</abbreviation>
    <id>19</id>
  </state>
  <state>
    <name>Maine</name>
    <abbreviation>ME</abbreviation>
    <id>20</id>
  </state>
  <state>
    <name>Maryland</name>
    <abbreviation>MD</abbreviation>
    <id>21</id>
  </state>
  <state>
    <name>Massachusetts</name>
    <abbreviation>MA</abbreviation>
    <id>22</id>
  </state>
  <state>
    <name>Michigan</name>
    <abbreviation>MI</abbreviation>
    <id>23</id>
  </state>
  <state>
    <name>Minnesota</name>
    <abbreviation>MN</abbreviation>
    <id>24</id>
  </state>
  <state>
    <name>Mississippi</name>
    <abbreviation>MS</abbreviation>
    <id>25</id>
  </state>
  <state>
    <name>Missouri</name>
    <abbreviation>MO</abbreviation>
    <id>26</id>
  </state>
  <state>
    <name>Montana</name>
    <abbreviation>MT</abbreviation>
    <id>27</id>
  </state>
  <state>
    <name>Nebraska</name>
    <abbreviation>NE</abbreviation>
    <id>28</id>
  </state>
  <state>
    <name>Nevada</name>
    <abbreviation>NV</abbreviation>
    <id>29</id>
  </state>
  <state>
    <name>New Hampshire</name>
    <abbreviation>NH</abbreviation>
    <id>30</id>
  </state>
  <state>
    <name>New Jersey</name>
    <abbreviation>NJ</abbreviation>
    <id>31</id>
  </state>
  <state>
    <name>New Mexico</name>
    <abbreviation>NM</abbreviation>
    <id>32</id>
  </state>
  <state>
    <name>New York</name>
    <abbreviation>NY</abbreviation>
    <id>33</id>
  </state>
  <state>
    <name>North Carolina</name>
    <abbreviation>NC</abbreviation>
    <id>34</id>
  </state>
  <state>
    <name>North Dakota</name>
    <abbreviation>ND</abbreviation>
    <id>35</id>
  </state>
  <state>
    <name>Ohio</name>
    <abbreviation>OH</abbreviation>
    <id>36</id>
  </state>
  <state>
    <name>Oklahoma</name>
    <abbreviation>OK</abbreviation>
    <id>37</id>
  </state>
  <state>
    <name>Oregon</name>
    <abbreviation>OR</abbreviation>
    <id>38</id>
  </state>
  <state>
    <name>Pennsylvania</name>
    <abbreviation>PA</abbreviation>
    <id>39</id>
  </state>
  <state>
    <name>Rhode Island</name>
    <abbreviation>RI</abbreviation>
    <id>40</id>
  </state>
  <state>
    <name>South Carolina</name>
    <abbreviation>SC</abbreviation>
    <id>41</id>
  </state>
  <state>
    <name>South Dakota</name>
    <abbreviation>SD</abbreviation>
    <id>42</id>
  </state>
  <state>
    <name>Tennessee</name>
    <abbreviation>TN</abbreviation>
    <id>43</id>
  </state>
  <state>
    <name>Texas</name>
    <abbreviation>TX</abbreviation>
    <id>44</id>
  </state>
  <state>
    <name>Utah</name>
    <abbreviation>UT</abbreviation>
    <id>45</id>
  </state>
  <state>
    <name>Vermont</name>
    <abbreviation>VT</abbreviation>
    <id>46</id>
  </state>
  <state>
    <name>Virginia</name>
    <abbreviation>VA</abbreviation>
    <id>47</id>
  </state>
  <state>
    <name>Washington</name>
    <abbreviation>WA</abbreviation>
    <id>48</id>
  </state>
  <state>
    <name>West Virginia</name>
    <abbreviation>WV</abbreviation>
    <id>49</id>
  </state>
  <state>
    <name>Wisconsin</name>
    <abbreviation>WI</abbreviation>
    <id>50</id>
  </state>
  <state>
    <name>Wyoming</name>
    <abbreviation>WY</abbreviation>
    <id>51</id>
  </state>
</united-states-of-america>";
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

