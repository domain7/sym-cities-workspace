<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="navigation">
  <xsl:apply-templates select="page[not(types/type = 'hidden')]"/>
</xsl:template>

<xsl:template name="main-navigation">
  <xsl:param name="url">
    <xsl:choose>
      <xsl:when test="substring(url,1,4) = 'http'">
        <xsl:value-of select="url"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="concat($root,'/',url,'/')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <li>
    <xsl:if test="url/@handle = $current-page">
      <xsl:attribute name="class">active</xsl:attribute>
    </xsl:if>
    <a href="{$url}" title="{heading}">
      <xsl:value-of select="title"/>
    </a>
  </li>
</xsl:template>

<xsl:template name="secondary-navigation">
  <xsl:param name="page-content"/>
  <xsl:param name="url">
    <xsl:choose>
      <xsl:when test="substring(url,1,4) = 'http'">
        <xsl:value-of select="url"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="concat($root,'/',url,'/')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <li class="{url/@handle}">
    <a href="{$url}" title="{description}">
      <xsl:if test="url/@handle = $current-page">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="heading"/>
    </a>
    <xsl:if test="$page-content and url/@handle = $current-page">
      <ul>
        <xsl:for-each select="$page-content">
          <li>
            <a href="{$root}/{$current-page}/{title/@handle}/">
              <xsl:if test="title/@handle = $content">
                <xsl:attribute name="class">current</xsl:attribute>
              </xsl:if>
              <xsl:if test="$current-page = 'tours'">
                <xsl:if test="title/@handle = $destination">
                  <xsl:attribute name="class">current</xsl:attribute>
                </xsl:if>
              </xsl:if>
              <xsl:value-of select="title"/>
            </a>
          </li>
        </xsl:for-each>
      </ul>
    </xsl:if>
    <xsl:if test="$current-page = 'destinations' and url/@handle = 'destinations'">
      <xsl:call-template name="list-cities-by-continent"/>
    </xsl:if>
    <xsl:if test="$current-page = 'guides' and url/@handle = 'guides'">
      <xsl:call-template name="list-city-guides"/>
    </xsl:if>
    <xsl:if test="$current-page = 'tours' and url/@handle = 'tours'">
      <xsl:call-template name="list-tour-cities"/>
    </xsl:if>
    <xsl:if test="$current-page = 'tours-de' and url/@handle = 'tours'">
      <xsl:call-template name="list-tour-cities"/>
    </xsl:if>
  </li>
</xsl:template>

</xsl:stylesheet>