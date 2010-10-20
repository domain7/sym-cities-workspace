<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/routeone-layout.xsl"/>
<xsl:import href="../utilities/html-manipulation.xsl"/>
<xsl:import href="../utilities/publish-destinations.xsl"/>

<xsl:param name="parent-page" select="'destinations'"/>
<xsl:param name="current-section" select="'countries'"/>
<xsl:param name="this-path" select="concat($root,'/routeone/destinations/countries/import')"/>
<xsl:param name="destinations-path" select="concat($root,'/routeone/destinations')"/>
<xsl:param name="continents-path" select="concat($root,'/routeone/destinations/continents')"/>
<xsl:param name="countries-path" select="concat($root,'/routeone/destinations/countries')"/>
<xsl:param name="regions-path" select="concat($root,'/routeone/destinations/regions')"/>
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
<xsl:param name="previous-path" select="concat($continents-path,$selected-path)"/>
<xsl:param name="next-path" select="concat($regions-path,$selected-path)"/>
<xsl:param name="continents-list" select="/data/continents/entry"/>
<xsl:param name="countries-list" select="/data/countries/entry"/>
<xsl:param name="countries-by-continent" select="/data/countries-by-continent/continent/entry"/>
<xsl:param name="regions-list" select="/data/regions/entry"/>
<xsl:param name="continent-info" select="/data/continent/entry"/>
<xsl:param name="country-info" select="/data/country/entry"/>
<xsl:param name="region-info" select="/data/region/entry"/>
<xsl:param name="this-country" select="/data/country-codes/country[translate(code,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz') = $country]"/>

<xsl:template match="data">
  <div id="box-content">
    <div id="content" class="content-3col-overview">
      <ul class="nav-buttons">
        <li class="previous"><a href="{$previous-path}" title="Continents">Continents</a></li>
        <li class="next"><a href="{$next-path}" title="Regions">Regions</a></li>
      </ul>
      <h2>
        <a href="{$countries-path}/">Countries</a>
        <xsl:text> : </xsl:text>
        <a href="{$this-path}/"><xsl:value-of select="$page-title"/></a>
      </h2>
      <div class="colA">
        <div class="lists">
          <div class="clients-box">
            <div class="box-header">
              <h3><a href="{$previous-path}">Countries</a></h3>
              <ul class="buttons">
                <li class="add"><a href="{$continents-path}/africa/add/">Add</a></li>
                <li class="view"><a href="{$this-path}/">Import</a></li>
              </ul>
            </div>
            <div class="list-box">
              <xsl:call-template name="list-countries-by-continent"/>
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
              <xsl:if test="$continent">
                <ul class="tasks-list">
                  <xsl:for-each select="country-codes/country">
                    <xsl:sort select="name"/>
                    <xsl:call-template name="countries-by-code"/>
                  </xsl:for-each>
                </ul>
              </xsl:if>
            </div>
          </div>
        </div>
      </div>
      <div class="colC">
        <div class="proposal">
          <xsl:choose>
            <xsl:when test="$city">
              <xsl:choose>
                <xsl:when test="$city = 'edit'">
                  <xsl:for-each select="$region-info">
                    <xsl:call-template name="publish-region"/>
                  </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="region-details"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$region">
              <xsl:choose>
                <xsl:when test="$region = 'xml'">
                  <xsl:for-each select="$this-country">
                    <div class="box-header">
                      <h3>Import This Country<xsl:text>: </xsl:text><a href="{$this-path}/import/{$country}/"><xsl:value-of select="name"/></a></h3>
                    </div>
                    <xsl:call-template name="notice"/>
                    <div class="panel">
                      <form method="post" action="" enctype="multipart/form-data" class="pane">
                        <h4>Import a country to the selected continent</h4>
                        <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
                        <table>
                          <tbody>
                            <tr>
                              <th>Country</th>
                              <td>
                                <input name="fields[country]" type="text" value="{name}"/>
                              </td>
                            </tr>
                            <tr>
                              <th>Continent</th>
                              <td>
                                <select name="fields[continent]">
                                  <xsl:for-each select="/data/continents/entry">
                                    <option value="{./@id}">
                                      <xsl:if test="$continent = continent/@handle">
                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                      </xsl:if>
                                      <xsl:value-of select="continent"/>
                                    </option>
                                  </xsl:for-each>
                                </select>
                              </td>
                            </tr>
                            <tr>
                              <th>Description</th>
                              <td><textarea name="fields[description]" rows="16" cols="50"></textarea></td>
                            </tr>
                            <tr>
                              <th>Country Code</th>
                              <td>
                                <input name="fields[code]" type="text" value="{code}"/>
                              </td>
                            </tr>
                            <tr>
                              <th>Abbreviation</th>
                              <td>
                                <input name="fields[abbreviation]" type="text"/>
                              </td>
                            </tr>
                            <tr>
                              <th>Currency</th>
                              <td>
                                <input name="fields[currency]" type="text"/>
                              </td>
                            </tr>
                            <tr>
                              <th></th>
                              <td><input name="action[publish-country]" type="submit" value="Import Country" /></td>
                            </tr>
                          </tbody>
                        </table>
                      </form>
                    </div>
                  </xsl:for-each>
                </xsl:when>
                <xsl:when test="$region = 'add'">
                  <xsl:call-template name="publish-region"/>
                </xsl:when>
                <xsl:when test="$region = 'edit'">
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
                <xsl:when test="$country = 'edit'">
                  <xsl:for-each select="$continent-info">
                    <xsl:call-template name="publish-continent"/>
                  </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:for-each select="$country-info">
                    <xsl:call-template name="country-details"/>
                  </xsl:for-each>
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
                <h3>Select a Continent</h3>
              </div>
              <div class="list-box-fluid">
              </div>
            </xsl:otherwise>
          </xsl:choose>
        </div>
      </div>
    </div>
  </div>
</xsl:template>

<xsl:template name="list-countries-by-continent">
  <ul class="clients-list">
    <xsl:for-each select="$continents-list">
      <xsl:sort select="continent"/>
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
                <xsl:sort select="country"/>
                <li>
                  <a href="{$this-path}/{$continent}/{code/@handle}/#{code/@handle}">
                    <xsl:if test="code/@handle = $country">
                      <xsl:attribute name="class">current</xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="country"/>
                  </a>
                </li>
              </xsl:for-each>
            </ul>
          </xsl:when>
          <xsl:otherwise>
            <a href="{$this-path}/{continent/@handle}/" title="View countries">
              <xsl:value-of select="name"/>
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
    <a href="{$this-path}/{$continent}/{$country-code-handle}/xml/#{$country-code-handle}" title="Import country" id="{$country-code-handle}">
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
  
</xsl:stylesheet>