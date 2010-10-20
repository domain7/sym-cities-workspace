<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/routeone-layout.xsl"/>
<xsl:import href="../utilities/html-manipulation.xsl"/>

<xsl:param name="parent-page" select="''" />
<xsl:param name="this-path" select="concat($root,'/routeone/',$current-page)"/>
<xsl:param name="countries-path" select="concat($root,'/routeone/destinations/countries')"/>
<xsl:param name="this-path">
  <xsl:choose>
    <xsl:when test="$item">
      <xsl:value-of select="concat($this-path,'/',$navigation,'/',$section,'/',$content,'/',$item,'/')"/>
    </xsl:when>
    <xsl:when test="$content">
      <xsl:value-of select="concat($this-path,'/',$navigation,'/',$section,'/',$content,'/')"/>
    </xsl:when>
    <xsl:when test="$section">
      <xsl:value-of select="concat($this-path,'/',$navigation,'/',$section,'/')"/>
    </xsl:when>
    <xsl:when test="$navigation">
      <xsl:value-of select="concat($this-path,'/',$navigation,'/')"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="concat($this-path,'/')"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:param>
<xsl:param name="next-path">
  <xsl:choose>
    <xsl:when test="$item">
      <xsl:value-of select="concat($countries-path,'/',$navigation,'/',$section,'/',$content,'/',$item,'/')"/>
    </xsl:when>
    <xsl:when test="$content">
      <xsl:value-of select="concat($countries-path,'/',$navigation,'/',$section,'/',$content,'/')"/>
    </xsl:when>
    <xsl:when test="$section">
      <xsl:value-of select="concat($countries-path,'/',$navigation,'/',$section,'/')"/>
    </xsl:when>
    <xsl:when test="$navigation">
      <xsl:value-of select="concat($countries-path,'/',$navigation,'/')"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="concat($countries-path,'/')"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:param>
<xsl:param name="navigation-types" select="/data/navigation-types/entry"/>
<xsl:param name="navigation-info" select="/data/navigation-types/entry[navigation/@handle = $navigation]"/>
<xsl:param name="sections-list" select="/data/sections/navigation/entry"/>
<xsl:param name="categories-list" select="/data/categories/entry"/>
<xsl:param name="section-details" select="/data/section-details/entry"/>
<xsl:param name="category-info" select="/data/category/entry"/>
<xsl:param name="table-of-contents" select="/data/table-of-contents/entry"/>
<xsl:param name="content-details" select="/data/content/entry"/>

