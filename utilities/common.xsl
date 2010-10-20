<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="page-title">
  <xsl:choose>
    <xsl:when test="$current-page = 'home'"></xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="/data/sections/navigation/entry[url/@handle = $current-page]/heading"/>
	  <xsl:text> - </xsl:text>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:value-of select="$website-name"/>
</xsl:template>

<xsl:template name="page-header">
  <head>
    <title><xsl:call-template name="page-title"/></title>
    <meta name="keywords" content="travel destinations" />
    <meta name="description" content="Publish cities and destinations with Symphony CMS" />
    <style type="text/css" media="screen"><xsl:value-of select="concat('@import url(',$root,'/workspace/assets/css/site.css);')"/></style>
  </head>
</xsl:template>

<xsl:template name="page-footer">
  <div class="footer">
    <p>&#169; <xsl:value-of select="$this-year"/><xsl:text> </xsl:text>
    <a href="{$root}/information/about/"><xsl:value-of select="$website-name"/></a> 
    | <a href="{$root}/information/contacts/" title="Contact Information">Contact</a> 
    | <a href="{$root}/information/privacy/" title="Online Privacy Policy">Privacy</a></p>
  </div>
</xsl:template>

</xsl:stylesheet>