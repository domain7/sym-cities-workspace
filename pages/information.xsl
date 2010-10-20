<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/default.xsl"/>

<xsl:param name="parent-page" select="''" />
<xsl:param name="page-content" select="/data/corporate-information/entry" />

<xsl:template match="data">
	<div class="main">
		<div class="col-a">
			<div class="sectionmenu">
				<xsl:for-each select="sections/navigation[@link-handle = 'main']/entry">
					<xsl:sort select="sort"/>
					<xsl:call-template name="secondary-navigation">
						<xsl:with-param name="page-content" select="$page-content"/>
					</xsl:call-template>
				</xsl:for-each>
			</div>
		</div>
		<div class="col-bcd">
			<h2>
				<a href="{$root}/{$current-page}/"><xsl:value-of select="section/entry/heading"/></a>
			</h2>
			<div class="articles">
				<xsl:choose>
					<xsl:when test="$content">
						<xsl:for-each select="$page-content[url = $content or title/@handle = $content]">
							<xsl:call-template name="article"/>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<xsl:for-each select="$page-content">
							<xsl:call-template name="article-description"/>
						</xsl:for-each>
					</xsl:otherwise>
				</xsl:choose>
			</div>
		</div>
	</div>
</xsl:template>

<xsl:template name="article-description">
	<div class="article">
		<h4><a href="{$root}/{$current-page}/{title/@handle}/" title="{heading}"><xsl:value-of select="title"/></a></h4>
		<xsl:copy-of select="description/*"/>
		<p class="morelink"><a href="{$root}/{$current-page}/{title/@handle}/">Read More</a></p>
	</div>
</xsl:template>
	
<xsl:template name="article">
	<div class="article">
		<h4><a href="{$root}/{$current-page}/{title/@handle}/" title="{heading}"><xsl:value-of select="title"/></a></h4>
		<xsl:copy-of select="description/*"/>
		<xsl:copy-of select="body/*"/>
	</div>
</xsl:template>
	
</xsl:stylesheet>