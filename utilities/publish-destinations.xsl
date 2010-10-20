<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="countries-by-continent">
  <xsl:for-each select="$countries-list">
    <xsl:sort select="name"/>
    <xsl:call-template name="countries-list"/>
  </xsl:for-each>
</xsl:template>
  
<xsl:template name="countries-list">
  <xsl:param name="continent" select="../@link-handle"/>
  <li>
    <a href="{$countries-path}/{$continent}/{country/@handle}/">
      <xsl:if test="country/@handle = $country">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="name"/>
    </a>
  </li>
</xsl:template>
  
<xsl:template name="feature-countries-list">
  <xsl:param name="continent" select="continent/item/@handle"/>
  <li>
    <a href="{$countries-path}/{$continent}/{country/@handle}/">
      <xsl:if test="country/@handle = $country">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="name"/>
    </a>
  </li>
</xsl:template>
  
<xsl:template name="regions-list">
  <li>
    <a href="{$regions-path}/{$continent}/{$country}/{region/@handle}/" title="View region">
      <xsl:if test="region/@handle = $region">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="name"/>
    </a>
  </li>
</xsl:template>

<xsl:template name="feature-regions-list">
  <li>
    <a href="{$regions-path}/{continent/item/@handle}/{country/item/@handle}/{region/@handle}/" title="View region">
      <xsl:if test="region/@handle = $region">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="name"/>
    </a>
  </li>
</xsl:template>

<xsl:template name="cities-list">
  <li>
    <a href="{$cities-path}/{$continent}/{$country}/{$region}/{city/@handle}/" title="View city">
      <xsl:if test="city/@handle = $city">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="city"/>
    </a>
  </li>
</xsl:template>

<xsl:template name="feature-cities-list">
  <li>
    <a href="{$cities-path}/{continent/item/@handle}/{country/item/@handle}/{region/item/@handle}/{city/@handle}/" title="{city}, {region/item}">
      <xsl:if test="city/@handle = $city">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="city"/>
    </a>
  </li>
</xsl:template>

<xsl:template name="continent-details">
  <xsl:for-each select="$continent-info">
    <div class="box-header">
      <h3><a href="{$this-path}/{$continent}/"><xsl:value-of select="name"/></a></h3>
      <ul class="buttons">
        <xsl:if test="$continent">
          <li class="edit"><a href="{$this-path}/{$continent}/edit/">Edit</a></li>
        </xsl:if>
      </ul>
    </div>
    <div class="list-box-fluid content">
      <div class="content-body">
        <h2><xsl:value-of select="name"/></h2>
        <xsl:copy-of select="description/*"/>
        <xsl:copy-of select="body/*"/>
        <ul>
          <li>Abbreviation: <strong><xsl:value-of select="continent"/></strong></li>
        </ul>
      </div>
    </div>
  </xsl:for-each>
</xsl:template>
  
<xsl:template name="country-details">
  <xsl:for-each select="$country-info">
    <div class="box-header">
      <h3>
        <a href="{$continents-path}/{$continent}/"><xsl:value-of select="$continent-info/name"/></a>
        <xsl:text> : </xsl:text>
        <a href="{$this-path}/{$continent}/{$country}/"><xsl:value-of select="name"/></a>
      </h3>
      <ul class="buttons">
        <xsl:if test="$continent">
          <li class="add"><a href="{$this-path}/{$continent}/{$country}/copy/">Copy</a></li>
          <li class="edit"><a href="{$this-path}/{$continent}/{$country}/edit/">Edit</a></li>
        </xsl:if>
      </ul>
    </div>
    <div class="list-box-fluid content">
      <div class="content-body">
        <h2><xsl:value-of select="name"/></h2>
        <xsl:copy-of select="description/*"/>
        <xsl:copy-of select="body/*"/>
        <ul>
          <li>Country Code: <strong><xsl:value-of select="country"/></strong></li>
          <xsl:if test="abbreviation"><li>Abbreviation: <strong><xsl:value-of select="abbreviation"/></strong></li></xsl:if>
          <xsl:if test="currency"><li>Currency: <strong><xsl:value-of select="currency"/></strong></li></xsl:if>
          <xsl:if test="geography/item">
            <li>
              <xsl:text>Geography: </xsl:text>
              <xsl:for-each select="geography/item">
                <strong><xsl:value-of select="."/></strong>
                <xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
              </xsl:for-each>
            </li>
          </xsl:if>
        </ul>
      </div>
    </div>
  </xsl:for-each>
