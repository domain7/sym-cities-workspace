<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/routeone-layout.xsl"/>
<xsl:import href="../utilities/html-manipulation.xsl"/>
<xsl:import href="../utilities/publish-destinations.xsl"/>

<xsl:param name="parent-page" select="''" />
<xsl:param name="this-path" select="concat($root,'/routeone/',$current-page)"/>
<xsl:param name="continents-path" select="concat($root,'/routeone/destinations/continents')"/>
<xsl:param name="countries-path" select="concat($root,'/routeone/destinations/countries')"/>
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
<xsl:param name="this-path" select="concat($continents-path,$selected-path)"/>
<xsl:param name="next-path" select="concat($countries-path,$selected-path)"/>
<xsl:param name="continents-list" select="/data/continents/entry"/>
<xsl:param name="countries-list" select="/data/countries-by-continent/continent/entry"/>
<xsl:param name="regions-list" select="/data/regions/entry"/>
<xsl:param name="continent-info" select="/data/continent/entry"/>
<xsl:param name="country-info" select="/data/country/entry"/>

<xsl:template match="data">
  <div id="box-content">
    <div id="content" class="content-3col-overview">
      <ul class="nav-buttons">
        <li class="next"><a href="{$next-path}" title="Countries">Countries</a></li>
      </ul>
      <h2>
        <a href="{$this-path}/"><xsl:if test="not($continent)">Featured </xsl:if>Destinations</a>
      </h2>
      <div class="colA">
        <div class="lists">
          <div class="clients-box">
            <div class="box-header">
              <h3><a href="{$this-path}">Continents</a></h3>
            </div>
            <div class="list-box">
              <ul class="clients-list">
                <xsl:for-each select="$continents-list">
                  <xsl:sort select="continent"/>
                  <li>
                    <a href="{$continents-path}/{continent/@handle}/" title="View countries">
                      <xsl:if test="continent/@handle = $continent">
                        <xsl:attribute name="class">current</xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="name"/>
                    </a>
                  </li>
                </xsl:for-each>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="colB">
        <div class="lists">
          <div class="tasks-box">
            <div class="box-header">
              <h3><a href="{$next-path}" title="Select regions by country">Countries</a></h3>
              <ul class="buttons">
                <xsl:if test="$continent">
                  <li class="add"><a href="{$this-path}/{$continent}/add/">Add</a></li>
                  <li class="view"><a href="{$countries-path}/import/{$continent}/">Import</a></li>
                </xsl:if>
              </ul>
            </div>
            <div class="list-box">
              <ul class="projects-list">
                <xsl:choose>
                  <xsl:when test="$continent">
                    <xsl:call-template name="countries-by-continent"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:for-each select="/data/feature-countries/continent/entry">
                      <xsl:call-template name="feature-countries-list"/>
                    </xsl:for-each>
                  </xsl:otherwise>
                </xsl:choose>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="colC">
        <div class="lists">
          <div class="box-header">
            <h3><a href="{$cities-path}/">Cities</a></h3>
            <ul class="buttons">
              <xsl:if test="$continent">
                <li class="add"><a href="{$cities-path}/{$continent}/{$country}/{$region}/add/">Add</a></li>
              </xsl:if>
            </ul>
          </div>
          <div class="list-box-fluid">
            <ul class="tasks-list">
              <xsl:for-each select="/data/feature-cities/country/entry">
                <xsl:call-template name="feature-cities-list"/>
              </xsl:for-each>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</xsl:template>
  
</xsl:stylesheet>