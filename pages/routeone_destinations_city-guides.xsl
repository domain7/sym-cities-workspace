<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/routeone-layout.xsl"/>
<xsl:import href="../utilities/html-manipulation.xsl"/>
<xsl:import href="../utilities/publish-destinations.xsl"/>

<xsl:param name="parent-page" select="'destinations'" />
<xsl:param name="this-path" select="concat($root,'/routeone/',$parent-page,'/',$current-page)"/>
<xsl:param name="destinations-path" select="concat($root,'/routeone/destinations')"/>
<xsl:param name="continents-path" select="concat($root,'/routeone/destinations/continents')"/>
<xsl:param name="countries-path" select="concat($root,'/routeone/destinations/countries')"/>
<xsl:param name="regions-path" select="concat($root,'/routeone/destinations/regions')"/>
<xsl:param name="cities-path" select="concat($root,'/routeone/destinations/cities')"/>
<xsl:param name="city-guides-path" select="concat($root,'/routeone/destinations/city-guides')"/>
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
<xsl:param name="previous-path" select="concat($cities-path,$selected-path)"/>
<xsl:param name="next-path" select="concat($city-guides-path,$selected-path)"/>
<xsl:param name="continents-list" select="/data/continents/entry"/>
<xsl:param name="countries-list" select="/data/countries/entry"/>
<xsl:param name="regions-list" select="/data/regions/entry"/>
<xsl:param name="cities-list" select="/data/cities-list/entry"/>
<xsl:param name="city-guides" select="/data/city-guides/entry"/>
<xsl:param name="articles-list" select="/data/articles/guide/entry"/>
<xsl:param name="countries-by-continent" select="/data/countries-by-continent/entry"/>
<xsl:param name="this-country" select="/data/country-iso-codes/country[translate(iso-code,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz') = $country]"/>
<xsl:param name="continent-info" select="/data/continent/entry"/>
<xsl:param name="country-info" select="/data/country/entry"/>
<xsl:param name="region-info" select="/data/region/entry"/>
<xsl:param name="city-info" select="/data/city/entry"/>
<xsl:param name="city-guide" select="/data/city-guide/entry"/>
<xsl:param name="article-details" select="/data/article/entry"/>

<xsl:template match="data">
  <div id="box-content">
    <div id="content" class="content-3col-overview">
      <ul class="nav-buttons">
        <li class="previous"><a href="{$previous-path}" title="Continents">Continents</a></li>
        <li class="next"><a href="{$next-path}" title="Regions">Regions</a></li>
      </ul>
      <h2>
        <xsl:choose>
          <xsl:when test="$city">
            <a href="{$this-path}/"><xsl:value-of select="$page-title"/></a>
            <xsl:text> : </xsl:text>
            <a href="{$this-path}/{$city}/"><xsl:value-of select="$city-info/city"/></a>
          </xsl:when>
          <xsl:otherwise>
            <a href="{$this-path}/"><xsl:value-of select="$page-title"/></a>
          </xsl:otherwise>
        </xsl:choose>
      </h2>
      <div class="colA">
        <div class="lists">
          <div class="tasks-box">
            <div class="box-header">
              <h3><a href="{$next-path}">City Guides</a></h3>
              <!-- ul class="buttons">
                <xsl:if test="$continent">
                  <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/add/">Add</a></li>
                </xsl:if>
              </ul -->
            </div>
            <div class="list-box">
              <xsl:if test="$city">
                <ul class="projects-list">
                  <xsl:for-each select="$city-guides">
                    <li>
                      <a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{guide/@handle}/" title="View {guide} Guide">
                        <xsl:if test="guide/@handle = $guide">
                          <xsl:attribute name="class">current</xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="guide"/>
                      </a>
                    </li>
                  </xsl:for-each>
                </ul>
              </xsl:if>
            </div>
          </div>
        </div>
      </div>
      <div class="colB">
        <div class="lists">
          <div class="tasks-box">
            <div class="box-header">
              <h3><a href="{$next-path}">Articles</a></h3>
              <ul class="buttons">
                <xsl:if test="$continent">
                  <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/add/">Add</a></li>
                </xsl:if>
              </ul>
            </div>
            <div class="list-box">
              <ul class="tasks-list">
                <xsl:for-each select="$articles-list[../@handle = $guide]">
                  <li>
                    <a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/{title/@handle}/" title="View Article">
                      <xsl:if test="title/@handle = $article">
                        <xsl:attribute name="class">current</xsl:attribute>
                      </xsl:if>
                      <xsl:value-of select="title"/>
                    </a>
                  </li>
                </xsl:for-each>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="colC">
        <div class="proposal">
          <xsl:choose>
            <xsl:when test="$action">
              <xsl:choose>
                <xsl:when test="$action = 'edit' or $action = 'copy'">
                  <xsl:for-each select="$article-details">
                    <xsl:call-template name="publish-article"/>
                  </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="article-details"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$article">
              <xsl:choose>
                <xsl:when test="$article = 'add'">
                  <xsl:call-template name="publish-article"/>
                </xsl:when>
                <xsl:when test="$article = 'edit' or $article = 'copy'">
                  <xsl:for-each select="$city-guide">
                    <xsl:call-template name="publish-city-guide"/>
                  </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="article-details"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$guide">
              <xsl:choose>
                <xsl:when test="$guide = 'add'">
                  <xsl:call-template name="publish-city-guide"/>
                </xsl:when>
                <xsl:when test="$guide = 'edit' or $guide = 'copy'">
                  <xsl:for-each select="$city-info">
                    <xsl:call-template name="publish-city"/>
                  </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="city-guide-details"/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$city">
              <xsl:call-template name="city-details"/>
            </xsl:when>
            <xsl:otherwise>
              <div class="box-header">
                <h3><a href="{$cities-path}/">Select a City</a></h3>
              </div>
              <div class="list-box-fluid content">
                <div class="content-body">
                  <h2><a href="{$cities-path}/">Select a City</a></h2>
                  <p>To view, edit or add a destination, please <a href="{$cities-path}/">select a destination</a>.</p>
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