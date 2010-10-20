<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/common.xsl"/>
<xsl:import href="../utilities/system-navigation.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:output
	method="xml" 
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" 
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8" 
	indent="yes" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>
<xsl:variable name="name" select="/data/events/login-info/name"/>
<xsl:variable name="username" select="/data/events/login-info/username"/>
<xsl:variable name="user-type" select="/data/events/login-info/@user-type"/>
<xsl:variable name="user-id" select="/data/events/login-info/@id"/>

<xsl:template match="/">
	<html>
		<xsl:call-template name="page-header"/>
		<body>
			<xsl:attribute name="id"><xsl:value-of select="$current-page"/></xsl:attribute>
			<div class="wrap">
				<div class="header">
					<h2>
						<a href="{$root}/" title="Home"><xsl:value-of select="$website-name"/></a>
					</h2>
				</div>
				<ul class="menu">
					<xsl:for-each select="data/sections/navigation[@link-handle='main']/entry">
						<xsl:call-template name="main-navigation"/>
					</xsl:for-each>
				</ul>
			</div>
			<div class="container">
				<div class="content">
					<xsl:apply-templates/>
				</div>
				<xsl:call-template name="page-footer"/>
			</div>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>