</xsl:template>
  
<xsl:template name="region-details">
  <xsl:for-each select="$region-info">
    <div class="box-header">
      <h3>
        <a href="{$countries-path}/{$continent}/{$country}/"><xsl:value-of select="$country-info/name"/></a>
        <xsl:text> : </xsl:text>
        <a href="{$this-path}/{$continent}/{$country}/{$region}/"><xsl:value-of select="name"/></a>
      </h3>
    <ul class="buttons">
      <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/copy/">Copy</a></li>
      <li class="edit"><a href="{$this-path}/{$continent}/{$country}/{$region}/edit/">Edit</a></li>
    </ul>
    </div>
    <div class="list-box-fluid content">
      <div class="content-body">
        <h2><xsl:value-of select="name"/></h2>
        <xsl:copy-of select="description/*"/>
        <xsl:copy-of select="body/*"/>
        <ul>
          <li>Abbreviation: <strong><xsl:value-of select="region"/></strong></li>
          <li>Region Type: <strong><xsl:value-of select="type/item"/></strong></li>
          <xsl:if test="geography/item">
            <li>
              <xsl:text>Geography: </xsl:text>
              <xsl:for-each select="geography/item">
                <strong><xsl:value-of select="."/></strong>
                <xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
              </xsl:for-each>
            </li>
          </xsl:if>
        </ul>
      </div>
    </div>
  </xsl:for-each>
</xsl:template>
  
<xsl:template name="city-details">
  <xsl:for-each select="$city-info">
    <div class="box-header">
      <h3>
        <a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/"><xsl:value-of select="city"/></a>
        <xsl:text>, </xsl:text>
        <a href="{$regions-path}/{$continent}/{$country}/{$region}/" title="{$region-info/name}"><xsl:value-of select="$region-info/name"/></a>
      </h3>
      <ul class="buttons">
        <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/copy/">Copy</a></li>
        <li class="edit"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/edit/">Edit</a></li>
      </ul>
    </div>
    <div class="list-box-fluid content">
      <div class="content-body">
        <h2><xsl:value-of select="city"/></h2>
        <xsl:copy-of select="description/*"/>
        <xsl:copy-of select="body/*"/>
        <ul>
          <li>Region: <strong><xsl:value-of select="$region-info/name"/></strong></li>
          <xsl:if test="time-zone"><li>Time Zone: <strong><xsl:value-of select="time-zone"/></strong></li></xsl:if>
          <xsl:if test="geography/item">
            <li>
              <xsl:text>Geography: </xsl:text>
              <xsl:for-each select="geography/item">
                <strong><xsl:value-of select="."/></strong>
                <xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
              </xsl:for-each>
            </li>
          </xsl:if>
        </ul>
      </div>
    </div>
  </xsl:for-each>
</xsl:template>

<xsl:template name="city-guide-details">
  <xsl:for-each select="$city-guide">
    <div class="box-header">
      <h3>
        <a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/"><xsl:value-of select="$city-info/city"/></a>
        <xsl:text> : </xsl:text>
        <a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/"><xsl:value-of select="guide"/></a>
      </h3>
      <!-- ul class="buttons">
        <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/copy/">Copy</a></li>
        <li class="edit"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/edit/">Edit</a></li>
      </ul -->
    </div>
    <div class="list-box-fluid content">
      <div class="content-body">
        <h2><a href="{$root}/guides/{$city}/{$guide}/"><xsl:value-of select="$city-info/city"/><xsl:text> </xsl:text><xsl:value-of select="guide"/><xsl:text> Guide</xsl:text></a></h2>
        <p><xsl:value-of select="description"/><xsl:text> </xsl:text><xsl:value-of select="$city-info/city"/></p>
        <p>Sort: <strong><xsl:value-of select="sort"/></strong></p>
      </div>
    </div>
  </xsl:for-each>
