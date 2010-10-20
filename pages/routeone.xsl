<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/routeone-layout.xsl"/>

<xsl:param name="parent-page" select="''" />

<xsl:template match="data">
  <div id="box-content">
    <div id="content" class="content-3col-overview">
      <xsl:choose>
        <xsl:when test="$is-logged-in='true'">
          <h2>Logged In</h2>
          <h3>
            <xsl:for-each select="events/user[username = $username]">
              <xsl:text>Hello, </xsl:text>
              <xsl:value-of select="first-name"/>
              <xsl:text> </xsl:text>
              <xsl:value-of select="last-name"/>
            </xsl:for-each>
          </h3>
          <p>You are currently logged in as <strong><xsl:value-of select="$username"/></strong>, <xsl:value-of select="$user-type"/>.</p>
          <form action="{$root}/symphony/?page=/logout/" method="post">
            <p>To end your session, click on the logout button.</p>
            <input type="submit" class="submit" value="Logout"/>
          </form>
        </xsl:when>
        <xsl:otherwise>
          <h2>Login</h2>
          <xsl:choose>
            <xsl:when test="section = 'failed'">
              <h3 class="failure">Login Failed</h3>
            </xsl:when>
            <xsl:otherwise>
              <h3>Login Required</h3>
            </xsl:otherwise>
          </xsl:choose>
          <p>You will require a user name and password to access this Login Area. Please login.</p>
          <form action="{$root}/symphony/?page=/login/" method="post">
            <fieldset>
              <label>Username <input name="username" class="text"/></label>
              <label>Password <input name="password" class="text" type="password" /></label>
              <label class="checkbox"><input name="remember" type="checkbox" checked="checked" /> Remember me</label>
              <input name="action[login]" type="submit" class="submit" value="Login" />
              <input name="redirect" type="hidden" value="/routeone/" />
            </fieldset>
          </form>
        </xsl:otherwise>
      </xsl:choose>
    </div>
  </div>
</xsl:template>
  
</xsl:stylesheet>