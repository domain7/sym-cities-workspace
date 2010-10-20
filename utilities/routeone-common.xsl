<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="routeone-page-title">
  <xsl:value-of select="$page-title"/>
  <xsl:text> - </xsl:text>
  <xsl:value-of select="$website-name"/>
</xsl:template>

<xsl:template name="routeone-page-header">
  <head>
    <title><xsl:call-template name="routeone-page-title"/></title>
    <link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/routeone/all.css" media="all"/>
    <link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/routeone/print.css" media="print"/>
  </head>
</xsl:template>

<xsl:template name="routeone-page-footer">
  <div id="basebar">
    <div class="box">
      <div id="routeone">
        <h3><a href="{$root}/">RouteOne</a></h3>
        <p>Powered by <a href="http://www.domain7.com/">Domain7 Solutions</a> <br />
          1999-2008 Domain7 Solutions Inc.</p>
      </div>
    </div>
  </div>
  <div id="footer">
    <div class="box">
    </div>
  </div>
</xsl:template>

</xsl:stylesheet>