</xsl:template>

<xsl:template name="article-details">
  <xsl:for-each select="$article-details">
    <div class="box-header">
      <h3>
        <a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/{$article}/"><xsl:value-of select="title"/></a>
      </h3>
      <ul class="buttons">
        <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/{$article}/copy/">Copy</a></li>
        <li class="edit"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/{$article}/edit/">Edit</a></li>
      </ul>
    </div>
    <div class="list-box-fluid content">
      <div class="content-body">
        <h2><a href="{$root}/guides/{$city}/{$guide}/{title/@handle}/"><xsl:value-of select="title"/></a></h2>
        <xsl:if test="description"><xsl:copy-of select="description/*"/></xsl:if>
        <xsl:if test="body"><xsl:copy-of select="body/*"/></xsl:if>
        <xsl:if test="location">
          <h5><xsl:value-of select="location"/></h5>
        </xsl:if>
        <xsl:if test="address/*">
          <xsl:copy-of select="address/*"/>
        </xsl:if>
        <xsl:if test="open/*">
          <h5>Open</h5>
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
      </div>
    </div>
  </xsl:for-each>
</xsl:template>

<xsl:template name="publish-continent">
  <div class="box-header">
    <h3>
      <xsl:choose>
        <xsl:when test="$continent = 'add'">Add continent</xsl:when>
        <xsl:otherwise>
          <a href="{$this-path}/{$continent}/">
            <xsl:value-of select="name"/>
          </a>
        </xsl:otherwise>
      </xsl:choose>
    </h3>
    <ul class="buttons">
      <li class="edit"><a href="{$this-path}/{$continent}/edit/">Edit</a></li>
    </ul>
  </div>
  <xsl:call-template name="notice"/>
  <div class="panel">
    <form method="post" action="" enctype="multipart/form-data" class="pane">
      <h4>
        <xsl:choose>
          <xsl:when test="$country = 'edit'">Edit this continent</xsl:when>
          <xsl:when test="$country = 'copy'">Copy this continent</xsl:when>
          <xsl:when test="$continent = 'add'">Add a continent (Atlantis, for example, or Pangea)</xsl:when>
        </xsl:choose>
      </h4>
      <xsl:if test="$country = 'edit'"><input name="id" value="{./@id}" type="hidden" /></xsl:if>
      <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
      <table>
        <tbody>
          <tr>
            <th>Continent</th>
            <td>
              <input name="fields[name]" type="text" value="{name}"/>
            </td>
          </tr>
          <tr>
            <th>Abbreviation</th>
            <td>
              <input name="fields[continent]" type="text" value="{continent}"/>
            </td>
          </tr>
          <tr>
            <th>Description</th>
            <td>
              <textarea name="fields[description]" rows="8" cols="50">
                <xsl:apply-templates select="description" mode="markdown"/>
              </textarea>
            </td>
          </tr>
          <tr>
            <th>Body</th>
            <td>
              <textarea name="fields[body]" rows="16" cols="50">
                <xsl:apply-templates select="body" mode="markdown"/>
              </textarea>
            </td>
          </tr>
          <tr>
            <th></th>
            <td>
              <input name="action[publish-continent]" type="submit">
                <xsl:choose>
                  <xsl:when test="$country = 'edit'"><xsl:attribute name="value">Save Changes</xsl:attribute></xsl:when>
                  <xsl:when test="$country = 'copy'"><xsl:attribute name="value">Copy Continent</xsl:attribute></xsl:when>
                  <xsl:when test="$continent = 'add'"><xsl:attribute name="value">Add Continent</xsl:attribute></xsl:when>
                </xsl:choose>
              </input>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</xsl:template>

