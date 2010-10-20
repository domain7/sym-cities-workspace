<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/routeone-common.xsl"/>
<xsl:import href="../utilities/system-navigation.xsl"/>
<xsl:import href="../utilities/routeone-navigation.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:output
  method="xml" 
  doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" 
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
  omit-xml-declaration="yes"
  encoding="UTF-8" 
  indent="no" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>
<xsl:variable name="name" select="/data/events/login-info/name"/>
<xsl:variable name="username" select="/data/events/login-info/username"/>
<xsl:variable name="user-type" select="/data/events/login-info/@user-type"/>
<xsl:variable name="user-id" select="/data/events/login-info/@id"/>

<xsl:param name="current-section"/>

<xsl:template match="/">
  <html>
    <xsl:call-template name="routeone-page-header"/>
    <body id="section-overview" class="projects">
      <xsl:if test="$username = 'stephen'">
        <xsl:call-template name="system-navigation"/>
      </xsl:if>
      <div id="box">
        <div id="header">
          <div id="navigation" class="box">
            <h1>
              <a href="{$root}/routeone/" title="Home">Domain7</a>
            </h1>
            <xsl:if test="$is-logged-in">
              <ul id="primary">
                <xsl:apply-templates select="data/routeone-navigation"/>
                <li><a href="{$root}/">View Site</a></li>
              </ul>
            </xsl:if>
          </div>
        </div>
        <div id="subnav">
          <div class="box">
            <ul id="secondary">
              <xsl:call-template name="secondary-navigation"/>
              <ul id="tools" class="right">
                <xsl:choose>
                  <xsl:when test="$is-logged-in">
                    <li>
                      <a href="{$root}/symphony/system/authors/edit/{$user-id}/" title="Edit user profile"><xsl:value-of select="$name"/></a>
                    </li>
                    <li>
                      <a href="{$root}/symphony/logout/">Logout</a>
                    </li>
                  </xsl:when>
                  <xsl:otherwise>
                    <li>
                      <a href="{$root}/login/">Login</a>
                    </li>
                  </xsl:otherwise>
                </xsl:choose>
              </ul>
            </ul>
          </div>
        </div>
        <div id="page">
          <div class="box">
            <xsl:apply-templates/>
          </div>
        </div>
        <xsl:call-template name="routeone-page-footer"/>
      </div>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>