<xsl:template match="data">
  <div id="box-content">
    <div id="content" class="content-3col-overview">
      <h2>
        <a href="{$this-path}/"><xsl:value-of select="$page-title"/></a>
      </h2>
      <div class="colA">
        <div class="lists">
          <div class="clients-box">
            <div class="box-header">
              <h3><a href="{$this-path}">Sections</a></h3>
              <xsl:if test="$navigation">
                <ul class="buttons">
                  <li class="add"><a href="{$this-path}/{$navigation}/add/">Add</a></li>
                </ul>
              </xsl:if>
            </div>
            <div class="list-box">
              <ul class="clients-list">
                <xsl:for-each select="$navigation-types">
                  <xsl:call-template name="sections-by-navigation-type"/>
                </xsl:for-each>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="colB">
        <div class="lists">
          <div class="tasks-box">
            <div class="box-header">
              <h3><a href="{$next-path}" title="Select content by section">Content</a></h3>
              <ul class="buttons">
                <xsl:if test="$section">
                  <li class="add"><a href="{$this-path}/{$navigation}/{$section}/add/">Add</a></li>
                </xsl:if>
              </ul>
            </div>
            <div class="list-box">
              <ul class="tasks-list">
                <xsl:choose>
                  <xsl:when test="$section">
                    <xsl:call-template name="content-by-section"/>
                  </xsl:when>
                </xsl:choose>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="colC">
        <div class="proposal">
          <xsl:choose>
            <xsl:when test="$item">
              <xsl:choose>
                <xsl:when test="$item = 'add'">
                  <div class="box-header">
                    <h3>
                      <a href="{$this-path}/{$section}/{$category}/">Add a country to this continent</a>
                    </h3>
                  </div>
                  <xsl:call-template name="notice"/>
                  <div class="panel">
                    <form method="post" action="" enctype="multipart/form-data" class="pane">
                      <h4>Add a country to the selected continent</h4>
                      <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
                      <table>
                        <tbody>
                          <tr>
                            <th>Country</th>
                            <td>
                              <input name="fields[country]" type="text"/>
                            </td>
                          </tr>
                          <tr>
                            <th>Continent</th>
                            <td><xsl:value-of select="$section-info/continent"/>
                              <input name="fields[continent]" type="hidden" value="{$ds-continent}"/>
                            </td>
                          </tr>
                          <tr>
                            <th>Description</th>
                            <td><textarea name="fields[description]" rows="16" cols="50"></textarea></td>
                          </tr>
                          <tr>
                            <th>ISO Code</th>
                            <td>
                              <input name="fields[iso-code]" type="text"/>
                            </td>
                          </tr>
                          <tr>
                            <th>Abbreviation</th>
                            <td>
                              <input name="fields[abbreviation]" type="text"/>
                            </td>
                          </tr>
                          <tr>
                            <th>Currency</th>
                            <td>
                              <input name="fields[currency]" type="text"/>
                            </td>
                          </tr>
                          <tr>
                            <th></th>
                            <td><input name="action[publish-country]" type="submit" value="Add Country" /></td>
                          </tr>
                        </tbody>
                      </table>
                    </form>
                  </div>
                </xsl:when>
                <xsl:when test="$item = 'edit' or $item = 'copy'">
                  <xsl:for-each select="$content-details">
                    <xsl:call-template name="publish-content"/>
                  </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:for-each select="$content-details">
                    <xsl:call-template name="content-details"/>
                  </xsl:for-each>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$content">
              <xsl:choose>
                <xsl:when test="$content = 'edit' or $content = 'copy'">
                  <xsl:for-each select="$section-details">
                    <xsl:call-template name="publish-section"/>
                  </xsl:for-each>
                </xsl:when>
                 <xsl:when test="$content = 'add'">
                  <xsl:call-template name="publish-content"/>
                </xsl:when>
               <xsl:otherwise>
                  <xsl:for-each select="$content-details">
                    <xsl:call-template name="content-details"/>
                  </xsl:for-each>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$section">
              <xsl:choose>
                <xsl:when test="$section = 'edit'">
                  <xsl:for-each select="$navigation-info">
                    <xsl:call-template name="publish-navigation"/>
                  </xsl:for-each>
                </xsl:when>
                 <xsl:when test="$section = 'add'">
                  <xsl:call-template name="publish-section"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:for-each select="$section-details">
                    <div class="box-header">
                      <h3><a href="{$this-path}/{$section}/"><xsl:value-of select="title"/></a></h3>
                      <ul class="buttons">
                        <li class="edit"><a href="{$this-path}/{$navigation}/{$section}/edit/">Edit</a></li>
                      </ul>
                    </div>
                    <div class="list-box-fluid content">
                      <div class="content-body">
                        <h2><a href="{$root}/{$section-details/url}/"><xsl:value-of select="title"/></a></h2>
                        <ul>
                          <xsl:if test="heading"><li>Heading: <xsl:value-of select="heading"/></li></xsl:if>
                          <xsl:if test="description/*"><li>Description: <xsl:value-of select="description"/></li></xsl:if>
                          <xsl:if test="navigation"><li>Navigation: <xsl:value-of select="navigation/@link-handle"/></li></xsl:if>
                          <xsl:if test="url"><li>URL: <xsl:value-of select="url"/></li></xsl:if>
                          <xsl:if test="sort"><li>Sort: <xsl:value-of select="sort"/></li></xsl:if>
                        </ul>
                      </div>
                    </div>
                  </xsl:for-each>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:when>
            <xsl:when test="$navigation">
              <xsl:for-each select="$navigation-info">
                <div class="box-header">
                  <h3><a href="{$this-path}/{$section}/"><xsl:value-of select="navigation"/></a></h3>
                  <ul class="buttons">
                    <li class="edit"><a href="{$this-path}/{$navigation}/edit/">Edit</a></li>
                  </ul>
                </div>
                <div class="list-box-fluid content">
                  <div class="content-body">
                    <h2><xsl:value-of select="navigation"/></h2>
                    <xsl:copy-of select="description/*"/>
                  </div>
                </div>
              </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
              <div class="box-header">
                <h3>Select a Section</h3>
              </div>
              <div class="list-box-fluid proposal">
              </div>
            </xsl:otherwise>
          </xsl:choose>
        </div>
      </div>
    </div>
  </div>
</xsl:template>

<xsl:template name="sections-by-navigation-type">
  <xsl:param name="navigation-handle" select="navigation/@handle"/>
  <li>
    <a href="{$this-path}/{$navigation-handle}/">
      <xsl:if test="navigation/@handle = $navigation and (not($section) or $section = 'edit')">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="navigation"/><xsl:text> Navigation</xsl:text>
    </a>
    <ul>
      <xsl:for-each select="$sections-list[../@link-handle = $navigation-handle]">
        <li>
          <a href="{$this-path}/{../@link-handle}/{title/@handle}/">
            <xsl:if test="title/@handle = $section">
              <xsl:attribute name="class">current</xsl:attribute>
            </xsl:if>
            <xsl:value-of select="title"/>
          </a>
        </li>
      </xsl:for-each>
    </ul>
  </li>
