<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/default.xsl"/>

<xsl:param name="parent-page" select="''" />
<xsl:param name="destinations" select="/data/destinations/entry" />
<xsl:param name="guides-by-city" select="/data/guides-by-city/guide/entry" />
<xsl:param name="articles-by-city-guide" select="/data/articles-by-city-guide/guide/entry" />
<xsl:param name="feature-city" select="/data/feature-city/entry" />
<xsl:param name="feature-region" select="/data/feature-region/entry" />
<xsl:param name="feature-country" select="/data/feature-country/entry" />
<xsl:param name="feature-continent" select="/data/feature-continent/entry" />
<xsl:param name="feature-cities" select="/data/feature-cities/country/entry" />
<xsl:param name="feature-regions" select="/data/feature-regions/country/entry" />
<xsl:param name="feature-countries" select="/data/feature-countries/continent/entry" />
<xsl:param name="feature-continents" select="/data/feature-continents/entry" />
<xsl:param name="destination-lc" select="translate($destination,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')"/>

<xsl:template match="data">
  <div class="main">
    <div class="col-a">
      <div class="sectionmenu">
        <ul class="traveltools">
          <xsl:for-each select="sections/navigation[@link-handle = 'main']/entry">
            <xsl:sort select="sort"/>
            <xsl:call-template name="secondary-navigation"/>
          </xsl:for-each>
        </ul>
      </div>
    </div>
    <div class="col-bcd">
      <h2>
        <xsl:choose>
          <xsl:when test="$guide">
            <a href="{$root}/{$current-page}/">
              <xsl:value-of select="$feature-city/city"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="/data/city-guide/entry/guide"/>
            </a>
          </xsl:when>
          <xsl:otherwise>
            <a href="{$root}/{$current-page}/"><xsl:value-of select="section/entry/heading"/></a>
          </xsl:otherwise>
        </xsl:choose>
      </h2>
      <div class="articles">
        <xsl:choose>
          <xsl:when test="$guide">
            <p class="info">
              <a href="{$root}/guides/">City Guides</a>
              <xsl:text> &gt; </xsl:text>
              <a href="{$root}/guides/{$destination}/"><xsl:value-of select="$feature-city/city"/></a>
              <xsl:text> &gt; </xsl:text>
              <a href="{$root}/guides/{$destination}/{$guide}/"><xsl:value-of select="/data/guides-by-city/guide[@handle=$guide]/@value"/></a>
              <xsl:if test="$article">
                <xsl:text> &gt; </xsl:text>
                <a href="{$root}/guides/{$destination}/{$guide}/{$article}/"><xsl:value-of select="/data/articles-by-city-guide/guide/entry[title/@handle = $article]/title"/></a>
              </xsl:if>
              <xsl:if test="$is-logged-in">
                <xsl:text> | </xsl:text>
                <a href="{$root}/routeone/destinations/city-guides/{$feature-city/continent/item/@handle}/{$feature-city/country/@link-handle}/{$feature-city/region/item/@handle}/{$destination}/{$guide}/">
                  <xsl:if test="$article">
                      <xsl:attribute name="href"><xsl:value-of select="concat($root,'/routeone/destinations/city-guides/',$feature-city/continent/item/@handle,'/',$feature-city/country/@link-handle,'/',$feature-city/region/item/@handle,'/',$destination,'/',$guide,'/',$article,'/')"/></xsl:attribute>
                  </xsl:if>
                Edit</a>
              </xsl:if>
            </p>
            <div class="article">
                <xsl:choose>
                    <xsl:when test="$article">
                      <xsl:for-each select="/data/articles-by-city-guide/guide/entry[title/@handle = $article]">
                        <xsl:call-template name="article"/>
                      </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:choose>
                        <xsl:when test="/data/articles-by-city-guide/guide/entry[2]">
                          <xsl:for-each select="/data/articles-by-city-guide/guide/entry">
                            <xsl:call-template name="article-description"/>
                          </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:for-each select="/data/articles-by-city-guide/guide/entry">
                            <xsl:call-template name="article"/>
                          </xsl:for-each>
                        </xsl:otherwise>
                      </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </div>
          </xsl:when>
          <xsl:when test="$destination-lc = $feature-city/city/@handle">
            <xsl:for-each select="$feature-city">
              <xsl:sort select="region/item"/>
              <xsl:call-template name="feature-city"/>
            </xsl:for-each>
          </xsl:when>
          <xsl:when test="$destination-lc = $feature-region/name/@handle">
            <xsl:for-each select="$feature-region">
              <xsl:call-template name="feature-region"/>
            </xsl:for-each>
          </xsl:when>
          <xsl:when test="$destination-lc = $feature-country/name/@handle">
            <xsl:for-each select="$feature-country">
              <xsl:call-template name="feature-country"/>
            </xsl:for-each>
          </xsl:when>
          <xsl:when test="$destination-lc = $feature-continent/name/@handle">
            <xsl:for-each select="$feature-continent">
              <xsl:call-template name="feature-continent"/>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
            <xsl:choose>
              <xsl:when test="$destination">
                <xsl:for-each select="$destinations[url = $destination or title/@handle = $destination]">
                  <xsl:call-template name="article"/>
                </xsl:for-each>
              </xsl:when>
              <xsl:otherwise>
                <h3>Accommodations and Dining to Entertainment and Events</h3>
                <xsl:for-each select="$feature-cities">
                  <xsl:sort select="city"/>
                  <xsl:call-template name="feature-city">
                    <xsl:with-param name="excerpt" select="'yes'"/>
                  </xsl:call-template>
                </xsl:for-each>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:otherwise>
        </xsl:choose>
      </div>
    </div>
  </div>
