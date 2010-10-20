<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/routeone-layout.xsl"/>
<xsl:import href="../utilities/html-manipulation.xsl"/>
<xsl:import href="../utilities/publish-destinations.xsl"/>

<xsl:param name="parent-page" select="'destinations'" />
<xsl:param name="current-section" select="'regions'" />
<xsl:param name="this-path" select="concat($root,'/routeone/destinations/regions/import')"/>
<xsl:param name="destinations-path" select="concat($root,'/routeone/destinations')"/>
<xsl:param name="continents-path" select="concat($root,'/routeone/destinations/continents')"/>
<xsl:param name="countries-path" select="concat($root,'/routeone/destinations/countries')"/>
<xsl:param name="regions-path" select="concat($root,'/routeone/destinations/regions')"/>
<xsl:param name="cities-path" select="concat($root,'/routeone/destinations/cities')"/>
<xsl:param name="selected-path">
  <xsl:choose>
    <xsl:when test="$article">
      <xsl:value-of select="concat('/',$continent,'/',$country,'/',$region,'/',$city,'/',$guide,'/',$article,'/')"/>
    </xsl:when>
    <xsl:when test="$guide">
      <xsl:value-of select="concat('/',$continent,'/',$country,'/',$region,'/',$city,'/',$guide,'/')"/>
    </xsl:when>
    <xsl:when test="$city">
      <xsl:value-of select="concat('/',$continent,'/',$country,'/',$region,'/',$city,'/')"/>
    </xsl:when>
    <xsl:when test="$region">
      <xsl:value-of select="concat('/',$continent,'/',$country,'/',$region,'/')"/>
    </xsl:when>
    <xsl:when test="$country">
      <xsl:value-of select="concat('/',$continent,'/',$country,'/')"/>
    </xsl:when>
    <xsl:when test="$continent">
      <xsl:value-of select="concat('/',$continent,'/')"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="'/'"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:param>
<xsl:param name="previous-path" select="concat($countries-path,$selected-path)"/>
<xsl:param name="next-path" select="concat($cities-path,$selected-path)"/>
<xsl:param name="continents-list" select="/data/continents/entry"/>
<xsl:param name="countries-list" select="/data/countries/entry"/>
<xsl:param name="regions-list" select="/data/regions/entry"/>
<xsl:param name="cities-list" select="/data/cities/entry"/>
<xsl:param name="countries-by-continent" select="/data/countries-by-continent/continent/entry"/>
<xsl:param name="this-country" select="/data/country-codes/country[translate(code,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz') = $country]"/>
<xsl:param name="continent-info" select="/data/continent/entry"/>
<xsl:param name="country-info" select="/data/country/entry"/>
<xsl:param name="region-info" select="/data/region/entry"/>
<xsl:param name="city-info" select="/data/city/entry"/>
<xsl:param name="this-state" select="/data/united-states-of-america/state[translate(abbreviation,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz') = $region]/abbreviation"/>