<xsl:template name="publish-country">
  <xsl:param name="geography" select="geography/item/@handle"/>
  <div class="box-header">
    <xsl:choose>
      <xsl:when test="$country = 'add'"><h3>Add country</h3></xsl:when>
      <xsl:otherwise>
        <h3>
          <a href="{$this-path}/{$continent}/{$country}/"><xsl:value-of select="name"/></a>
        </h3>
        <ul class="buttons">
          <li class="add"><a href="{$this-path}/{$continent}/{$country}/copy/">Copy</a></li>
          <li class="edit"><a href="{$this-path}/{$continent}/{$country}/edit/">Edit</a></li>
        </ul>
      </xsl:otherwise>
    </xsl:choose>
  </div>
  <xsl:call-template name="notice"/>
  <div class="panel">
    <form method="post" action="" enctype="multipart/form-data" class="pane">
      <h4>
        <xsl:choose>
          <xsl:when test="$region = 'edit'">Edit this country</xsl:when>
          <xsl:when test="$region = 'copy'">Copy this country</xsl:when>
          <xsl:when test="$country = 'add'">Add a country</xsl:when>
        </xsl:choose>
      </h4>
      <xsl:if test="$region='edit'"><input name="id" value="{./@id}" type="hidden" /></xsl:if>
      <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
      <table>
        <tbody>
          <tr>
            <th>Country</th>
            <td>
              <input name="fields[name]" type="text" value="{name}"/>
            </td>
          </tr>
          <tr>
            <th>Code</th>
            <td>
              <input name="fields[country]" type="text" value="{country}"/>
            </td>
          </tr>
          <tr>
            <th>Continent</th>
            <td>
              <select name="fields[continent]">
                <xsl:for-each select="$continents-list">
                  <option value="{./@id}">
                    <xsl:if test="$continent = continent/@handle">
                      <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="name"/>
                  </option>
                </xsl:for-each>
              </select>
            </td>
          </tr>
          <tr>
            <th>Geography</th>
            <td>
              <select name="fields[geography][]" multiple="multiple">
                <xsl:for-each select="/data/geography/entry">
                  <option value="{area}">
                    <xsl:if test="area/@handle = $geography">
                      <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="area"/>
                  </option>
                </xsl:for-each>
              </select>
            </td>
          </tr>
          <tr>
            <th>Description</th>
            <td>
              <textarea name="fields[description]" rows="8" cols="50">
                <xsl:apply-templates select="description" mode="markdown"/>
              </textarea>
            </td>
          </tr>
          <tr>
            <th>Body</th>
            <td>
              <textarea name="fields[body]" rows="16" cols="50">
                <xsl:apply-templates select="body" mode="markdown"/>
              </textarea>
            </td>
          </tr>
          <tr>
            <th>Abbreviation</th>
            <td>
              <input name="fields[abbreviation]" type="text" value="{abbreviation}"/>
            </td>
          </tr>
          <tr>
            <th>Currency</th>
            <td>
              <input name="fields[currency]" type="text" value="{currency}"/>
            </td>
          </tr>
          <tr>
            <th>Feature</th>
            <td>
              <select name="fields[feature]">
                <xsl:call-template name="select-csv-options">
                  <xsl:with-param name="csv" select="'Yes, No'"/>
                  <xsl:with-param name="selected" select="feature/item"/>
                </xsl:call-template>
              </select>
            </td>
          </tr>
          <tr>
            <th></th>
            <td>
              <input name="action[publish-country]" type="submit">
                <xsl:choose>
                  <xsl:when test="$region='edit'"><xsl:attribute name="value">Save Changes</xsl:attribute></xsl:when>
                  <xsl:when test="$region='copy'"><xsl:attribute name="value">Copy Country</xsl:attribute></xsl:when>
                  <xsl:when test="$country='add'"><xsl:attribute name="value">Add Country</xsl:attribute></xsl:when>
                </xsl:choose>
              </input>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</xsl:template>