</xsl:template>

<xsl:template name="article-description">
  <div class="article">
    <h4><a href="{$root}/{$current-page}/{$destination}/{$guide}/{title/@handle}/" title="{heading}"><xsl:value-of select="title"/></a></h4>
    <xsl:copy-of select="description/*"/>
    <xsl:if test="body/* or address/* or phone">
      <p class="morelink"><a href="{$root}/{$current-page}/{$destination}/{$guide}/{title/@handle}/">More Details</a></p>
    </xsl:if>
  </div>
</xsl:template>
  
<xsl:template name="article">
    <h4><a href="{$root}/{$current-page}/{$destination}/{$guide}/{title/@handle}/" title="{heading}"><xsl:value-of select="title"/></a></h4>
    <xsl:copy-of select="description/*"/>
    <xsl:copy-of select="body/*"/>
    <xsl:if test="location">
      <h6><xsl:value-of select="location"/></h6>
    </xsl:if>
    <xsl:if test="address/*">
      <xsl:copy-of select="address/*"/>
    </xsl:if>
    <xsl:if test="open/*">
      <h6>Open</h6>
      <xsl:copy-of select="open/*"/>
    </xsl:if>
    <ul>
      <xsl:if test="phone"><li><strong>Phone</strong><xsl:text>: </xsl:text><xsl:value-of select="phone"/></li></xsl:if>
      <xsl:if test="admission = 'Yes'"><li><strong>Admission Charged</strong></li></xsl:if>
      <xsl:if test="tags/item">
        <li>
          <strong>Tags</strong><xsl:text>: </xsl:text>
          <xsl:for-each select="tags/item">
            <xsl:value-of select="."/>
            <xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
          </xsl:for-each>
        </li>
      </xsl:if>
    </ul>
</xsl:template>
  
<xsl:template name="feature-continent">
  <xsl:param name="continent-id" select="@id"/>
  <xsl:param name="continent-name" select="name"/>
  <xsl:param name="continent-handle" select="name/@handle"/>
  <xsl:param name="continent-code" select="continent/@handle"/>
  <div class="article">
    <h4><a href="{$root}/{$current-page}/{$continent-handle}/" title="{$continent-name}"><xsl:value-of select="$continent-name"/></a></h4>
    <xsl:if test="$is-logged-in">
      <p class="info">
        <a href="{$root}/destinations/{$continent-handle}/" title="Continent"><xsl:value-of select="$continent-name"/></a>
        | <a href="{$root}/routeone/destinations/continents/{$continent-code}/edit/" title="Edit this entry">Edit</a>
      </p>
    </xsl:if>
    <xsl:copy-of select="description/*"/>
    <xsl:copy-of select="body/*"/>
  </div>
</xsl:template>
  
<xsl:template name="feature-country">
  <xsl:param name="country-id" select="@id"/>
  <xsl:param name="country-code" select="country/@handle"/>
  <xsl:param name="country-name" select="name"/>
  <xsl:param name="country-handle" select="name/@handle"/>
  <xsl:param name="continent-code" select="continent/@link-handle"/>
  <xsl:param name="continent-id" select="continent/@link-id"/>
  <xsl:param name="continent-name" select="$feature-continents[@id = $continent-id]/name"/>
  <xsl:param name="continent-handle" select="$continent-name/@handle"/>
  <div class="article">
    <h4><a href="{$root}/{$current-page}/{$country-handle}/" title="{$country-name}"><xsl:value-of select="name"/></a></h4>
    <p class="info">
      <a href="{$root}/destinations/{$continent-handle}/" title="Continent"><xsl:value-of select="$continent-name"/></a>
      <xsl:if test="$is-logged-in">
        | <a href="{$root}/routeone/destinations/countries/{$continent-code}/{$country-code}/edit/" title="Edit this country">Edit</a>
      </xsl:if>
    </p>
    <xsl:copy-of select="description/*"/>
    <xsl:copy-of select="body/*"/>
  </div>
