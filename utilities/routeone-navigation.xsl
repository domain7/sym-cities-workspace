<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="routeone-navigation">
  <xsl:apply-templates select="page[not(types/type = 'hidden')]"/>
</xsl:template>

<xsl:template match="page">
  <li>
    <xsl:if test="(@handle = $current-page and $parent-page = '') or (@handle = $parent-page and page/@handle = $current-page) or (@handle = $parent-page and page/page/@handle = $current-page)">
      <xsl:attribute name="class">current</xsl:attribute>
    </xsl:if>
    <a href="{$root}/routeone/{@handle}/">
      <xsl:value-of select="name"/>
    </a>
  </li>
</xsl:template>

<xsl:template match="page/page">
  <li>
    <xsl:choose>
      <xsl:when test="$parent-page = ''">
        <a href="{$root}/routeone/{$current-page}/{@handle}/">
          <xsl:value-of select="name"/>
        </a>
      </xsl:when>
      <xsl:when test="@handle = $current-section">
        <xsl:attribute name="class">current</xsl:attribute>
        <a href="{$root}/routeone/{$parent-page}/{@handle}/">
          <xsl:value-of select="name"/>
        </a>
      </xsl:when>
      <xsl:otherwise>
        <xsl:if test="@handle = $current-page">
          <xsl:attribute name="class">current</xsl:attribute>
        </xsl:if>
        <a href="{$root}/routeone/{$parent-page}/{@handle}/">
          <xsl:value-of select="name"/>
        </a>
      </xsl:otherwise>
    </xsl:choose>
  </li>
</xsl:template>

<xsl:template name="secondary-navigation">
  <xsl:choose>
    <xsl:when test="$parent-page = ''">
      <xsl:apply-templates select="data/routeone-navigation/page[@handle=$current-page]/page[not(types/type = 'hidden')]"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:apply-templates select="data/routeone-navigation/page[@handle=$parent-page]/page[not(types/type = 'hidden')]"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

</xsl:stylesheet>