</xsl:template>
  
<xsl:template name="content-by-section">
  <xsl:choose>
    <xsl:when test="$section">
      <xsl:for-each select="$table-of-contents">
        <xsl:sort select="sort" data-type="number"/>
        <xsl:call-template name="table-of-contents"/>
      </xsl:for-each>
    </xsl:when>
    <xsl:otherwise>
      <xsl:for-each select="$table-of-contents">
        <xsl:sort select="title"/>
        <xsl:call-template name="table-of-contents"/>
      </xsl:for-each>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
  
<xsl:template name="table-of-contents">
  <li>
    <a href="{$this-path}/{$navigation}/{$section}/{title/@handle}/">
      <xsl:if test="title/@handle = $content">
        <xsl:attribute name="class">current</xsl:attribute>
      </xsl:if>
      <xsl:value-of select="title"/>
    </a>
  </li>
</xsl:template>
  
<xsl:template name="content-details">
  <xsl:param name="url">
    <xsl:choose>
      <xsl:when test="substring(url,1,4) = 'http'">
        <xsl:value-of select="url"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="concat($root,'/',$section-details/url,'/',title/@handle,'/')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <div class="box-header">
    <h3><a href="{$this-path}/{$navigation}/{$section}/{$content}/"><xsl:value-of select="title"/></a></h3>
    <ul class="buttons">
      <li class="edit"><a href="{$this-path}/{$navigation}/{$section}/{$content}/edit/">Edit</a></li>
      <li class="add"><a href="{$this-path}/{$navigation}/{$section}/{$content}/copy/">Copy</a></li>
    </ul>
  </div>
  <div class="list-box-fluid content">
    <div class="content-body">
      <h2><a href="{$url}" title="Go to page"><xsl:value-of select="title"/></a></h2>
      <xsl:copy-of select="code/*"/>
      <xsl:copy-of select="description/*"/>
      <xsl:copy-of select="body/*"/>
      <ul>
        <xsl:if test="category/item"><li>Category: <xsl:value-of select="category/item"/></li></xsl:if>
        <xsl:if test="heading"><li>Heading: <xsl:value-of select="heading"/></li></xsl:if>
        <xsl:if test="navigation"><li>Navigation: <xsl:value-of select="navigation/@link-handle"/></li></xsl:if>
        <xsl:if test="url"><li>URL: <xsl:value-of select="url"/></li></xsl:if>
        <xsl:if test="sort"><li>Sort: <xsl:value-of select="sort"/></li></xsl:if>
      </ul>
    </div>
  </div>
</xsl:template>
  
<xsl:template name="publish-navigation">
  <div class="box-header">
    <h3><a href="{$this-path}/{$section}/"><xsl:value-of select="navigation"/></a></h3>
    <ul class="buttons">
      <li class="edit"><a href="{$this-path}/{$navigation}/edit/">Edit</a></li>
    </ul>
  </div>
  <xsl:call-template name="notice"/>
  <div class="panel">
    <form method="post" action="" enctype="multipart/form-data" class="pane">
      <h4>Edit this navigation area</h4>
      <xsl:if test="$section='edit'"><input name="id" value="{./@id}" type="hidden" /></xsl:if>
      <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
      <table>
        <tbody>
          <tr>
            <th>Navigation</th>
            <td>
              <input name="fields[navigation]" type="text" value="{navigation}"/>
            </td>
          </tr>
          <tr>
            <th>Description</th>
            <td><textarea name="fields[description]" rows="22" cols="50"><xsl:apply-templates select="description" mode="markdown"/></textarea></td>
          </tr>
          <tr>
            <th></th>
            <td><input name="action[publish-navigation]" type="submit" value="Save Changes" /></td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</xsl:template>
  