<xsl:template match="data">
  <div id="box-content">
    <div id="content" class="content-3col-overview">
      <ul class="nav-buttons">
        <li class="previous"><a href="{$previous-path}" title="Continents">Continents</a></li>
        <li class="next"><a href="{$next-path}" title="Regions">Regions</a></li>
      </ul>
      <h2>
        <a href="{$regions-path}/">Regions</a>
        <xsl:text> : </xsl:text>
        <a href="{$this-path}/"><xsl:value-of select="$page-title"/></a>
      </h2>
      <div class="colA">
        <div class="lists">
          <div class="clients-box">
            <div class="box-header">
              <h3><a href="{$previous-path}">Regions</a></h3>
              <ul class="buttons">
                <xsl:choose>
                  <xsl:when test="$country">
                    <li class="add"><a href="{$regions-path}/{$continent}/{$country}/add/">Add</a></li>
                  </xsl:when>
                  <xsl:otherwise>
                    <li class="add"><a href="{$regions-path}/north-america/us/add/">Add</a></li>
                  </xsl:otherwise>
                </xsl:choose>
                <li class="view"><a href="{$regions-path}/import/north-america/us/">Import</a></li>
              </ul>
            </div>
            <div class="list-box">
              <xsl:call-template name="list-regions-by-continent"/>
            </div>
          </div>
        </div>
      </div>
      <div class="colB">
        <div class="lists">
          <div class="tasks-box">
            <div class="box-header">
              <h3><a href="{$this-path}/">Import from XML</a></h3>
            </div>
            <div class="list-box">
              <ul class="tasks-list">
                <xsl:if test="$country = 'us'">
                  <xsl:for-each select="united-states-of-america/state">
                    <xsl:call-template name="regions-by-code"/>
                  </xsl:for-each>
                </xsl:if>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="colC">
        <div class="proposal">
          <xsl:choose>
            <xsl:when test="$guide">
              <xsl:choose>
                <xsl:when test="$guide = 'edit'">
                   <xsl:for-each select="$city-info">
                    <xsl:call-template name="publish-city"/>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$city">
              <xsl:choose>
                <xsl:when test="$city = 'xml'">
                  <xsl:for-each select="united-states-of-america/state[abbreviation = $this-state]">
                    <div class="box-header">
                      <h3>Import this Region: <a href="{$this-path}/{$continent}/{$country}/{$region}/xml/#{$region}"><xsl:value-of select="name"/></a></h3>
                    </div>
                    <xsl:call-template name="notice"/>
                    <div class="panel">
                      <form method="post" action="" enctype="multipart/form-data" class="pane">
                        <h4>Import this region</h4>
                        <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
                        <table>
                          <tbody>
                            <tr>
                              <th>Region</th>
                              <td>
                                <input name="fields[region]" type="text" value="{name}"/>
                              </td>
                            </tr>
                            <tr>
                              <th>Abbreviation</th>
                              <td>
                                <input name="fields[abbreviation]" type="text" value="{abbreviation}"/>
                              </td>
                            </tr>
                            <tr>
                              <th>Type</th>
                              <td>
                                <select name="fields[type]">
                                  <xsl:call-template name="select-csv-options">
                                    <xsl:with-param name="csv" select="'None, Province, State, Territory'"/>
                                    <xsl:with-param name="selected" select="'State'"/>
                                  </xsl:call-template>
                                </select>
                              </td>
                            </tr>
                            <tr>
                              <th>Country</th>
                              <td>
                                <select name="fields[country]">
                                  <option value="None">None</option>
                                  <xsl:for-each select="$countries-list">
                                    <option value="{./@id}">
                                      <xsl:if test="$country = code/@handle">
                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                      </xsl:if>
                                      <xsl:value-of select="country"/>
                                    </option>
                                  </xsl:for-each>
                                </select>
                              </td>
                            </tr>
                            <tr>
                              <th>Continent</th>
                              <td>
                                <xsl:value-of select="$continent-info/continent"/>
                              </td>
                            </tr>
                            <tr>
                              <th>Description</th>
                              <td>
                                <textarea name="fields[description]" rows="16" cols="50">
                                  <xsl:apply-templates select="description" mode="markdown"/>
                                </textarea>
                              </td>
                            </tr>
                            <tr>
                              <th></th>
                              <td>
                                <input name="action[publish-region]" type="submit" value="Import Region"/>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </form>
                    </div>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$city = 'add'">
                  <xsl:call-template name="publish-city"/>
                </xsl:when>
                <xsl:when test="$city = 'edit'">
                  <xsl:for-each select="$region-info">
                    <xsl:call-template name="publish-region"/>
                  </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="city-details"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$region">
              <xsl:choose>
                <xsl:when test="$region = 'add'">
                  <xsl:call-template name="publish-region"/>
                </xsl:when>
                <xsl:when test="$region = 'edit' or $region = 'copy'">
                  <xsl:for-each select="$country-info">
                    <xsl:call-template name="publish-country"/>
                  </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="region-details"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$country">
              <xsl:choose>
                <xsl:when test="$country = 'add'">
                  <xsl:call-template name="publish-country"/>
                </xsl:when>
                <xsl:otherwise>
                  <div class="box-header">
                    <h3><a href="{$previous-path}">Select a Region</a></h3>
                  </div>
                  <div class="list-box-fluid">
                  </div>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$continent">
              <div class="box-header">
                <h3><a href="{$previous-path}">Select a Country</a></h3>
              </div>
              <div class="list-box-fluid">
              </div>
            </xsl:when>
            <xsl:otherwise>
              <div class="box-header">
                <h3><a href="{$continents-path}/">Select a Continent</a></h3>
              </div>
              <div class="list-box-fluid content">
                <div class="content-body">
                  <h2><a href="{$continents-path}/">Select a Continent</a></h2>
                  <p>To view, edit or add a destination, please <a href="{$continents-path}/">select a continent</a>.</p>
                </div>
              </div>
            </xsl:otherwise>
          </xsl:choose>
        </div>
      </div>
    </div>
  </div>