<xsl:template name="publish-region">
  <xsl:param name="geography" select="geography/item/@handle"/>
  <xsl:param name="selected-region">
    <xsl:choose>
      <xsl:when test="not(type/item) and $country = 'us' or $country = 'au'">State</xsl:when>
      <xsl:when test="not(type/item) and $country = 'ca'">Province</xsl:when>
      <xsl:otherwise><xsl:value-of select="type/item"/></xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <div class="box-header">
    <xsl:choose>
      <xsl:when test="$region = 'add'"><h3>Add region</h3></xsl:when>
      <xsl:otherwise>
        <h3>
          <a href="{$this-path}/{$continent}/{$country}/{$region}/">
            <xsl:value-of select="name"/>
          </a>
        </h3>
        <ul class="buttons">
          <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/copy/">Copy</a></li>
          <li class="edit"><a href="{$this-path}/{$continent}/{$country}/{$region}/edit/">Edit</a></li>
        </ul>
      </xsl:otherwise>
    </xsl:choose>
  </div>
  <xsl:call-template name="notice"/>
  <div class="panel">
    <form method="post" action="" enctype="multipart/form-data" class="pane">
      <xsl:choose>
        <xsl:when test="$city = 'edit'">
          <h4>Edit this region</h4>
          <input name="id" value="{./@id}" type="hidden" />
        </xsl:when>
        <xsl:when test="$city = 'copy'"><h4>Copy this region</h4></xsl:when>
        <xsl:when test="$region = 'add'"><h4>Add a region</h4></xsl:when>
      </xsl:choose>
      <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
      <table>
        <tbody>
          <tr>
            <th>Region</th>
            <td>
              <input name="fields[name]" type="text" value="{name}"/>
            </td>
          </tr>
          <tr>
            <th>Abbreviation</th>
            <td>
              <input name="fields[region]" type="text" value="{region}"/>
            </td>
          </tr>
          <tr>
            <th>Type</th>
            <td>
              <select name="fields[type]">
                <xsl:call-template name="select-csv-options">
                  <xsl:with-param name="csv" select="'None, Province, State, Territory'"/>
                  <xsl:with-param name="selected" select="$selected-region"/>
                </xsl:call-template>
              </select>
            </td>
          </tr>
          <tr>
            <th>Country</th>
            <td>
              <select name="fields[country]">
                <option value="None">None</option>
                <xsl:for-each select="$countries-list">
                  <xsl:sort select="name"/>
                  <option value="{./@id}">
                    <xsl:if test="$country = country/@handle">
                      <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="name"/>
                  </option>
                </xsl:for-each>
              </select>
            </td>
          </tr>
          <tr>
            <th>Geography</th>
            <td>
              <select name="fields[geography][]" multiple="multiple">
                <xsl:for-each select="/data/geography/entry">
                  <option value="{area}">
                    <xsl:if test="area/@handle = $geography">
                      <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="area"/>
                  </option>
                </xsl:for-each>
              </select>
            </td>
          </tr>
          <tr>
            <th>Description</th>
            <td>
              <textarea name="fields[description]" rows="8" cols="50">
                <xsl:apply-templates select="description" mode="markdown"/>
              </textarea>
            </td>
          </tr>
          <tr>
            <th>Body</th>
            <td>
              <textarea name="fields[body]" rows="16" cols="50">
                <xsl:apply-templates select="body" mode="markdown"/>
              </textarea>
            </td>
          </tr>
          <tr>
            <th>Feature</th>
            <td>
              <select name="fields[feature]">
                <xsl:call-template name="select-csv-options">
                  <xsl:with-param name="csv" select="'Yes, No'"/>
                  <xsl:with-param name="selected" select="feature/item"/>
                </xsl:call-template>
              </select>
            </td>
          </tr>
          <tr>
            <th></th>
            <td>
              <input name="action[publish-region]" type="submit">
                <xsl:choose>
                  <xsl:when test="$city = 'edit'"><xsl:attribute name="value">Save Changes</xsl:attribute></xsl:when>
                  <xsl:when test="$city = 'copy'"><xsl:attribute name="value">Copy Region</xsl:attribute></xsl:when>
                  <xsl:when test="$region = 'add'"><xsl:attribute name="value">Add Region</xsl:attribute></xsl:when>
                </xsl:choose>
              </input>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</xsl:template>