</xsl:template>
  
<xsl:template name="feature-region">
  <xsl:param name="region-code" select="region/@handle"/>
  <xsl:param name="country-id" select="country/item/@id"/>
  <xsl:param name="country-code" select="country/item/@handle"/>
  <xsl:param name="country-name" select="$feature-countries[@id = $country-id]/name"/>
  <xsl:param name="country-handle" select="$country-name/@handle"/>
  <xsl:param name="continent-code" select="continent/item/@handle"/>
  <xsl:param name="continent-id" select="$feature-continents[continent/@handle = $continent-code]"/>
  <xsl:param name="continent-name" select="$continent-id/name"/>
  <xsl:param name="continent-handle" select="$continent-name/@handle"/>
  <div class="article">
    <h4>
      <a href="{$root}/{$current-page}/{region/@handle}/" title="{name}, {$country-name}"><xsl:value-of select="name"/>
      <xsl:text>, </xsl:text> 
      <xsl:choose>
        <xsl:when test="$country-name = 'United States'">USA</xsl:when>
        <xsl:otherwise><xsl:value-of select="$country-name"/></xsl:otherwise>
      </xsl:choose>
      </a>
    </h4>
    <p class="info"> 
      <a href="{$root}/destinations/{$country-handle}/" title="Country"><xsl:value-of select="$country-name"/></a>
      | <a href="{$root}/destinations/{$continent-handle}/" title="Continent"><xsl:value-of select="$continent-name"/></a>
      <xsl:if test="$is-logged-in">
        | <a href="{$root}/routeone/destinations/regions/{$continent-code}/{$country-code}/{$region-code}/edit/" title="Edit this region">Edit</a>
      </xsl:if>
      </p>
    <xsl:copy-of select="description/*"/>
    <xsl:copy-of select="body/*"/>
  </div>
</xsl:template>
  
<xsl:template name="feature-city">
  <xsl:param name="excerpt" select="'no'"/>
  <xsl:param name="region-code" select="region/item/@handle"/>
  <xsl:param name="region-name" select="$feature-regions[region/@handle = $region-code]/name"/>
  <xsl:param name="region-handle" select="$region-name/@handle"/>
  <xsl:param name="country-id" select="country/item/@id"/>
  <xsl:param name="country-code" select="country/item/@handle"/>
  <xsl:param name="country-name" select="$feature-countries[@id = $country-id]/name"/>
  <xsl:param name="country-handle" select="$country-name/@handle"/>
  <xsl:param name="continent-code" select="continent/item/@handle"/>
  <xsl:param name="continent-id" select="$feature-continents[continent/@handle = $continent-code]"/>
  <xsl:param name="continent-name" select="$continent-id/name"/>
  <xsl:param name="continent-handle" select="$continent-name/@handle"/>
  <div class="article">
    <h4><a href="{$root}/{$current-page}/{city/@handle}/" title="{city}"><xsl:value-of select="city"/><xsl:text>, </xsl:text><xsl:value-of select="$region-name"/></a></h4>
    <p class="info">
      <a href="{$root}/destinations/{$region-handle}/" title="Region"><xsl:value-of select="$region-name"/></a> 
      | <a href="{$root}/destinations/{$country-handle}/" title="Country"><xsl:value-of select="$country-name"/></a>
      | <a href="{$root}/destinations/{$continent-handle}/" title="Continent"><xsl:value-of select="$continent-name"/></a>
      <xsl:if test="$is-logged-in">
        | <a href="{$root}/routeone/destinations/cities/{$continent-code}/{$country-code}/{$region-code}/{city/@handle}/edit/" title="Edit this city">Edit</a>
      </xsl:if>
    </p>
    <xsl:copy-of select="description/*"/>
    <xsl:choose>
      <xsl:when test="$excerpt = 'yes'">
        <p class="morelink"><a href="{$root}/{$current-page}/{city/@handle}/">Destination Guide</a></p>
      </xsl:when>
      <xsl:otherwise>
        <xsl:copy-of select="body/*"/>
      </xsl:otherwise>
    </xsl:choose>
  </div>
</xsl:template>
  
<xsl:template name="list-cities-by-continent">
  <ul>
    <xsl:for-each select="$feature-continents[continent = $feature-cities/continent/item]">
      <xsl:call-template name="feature-continents"/>
    </xsl:for-each>
  </ul>
</xsl:template>