</xsl:template>

<xsl:template name="list-regions-by-continent">
  <ul class="clients-list">
    <xsl:for-each select="$continents-list">
      <li>
        <xsl:choose>
          <xsl:when test="continent/@handle = $continent">
            <a href="{$this-path}/{continent/@handle}/" title="View countries">
              <xsl:if test="not($country) or ($region = 'xml' and $country-info/code/@handle != $country)">
                <xsl:attribute name="class">current</xsl:attribute>
              </xsl:if>
              <xsl:value-of select="continent"/>
            </a>
            <ul>
              <xsl:for-each select="$countries-by-continent">
                <li>
                  <xsl:choose>
                    <xsl:when test="code/@handle = $country">
                      <a href="{$this-path}/{$continent}/{code/@handle}/">
                        <xsl:if test="not($region) or ($city = 'xml' and $region-info/abbreviation/@handle != $region)">
                          <xsl:attribute name="class">current</xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="country"/>
                      </a>
                      <ul>
                        <xsl:for-each select="$regions-list">
                          <li>
                            <a href="{$this-path}/{$continent}/{$country}/{abbreviation/@handle}/#{abbreviation/@handle}" title="View region">
                              <xsl:if test="abbreviation/@handle = $region">
                                <xsl:attribute name="class">current</xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="region"/>
                            </a>
                          </li>
                        </xsl:for-each>
                      </ul>
                    </xsl:when>
                    <xsl:otherwise>
                      <a href="{$this-path}/{$continent}/{code/@handle}/">
                        <xsl:value-of select="country"/>
                      </a>
                    </xsl:otherwise>
                  </xsl:choose>
                </li>
              </xsl:for-each>
            </ul>
          </xsl:when>
          <xsl:otherwise>
            <a href="{$this-path}/{continent/@handle}/" title="View countries">
              <xsl:value-of select="continent"/>
            </a>
          </xsl:otherwise>
        </xsl:choose>
      </li>
    </xsl:for-each>
  </ul>
</xsl:template>
  
<xsl:template name="countries-by-code">
  <xsl:param name="country-code-handle" select="translate(code,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')"/>
  <li>
    <a href="{$this-path}/{$continent}/{$country-code-handle}/xml/" title="Import country">
      <xsl:if test="$country and $country-code-handle = $country">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="name"/>
    </a>
  </li>
</xsl:template>
  
<xsl:template name="country-by-code">
  <xsl:param name="country-code-handle" select="translate(code,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')"/>
  <li>
    <a href="{$this-path}/add/{$country-code-handle}/" title="View country">
      <xsl:if test="$country and $country-code-handle = $country">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="name"/>
    </a>
  </li>
</xsl:template>
  
<xsl:template name="regions-by-code">
  <xsl:param name="region-code-handle" select="translate(abbreviation,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')"/>
  <li>
    <a href="{$this-path}/{$continent}/{$country}/{$region-code-handle}/xml/#{$region-code-handle}" title="Import region" id="{$region-code-handle}">
      <xsl:if test="$region and $region-code-handle = $region">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="name"/>
    </a>
  </li>
</xsl:template>
  
</xsl:stylesheet>