<xsl:template name="publish-city">
  <xsl:param name="geography" select="geography/item/@handle"/>
  <div class="box-header">
    <h3>
      <xsl:choose>
        <xsl:when test="$city = 'add'">Add city</xsl:when>
        <xsl:otherwise>
          <a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/">
            <xsl:value-of select="city"/>
          </a>
          <xsl:text>, </xsl:text>
          <a href="{$this-path}/{$continent}/{$country}/{$region}/">
            <xsl:value-of select="$region-info/name"/>
          </a>
        </xsl:otherwise>
      </xsl:choose>
    </h3>
    <ul class="buttons">
      <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/copy/">Copy</a></li>
      <li class="edit"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/edit/">Edit</a></li>
    </ul>
  </div>
  <xsl:call-template name="notice"/>
  <div class="panel">
    <form method="post" action="" enctype="multipart/form-data" class="pane">
      <xsl:choose>
        <xsl:when test="$guide = 'edit'">
          <h4>Edit this city</h4>
          <input name="id" value="{./@id}" type="hidden" />
        </xsl:when>
        <xsl:when test="$guide = 'copy'"><h4>Copy this city</h4></xsl:when>
        <xsl:when test="$city = 'add'"><h4>Add a city</h4></xsl:when>
      </xsl:choose>
      <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
      <table>
        <tbody>
          <tr>
            <th>City</th>
            <td>
              <input name="fields[city]" type="text" value="{city}"/>
            </td>
          </tr>
          <tr>
            <th>Region</th>
            <td>
              <select name="fields[region]">
                <xsl:for-each select="$regions-list">
                  <xsl:sort select="name"/>
                  <option value="{region}">
                    <xsl:if test="region/@handle = $region">
                      <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="name"/>
                  </option>
                </xsl:for-each>
              </select>
            </td>
          </tr>
          <tr>
            <th>Country</th>
            <td>
              <xsl:value-of select="$country-info/name"/>
              <input name="fields[country]" type="hidden" value="{$ds-country}"/>
            </td>
          </tr>
          <tr>
            <th>Continent</th>
            <td>
              <xsl:value-of select="$continent-info/name"/>
              <input name="fields[continent]" type="hidden" value="{$continent-info/continent}"/>
            </td>
          </tr>
          <tr>
            <th>Geography</th>
            <td>
              <select name="fields[geography][]" multiple="multiple">
                <xsl:for-each select="/data/geography/entry">
                  <option value="{area}">
                    <xsl:if test="area/@handle = $geography">
                      <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="area"/>
                  </option>
                </xsl:for-each>
              </select>
            </td>
          </tr>
          <tr>
            <th>Description</th>
            <td>
              <textarea name="fields[description]" rows="8" cols="50">
                <xsl:apply-templates select="description" mode="markdown"/>
              </textarea>
            </td>
          </tr>
          <tr>
            <th>Body</th>
            <td>
              <textarea name="fields[body]" rows="16" cols="50">
                <xsl:apply-templates select="body" mode="markdown"/>
              </textarea>
            </td>
          </tr>
          <tr>
            <th>Time Zone</th>
            <td>
              <input name="fields[time-zone]" type="text" value="{time-zone}"/>
            </td>
          </tr>
          <tr>
            <th>Feature</th>
            <td>
              <select name="fields[feature]">
                <xsl:call-template name="select-csv-options">
                  <xsl:with-param name="csv" select="'Yes, No'"/>
                  <xsl:with-param name="selected" select="feature/item"/>
                </xsl:call-template>
              </select>
            </td>
          </tr>
          <tr>
            <th>Guide</th>
            <td>
              <select name="fields[guide]">
                <xsl:call-template name="select-csv-options">
                  <xsl:with-param name="csv" select="'Yes, No'"/>
                  <xsl:with-param name="selected" select="guide/item"/>
                </xsl:call-template>
              </select>
            </td>
          </tr>
          <tr>
            <th></th>
            <td>
              <input name="action[publish-city]" type="submit">
                <xsl:choose>
                  <xsl:when test="$guide = 'edit'"><xsl:attribute name="value">Save Changes</xsl:attribute></xsl:when>
                  <xsl:when test="$guide = 'copy'"><xsl:attribute name="value">Copy City</xsl:attribute></xsl:when>
                  <xsl:when test="$city = 'add'"><xsl:attribute name="value">Add City</xsl:attribute></xsl:when>
                </xsl:choose>
              </input>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</xsl:template>