<xsl:template name="list-cities-by-country">
  <ul>
    <xsl:for-each select="$feature-countries">
      <xsl:sort select="@link-handle"/>
      <xsl:call-template name="feature-countries"/>
    </xsl:for-each>
  </ul>
</xsl:template>

<xsl:template name="feature-continents">
  <xsl:param name="continent-id" select="@id"/>
  <xsl:param name="continent-code" select="continent/@handle"/>
  <xsl:param name="continent-handle" select="name/@handle"/>
  <xsl:param name="continent-name" select="name"/>
  <li>
    <a href="{$root}/{$current-page}/{$continent-handle}/" title="{$continent-name}">
      <xsl:if test="$continent-handle = $destination">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="$continent-name"/>
    </a>
    <ul>
      <xsl:for-each select="$feature-countries[../@link-id = $continent-id]">
        <xsl:call-template name="feature-countries"/>
      </xsl:for-each>
    </ul>
  </li>
</xsl:template>
  
<xsl:template name="feature-countries">
  <xsl:param name="country-id" select="@id"/>
  <xsl:param name="country-code" select="country/@handle"/>
  <xsl:param name="country-handle" select="name/@handle"/>
  <xsl:param name="country-name" select="name"/>
  <li>
    <a href="{$root}/{$current-page}/{$country-handle}/" title="{$country-name}">
      <xsl:if test="$country-handle = $destination">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="$country-name"/>
    </a>
    <ul>
      <xsl:for-each select="$feature-regions[../@link-id = $country-id]">
        <xsl:call-template name="feature-regions"/>
      </xsl:for-each>
    </ul>
  </li>
</xsl:template>

<xsl:template name="feature-regions">
  <xsl:param name="region-id" select="@id"/>
  <xsl:param name="region-code" select="region/@handle"/>
  <xsl:param name="region-handle" select="name/@handle"/>
  <xsl:param name="region-name" select="name"/>
  <xsl:param name="city-region-id" select="$feature-cities[city/@handle = $destination]/region/item/@handle"/>
  <li>
    <xsl:if test="$region-handle = $destination or $region-id = $city-region-id">
      <xsl:attribute name="class">current</xsl:attribute>
    </xsl:if>
    <a href="{$root}/{$current-page}/{$region-handle}/" title="{$region-name}">
      <xsl:if test="$region-handle = $destination">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="name"/>
    </a>
    <ul>
      <xsl:for-each select="$feature-cities[region/item/@handle = $region-code]">
        <xsl:call-template name="feature-cities"/>
      </xsl:for-each>
    </ul>
  </li>
</xsl:template>

<xsl:template name="feature-cities">
  <xsl:param name="city-handle" select="city/@handle"/>
  <xsl:param name="city-name" select="city"/>
  <xsl:param name="region-id" select="region/item/@handle"/>
  <xsl:param name="region-info" select="$feature-regions[region/@handle = $region-id]"/>
  <xsl:param name="region-name" select="$region-info/name"/>
  <li>
    <a href="{$root}/{$current-page}/{$city-handle}/" title="{$city-name}, {$region-name}">
      <xsl:if test="$city-handle = $destination">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="$city-name"/>
    </a>
  </li>
</xsl:template>

<xsl:template name="list-city-guides">
  <xsl:choose>
    <xsl:when test="$destination">
      <ul>
        <xsl:for-each select="$feature-city">
          <li><a href="{$root}/{$current-page}/{$destination}/" class="current"><xsl:value-of select="city"/></a>
            <xsl:if test="/data/guides-by-city/guide/*">
            <ul>
              <xsl:for-each select="/data/guides-by-city/guide[@handle = 'introduction']">
                <li>
                <a href="{$root}/{$current-page}/{$destination}/{@handle}/" title="{@value}">
                  <xsl:if test="$guide = @handle">
                  <xsl:attribute name="class">current</xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="@value"/>
                </a>
                </li>
              </xsl:for-each>
              <xsl:for-each select="/data/guides-by-city/guide[@handle != 'introduction']">
                <xsl:sort select="@handle"/>
                <li>
                <a href="{$root}/{$current-page}/{$destination}/{@handle}/" title="{@value}">
                  <xsl:if test="$guide = @handle">
                  <xsl:attribute name="class">current</xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="@value"/>
                </a>
                </li>
              </xsl:for-each>
            </ul>
            </xsl:if>
          </li>
        </xsl:for-each>
      </ul>
    </xsl:when>
    <xsl:otherwise>
      <ul>
        <xsl:for-each select="$feature-cities">
          <xsl:sort select="city"/>
          <li><a href="{$root}/{$current-page}/{city/@handle}/"><xsl:value-of select="city"/></a></li>
        </xsl:for-each>
      </ul>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>



</xsl:stylesheet>