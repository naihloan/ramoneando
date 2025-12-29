<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>Site Index | ramoneando.com</title>
        <style type="text/css">
          body { 
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif; 
            background: #f9f9f9; 
            color: #333; 
            padding: 40px 20px; 
            line-height: 1.5;
          }
          .container { 
            max-width: 800px; 
            margin: auto; 
            background: white; 
            padding: 40px; 
            border-radius: 12px; 
            box-shadow: 0 4px 20px rgba(0,0,0,0.08); 
          }
          h1 { font-size: 24px; margin-bottom: 10px; color: #111; }
          p { color: #666; margin-bottom: 30px; font-size: 14px; }
          table { width: 100%; border-collapse: collapse; }
          th { 
            text-align: left; 
            padding: 12px; 
            border-bottom: 2px solid #2a7ae2; 
            color: #2a7ae2; 
            text-transform: uppercase; 
            font-size: 12px; 
            letter-spacing: 1px;
          }
          td { padding: 12px; border-bottom: 1px solid #eee; font-size: 15px; }
          tr:hover { background: #fcfcfc; }
          a { color: #2a7ae2; text-decoration: none; font-weight: 500; }
          a:hover { text-decoration: underline; }
          .priority-badge {
            display: inline-block;
            padding: 2px 8px;
            border-radius: 12px;
            font-size: 11px;
            font-weight: bold;
            background: #eef4ff;
            color: #2a7ae2;
          }
          .high-priority { background: #2a7ae2; color: white; }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>ramoneando.com Index</h1>
          <p>A directory of content organized by priority. Search engines use the XML version of this file to index the site.</p>
          <table>
            <thead>
              <tr>
                <th>Path</th>
                <th>Priority</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <xsl:sort select="sitemap:priority" data-type="number" order="descending"/>
                <tr>
                  <td>
                    <a href="{sitemap:loc}">
                      <xsl:variable name="path" select="substring-after(sitemap:loc, 'ramoneando.com')"/>
                      <xsl:choose>
                        <xsl:when test="$path = ''">/</xsl:when>
                        <xsl:otherwise><xsl:value-of select="$path"/></xsl:otherwise>
                      </xsl:choose>
                    </a>
                  </td>
                  <td>
                    <span>
                      <xsl:attribute name="class">
                        <xsl:text>priority-badge</xsl:text>
                        <xsl:if test="sitemap:priority &gt;= 0.8"> high-priority</xsl:if>
                      </xsl:attribute>
                      <xsl:value-of select="sitemap:priority"/>
                    </span>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>