<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>Site Index | ramoneando.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <style type="text/css">
          body { font-family: -apple-system, system-ui, sans-serif; background: #f4f4f7; color: #333; margin: 0; padding: 20px; }
          .container { max-width: 800px; margin: auto; background: white; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.05); }
          h1 { font-size: 1.4rem; margin-bottom: 20px; color: #111; border-bottom: 2px solid #2a7ae2; padding-bottom: 10px; display: inline-block;}
          table { width: 100%; border-collapse: collapse; }
          th { text-align: left; padding: 12px; color: #888; font-size: 0.7rem; text-transform: uppercase; letter-spacing: 1px; }
          td { padding: 15px 12px; border-bottom: 1px solid #eee; }
          .page-title { font-weight: 600; color: #2a7ae2; text-decoration: none; font-size: 1.1rem; display: block; margin-bottom: 2px; }
          .page-path { font-size: 0.85rem; color: #666; font-family: ui-monospace, monospace; }
          .badge { padding: 4px 12px; border-radius: 20px; font-size: 0.75rem; font-weight: bold; background: #eef4ff; color: #2a7ae2; float: right; }
          .high { background: #2a7ae2; color: white; }
          tr:hover { background: #fafafa; }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>ramoneando.com</h1>
          <table>
            <thead>
              <tr><th>Resource</th><th>Priority</th></tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <xsl:sort select="sitemap:priority" data-type="number" order="descending"/>
                <tr>
                  <td>
                    <xsl:variable name="itemUrl" select="sitemap:loc"/>
                    <xsl:variable name="cleanPath">
                      <xsl:choose>
                        <xsl:when test="substring($itemUrl, string-length($itemUrl)) = '/'">
                           <xsl:value-of select="substring-before(substring-after($itemUrl, 'ramoneando.com/'), '/')"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="substring-after($itemUrl, 'ramoneando.com/')"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </xsl:variable>

                    <a href="{$itemUrl}" class="page-title">
                      <xsl:choose>
                        <xsl:when test="$cleanPath = ''">Home</xsl:when>
                        <xsl:otherwise>
                          <xsl:value-of select="translate(translate($cleanPath, '-', ' '), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </a>
                    <span class="page-path">https://ramoneando.com/<xsl:value-of select="$cleanPath"/></span>
                  </td>
                  <td>
                    <span class="badge">
                      <xsl:if test="sitemap:priority &gt;= 0.8"><xsl:attribute name="class">badge high</xsl:attribute></xsl:if>
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