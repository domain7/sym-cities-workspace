<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output
	method="xml" 
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" 
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8" 
	indent="yes" />

<xsl:template match="/">
	<xsl:param name="section-title">
		<xsl:choose>
			<xsl:when test="$section">
				<xsl:value-of select="data/sections/entry[@handle=$section]/fields/title"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$page-title"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:param>
	<html>
		<head>
			<title><xsl:value-of select="$website-name"/> - <xsl:value-of select="$section-title"/></title>
			<link rel="stylesheet" type="text/css" href="{$workspace}/assets/css/public.css"/>
			<link rel="alternate stylesheet" type="text/css" href="{$workspace}/assets/css/fixed-width.css" title="fixed-width" />
			<link rel="alternate stylesheet" type="text/css" href="{$workspace}/assets/css/fixed-narrow.css" title="fixed-narrow" />
			<script type="text/javascript" src="{$workspace}/assets/scripts/styleswitch.js">
<xsl:comment>
/***********************************************
* Style Sheet Switcher v1.1- © Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/
</xsl:comment>
			</script>
		</head>
		<body>
			<div id="header">
				<div class="box">
					<h1><a href="/">The <strong>Design</strong> Administration</a></h1>
				</div>
			</div>
			<div id="navigation">
				<div class="box">
					<ul class="main">
						<xsl:for-each select="data/sections/entry[fields/menu/@handle='main']">
							<xsl:sort select="fields/sort"/>
							<li>
								<xsl:if test="@handle=$current-page">
									<xsl:attribute name="class">
										<xsl:text>current</xsl:text>
									</xsl:attribute>
								</xsl:if>
								<a>
									<xsl:choose>
										<xsl:when test="@handle='home'">
											<xsl:attribute name="href"><xsl:value-of select="$root"/>/</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href"><xsl:value-of select="$root"/>/<xsl:value-of select="@handle"/>/</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:value-of select="fields/title"/>
								</a>
							</li>
						</xsl:for-each>
					</ul>
					<ul class="content">
						<xsl:for-each select="data/sections/entry[fields/menu/@handle='content']">
							<xsl:sort select="fields/sort"/>
							<li>
								<xsl:if test="@handle=$section">
									<xsl:attribute name="class">
										<xsl:text>current</xsl:text>
									</xsl:attribute>
								</xsl:if>
								<a href="{$root}/content/{@handle}/"><xsl:value-of select="fields/title"/></a>
							</li>
						</xsl:for-each>
					</ul>
				</div>
			</div>
			<div id="page">
				<div class="box">
				<xsl:apply-templates/>
				</div>
			</div>
			<div id="footer">
				<div class="box">
					<form id="switchform">
						<select name="switchcontrol" size="1" onChange="chooseStyle(this.options[this.selectedIndex].value, 60)">
							<option value="none" selected="selected">Full Width</option>
							<option value="fixed-width">Fixed Width</option>
							<option value="fixed-narrow">Fixed Width - Narrow</option>
						</select>
					</form>
					<ul>
						<li class="copyright">&#169; Copyright 2007 <a href="http://bauhouse.ca/">Bauhouse Design</a></li>
						<li>Powered by <a href="http://www.symphony21.com/">Symphony</a></li>
					</ul>
				</div>
			</div>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>