<xsl:template name="publish-section">
  <div class="box-header">
    <h3>
      <a href="{$this-path}/{$section}/">
        <xsl:if test="$section='add'">Add section</xsl:if>
        <xsl:value-of select="title"/>
      </a>
    </h3>
    <ul class="buttons">
      <li class="edit"><a href="{$this-path}/{$navigation}/{$section}/edit/">Edit</a></li>
    </ul>
  </div>
  <xsl:call-template name="notice"/>
  <div class="panel">
    <form method="post" action="" enctype="multipart/form-data" class="pane">
      <h4>
        <xsl:choose>
          <xsl:when test="$content = 'edit'">Edit this section</xsl:when>
          <xsl:when test="$content = 'copy'">Copy this section</xsl:when>
          <xsl:when test="$section = 'add'">Add a section to a navigation area</xsl:when>
        </xsl:choose>
      </h4>
      <xsl:if test="$content = 'edit'"><input name="id" value="{./@id}" type="hidden" /></xsl:if>
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
            <th>Navigation</th>
            <td>
              <select name="fields[navigation]">
                <xsl:for-each select="$navigation-types">
                  <xsl:sort select="navigation"/>
                  <option value="{@id}">
                    <xsl:if test="$section-details/navigation/@link-id = @id">
                      <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="navigation"/>
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
            <td><textarea name="fields[description]" rows="16" cols="3"><xsl:apply-templates select="description" mode="markdown"/></textarea></td>
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
              <input name="action[publish-section]" type="submit">
                <xsl:choose>
                  <xsl:when test="$content = 'edit'"><xsl:attribute name="value">Save Changes</xsl:attribute></xsl:when>
                  <xsl:when test="$content = 'copy'"><xsl:attribute name="value">Copy Section</xsl:attribute></xsl:when>
                  <xsl:when test="$section = 'add'"><xsl:attribute name="value">Add Section</xsl:attribute></xsl:when>
                </xsl:choose>
              </input>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</xsl:template>
  
<xsl:template name="publish-content">
  <div class="box-header">
    <h3>
      <a href="{$this-path}/{$navigation}/{$section}/">
        <xsl:if test="$content='add'">Add content</xsl:if>
        <xsl:value-of select="title"/>
      </a>
    </h3>
    <ul class="buttons">
      <li class="edit"><a href="{$this-path}/{$navigation}/{$section}/{$content}/edit/">Edit</a></li>
      <li class="add"><a href="{$this-path}/{$navigation}/{$section}/{$content}/copy/">Copy</a></li>
    </ul>
  </div>
  <xsl:call-template name="notice"/>
  <div class="panel">
    <form method="post" action="" enctype="multipart/form-data" class="pane">
      <h4>
        <xsl:choose>
          <xsl:when test="$item='edit'">Edit this content</xsl:when>
          <xsl:when test="$item='copy'">Copy this content</xsl:when>
          <xsl:when test="$content='add'">Add content to a section</xsl:when>
        </xsl:choose>
      </h4>
      <xsl:if test="$item='edit'"><input name="id" value="{./@id}" type="hidden" /></xsl:if>
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
            <th>Section</th>
            <td>
              <select name="fields[section]">
                <xsl:for-each select="$sections-list">
                  <xsl:sort select="title"/>
                  <option value="{@id}">
                    <xsl:if test="$section-details/@id = @id">
                      <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="title"/>
                  </option>
                </xsl:for-each>
              </select>
            </td>
          </tr>
          <tr>
            <th>Category</th>
            <td>
              <select name="fields[category]">
                <xsl:call-template name="content-category-options">
                  <xsl:with-param name="csv" select="'None, Destinations, Dining, Travel, Entertainment, Events, Tours, Accommodations, Services, Other'"/>
                  <xsl:with-param name="selected" select="category/item"/>
                </xsl:call-template>
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
            <th>Code</th>
            <td><textarea name="fields[code]" rows="9" cols="3"><xsl:apply-templates select="code" mode="markdown"/></textarea></td>
          </tr>
          <tr>
            <th>Description</th>
            <td><textarea name="fields[description]" rows="12" cols="3"><xsl:apply-templates select="description" mode="markdown"/></textarea></td>
          </tr>
          <tr>
            <th>Body</th>
            <td><textarea name="fields[body]" rows="12" cols="3"><xsl:apply-templates select="body" mode="markdown"/></textarea></td>
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
              <input name="action[publish-content]" type="submit">
                <xsl:choose>
                  <xsl:when test="$item='edit'"><xsl:attribute name="value">Save Changes</xsl:attribute></xsl:when>
                  <xsl:when test="$item='copy'"><xsl:attribute name="value">Copy Content</xsl:attribute></xsl:when>
                  <xsl:when test="$content='add'"><xsl:attribute name="value">Add Content</xsl:attribute></xsl:when>
                </xsl:choose>
              </input>
            </td>
          </tr>
        </tbody>
      </table>
    </form>
  </div>
</xsl:template>
  
<xsl:template name="content-category-options">
  <xsl:param name="csv"/>
  <xsl:param name="selected"/>
  <xsl:param name="options">
    <xsl:call-template name="option-values">
      <xsl:with-param name="input" select="$csv"/>
      <xsl:with-param name="selected" select="$selected"/>
    </xsl:call-template>
  </xsl:param>
  <xsl:copy-of select="$options"/>
</xsl:template>

<xsl:template name="option-values">
  <xsl:param name="selected"/>
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

<xsl:template name="notice">
  <xsl:for-each select="events/publish-navigation | events/publish-section | events/publish-content">
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

</xsl:stylesheet>