<xsl:template name="publish-city-guide">
  <div class="box-header">
    <h3>
      <xsl:choose>
        <xsl:when test="$guide = 'add'">Add City Guide</xsl:when>
        <xsl:otherwise>
          <a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/">
            <xsl:value-of select="guide"/>
          </a>
        </xsl:otherwise>
      </xsl:choose>
    </h3>
    <ul class="buttons">
      <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/copy/">Copy</a></li>
      <li class="edit"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/edit/">Edit</a></li>
    </ul>
  </div>
  <xsl:call-template name="notice"/>
  <div class="panel">
    <form method="post" action="" enctype="multipart/form-data" class="pane">
      <h4>
        <xsl:choose>
          <xsl:when test="$article = 'edit'">Edit this guide</xsl:when>
          <xsl:when test="$article = 'copy'">Copy this guide</xsl:when>
          <xsl:when test="$guide = 'add'">Add a guide</xsl:when>
        </xsl:choose>
      </h4>
      <xsl:if test="$article = 'edit'"><input name="id" value="{./@id}" type="hidden" /></xsl:if>
      <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
      <table>
        <tbody>
          <tr>
            <th>Guide</th>
            <td>
              <input name="fields[guide]" type="text" value="{guide}"/>
            </td>
          </tr>
          <tr>
            <th>Description</th>
            <td><textarea name="fields[description]" rows="21" cols="50"><xsl:apply-templates select="description" mode="markdown"/></textarea></td>
          </tr>
          <tr>
            <th>Sort</th>
            <td>
              <input name="fields[sort]" type="text" value="{sort}"/>
            </td>
          </tr>
          <tr>
            <th></th>
            <td>
              <input name="action[publish-city-guide]" type="submit">
                <xsl:choose>
                  <xsl:when test="$article = 'edit'"><xsl:attribute name="value">Save Changes</xsl:attribute></xsl:when>
                  <xsl:when test="$article = 'copy'"><xsl:attribute name="value">Copy Guide</xsl:attribute></xsl:when>
                  <xsl:when test="$guide = 'add'"><xsl:attribute name="value">Add Guide</xsl:attribute></xsl:when>
                </xsl:choose>
              </input>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</xsl:template>

<xsl:template name="publish-article">
  <div class="box-header">
    <h3>
      <xsl:choose>
        <xsl:when test="$article = 'add'">Add article</xsl:when>
        <xsl:otherwise>
          <a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/{$article}/">
            <xsl:value-of select="title"/>
          </a>
        </xsl:otherwise>
      </xsl:choose>
    </h3>
    <ul class="buttons">
      <li class="add"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/{$article}/copy/">Copy</a></li>
      <li class="edit"><a href="{$this-path}/{$continent}/{$country}/{$region}/{$city}/{$guide}/{$article}/edit/">Edit</a></li>
    </ul>
  </div>
  <xsl:call-template name="notice"/>
  <div class="panel">
    <form method="post" action="" enctype="multipart/form-data" class="pane">
      <h4>
        <xsl:choose>
          <xsl:when test="$action = 'edit'">Edit this article</xsl:when>
          <xsl:when test="$action = 'copy'">Copy this article</xsl:when>
          <xsl:when test="$article = 'add'">Add an article</xsl:when>
        </xsl:choose>
      </h4>
      <xsl:if test="$action = 'edit'"><input name="id" value="{./@id}" type="hidden" /></xsl:if>
      <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
      <table>
        <tbody>
          <tr>
            <th>Title</th>
            <td>
              <input name="fields[title]" type="text" value="{title}"/>
            </td>
          </tr>
          <tr>
            <th>Location</th>
            <td>
              <input name="fields[location]" type="text" value="{location}"/>
            </td>
          </tr>
          <tr>
            <th>City</th>
            <td><xsl:value-of select="$city-info/city"/>
              <input name="fields[city]" type="hidden" value="{$city-info/@id}"/>
            </td>
          </tr>
          <tr>
            <th>City Guide</th>
            <td>
              <select name="fields[guide]">
                <xsl:for-each select="$city-guides">
                  <option value="{guide}">
                    <xsl:if test="$guide = guide/@handle">
                      <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="guide"/>
                  </option>
                </xsl:for-each>
              </select>
            </td>
          </tr>
          <tr>
            <th>URL</th>
            <td>
              <input name="fields[url]" type="text" value="{url}"/>
            </td>
          </tr>
          <tr>
            <th>Heading</th>
            <td>
              <input name="fields[heading]" type="text" value="{heading}"/>
            </td>
          </tr>
          <tr>
            <th>Description</th>
            <td><textarea name="fields[description]" rows="5" cols="50"><xsl:apply-templates select="description" mode="markdown"/></textarea></td>
          </tr>
          <tr>
            <th>Body</th>
            <td><textarea name="fields[body]" rows="20" cols="50"><xsl:apply-templates select="body" mode="markdown"/></textarea></td>
          </tr>
          <tr>
            <th>Address</th>
            <td><textarea name="fields[address]" rows="3" cols="50"><xsl:apply-templates select="address" mode="markdown"/></textarea></td>
          </tr>
          <tr>
            <th>Phone</th>
            <td>
              <input name="fields[phone]" type="text" value="{phone}"/>
            </td>
          </tr>
          <tr>
            <th>Open</th>
            <td><textarea name="fields[open]" rows="3" cols="50"><xsl:apply-templates select="open" mode="markdown"/></textarea></td>
          </tr>
          <tr>
            <th>Admission</th>
            <td><input name="fields[admission]" type="checkbox"><xsl:if test="admission = 'Yes'"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input></td>
          </tr>
          <tr>
            <th>Tags</th>
            <td>
              <input name="fields[tags]" type="text">
                <xsl:attribute name="value">
                  <xsl:for-each select="tags/item">
                    <xsl:value-of select="."/>
                    <xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
                  </xsl:for-each>
                </xsl:attribute>
              </input>
            </td>
          </tr>
          <tr>
            <th></th>
            <td>
              <input name="action[publish-article]" type="submit">
                <xsl:choose>
                  <xsl:when test="$action = 'edit'"><xsl:attribute name="value">Save Changes</xsl:attribute></xsl:when>
                  <xsl:when test="$action = 'copy'"><xsl:attribute name="value">Copy Article</xsl:attribute></xsl:when>
                  <xsl:when test="$article = 'add'"><xsl:attribute name="value">Add Article</xsl:attribute></xsl:when>
                </xsl:choose>
              </input>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</xsl:template>

