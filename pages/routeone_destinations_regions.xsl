<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/routeone-layout.xsl"/>
<xsl:import href="../utilities/html-manipulation.xsl"/>
<xsl:import href="../utilities/publish-destinations.xsl"/>

<xsl:param name="parent-page" select="'destinations'" />
<xsl:param name="this-path" select="concat($root,'/routeone/destinations/regions')"/>
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
<xsl:param name="countries-list" select="/data/countries-by-continent/continent/entry"/>
<xsl:param name="regions-list" select="/data/regions/entry"/>
<xsl:param name="cities-list" select="/data/cities/entry"/>
<xsl:param name="countries-by-continent" select="/data/countries-by-continent/continent/entry"/>
<xsl:param name="this-country" select="/data/country-codes/country[translate(code,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz') = $country]"/>
<xsl:param name="continent-info" select="/data/continent/entry"/>
<xsl:param name="country-info" select="/data/country/entry"/>
<xsl:param name="region-info" select="/data/region/entry"/>
<xsl:param name="city-info" select="/data/city/entry"/>

<xsl:template match="data">
  <div id="box-content">
    <div id="content" class="content-3col-overview">
      <ul class="nav-buttons">
        <li class="previous"><a href="{$previous-path}" title="Continents">Continents</a></li>
        <li class="next"><a href="{$next-path}" title="Regions">Regions</a></li>
      </ul>
      <h2>
        <xsl:if test="not($continent)">
          <a href="{$destinations-path}/">Featured Destinations</a>
          <xsl:text> : </xsl:text>
        </xsl:if>
        <a href="{$this-path}/">Regions</a>
      </h2>
      <div class="colA">
        <div class="lists">
          <div class="tasks-box">
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
              <ul class="clients-list">
                <xsl:choose>
                  <xsl:when test="$continent">
                    <xsl:for-each select="$regions-list">
                      <xsl:call-template name="regions-list"/>
                    </xsl:for-each>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:for-each select="/data/feature-regions/country/entry">
                      <xsl:call-template name="feature-regions-list"/>
                    </xsl:for-each>
                  </xsl:otherwise>
                </xsl:choose>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="colB">
        <div class="lists">
          <div class="tasks-box">
            <div class="box-header">
              <h3><a href="{$next-path}">Cities</a></h3>
              <ul class="buttons">
                <xsl:if test="$region and $region != 'add'">
                  <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/add/">Add</a></li>
                </xsl:if>
              </ul>
            </div>
            <div class="list-box">
              <ul class="projects-list">
                <xsl:if test="$country">
                  <xsl:for-each select="$cities-list[region/item/@handle = $region-info/region/@handle]">
                    <xsl:sort select="city"/>
                    <li>
                      <a href="{$cities-path}/{$continent}/{$country}/{$region}/{city/@handle}/" title="View city">
                        <xsl:if test="city/@handle = $city">
                          <xsl:attribute name="class">current</xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="city"/>
                      </a>
                    </li>
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
                <xsl:otherwise>
                  <xsl:call-template name="city-details"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$city">
              <xsl:choose>
                <xsl:when test="$city = 'add'">
                  <xsl:call-template name="publish-city"/>
                </xsl:when>
                <xsl:when test="$city = 'edit' or $city = 'copy'">
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

</xsl:stylesheet>