<xsl:template name="notice">
  <xsl:for-each select="/data/events/publish-continent | /data/events/publish-country | /data/events/publish-region | /data/events/publish-city | /data/events/publish-city-guide | /data/events/publish-article">
    <div id="notice" class="{@result}">
      <p>
        <xsl:choose>
          <xsl:when test="@result = 'success'"><xsl:value-of select="message"/></xsl:when>
          <xsl:when test="@result = 'error'"><xsl:value-of select="message"/></xsl:when>
          <xsl:otherwise>The system encountered errors when saving your comment. Please check if all the required fields have been filled.</xsl:otherwise>
        </xsl:choose>
      </p>
    </div>
  </xsl:for-each>
</xsl:template>

<xsl:template name="select-csv-options">
  <xsl:param name="csv" select="'Intro, Section, Subsection'"/>
  <xsl:param name="selected" select="'Body'"/>
  <xsl:param name="options">
    <xsl:call-template name="option-values">
      <xsl:with-param name="input" select="$csv"/>
      <xsl:with-param name="selected" select="$selected"/>
    </xsl:call-template>
  </xsl:param>
  <xsl:copy-of select="$options"/>
</xsl:template>

<xsl:template name="option-values">
  <xsl:param name="selected" select="'Section'"/>
  <xsl:param name="input"/>
  <xsl:param name="value">
    <xsl:choose>
      <xsl:when test="contains($input,',')">
        <xsl:value-of select="normalize-space(substring-before($input,','))"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="normalize-space($input)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <xsl:param name="remaining-values" select="normalize-space(substring-after($input,','))"/>
  <option value="{$value}">
    <xsl:if test="$value = $selected">
      <xsl:attribute name="selected">selected</xsl:attribute>
    </xsl:if>
    <xsl:value-of select="$value"/>
  </option>
  <xsl:if test="$remaining-values != ''">
    <xsl:call-template name="option-values">
      <xsl:with-param name="input" select="$remaining-values"/>
      <xsl:with-param name="selected" select="$selected"/>
    </xsl:call-template>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>