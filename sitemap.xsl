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
          .container { max-width: 800px; margin: auto; background: white; padding: 25px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.05); }
          table { width: 100%; border-collapse: collapse; }
          th { text-align: left; padding: 12px; border-bottom: 2px solid #2a7ae2; color: #2a7ae2; font-size: 0.75rem; text-transform: uppercase; }
          td { padding: 15px 12px; border-bottom: 1px solid #eee; }
          .page-label { font-weight: 600; color: #111; display: block; text-transform: capitalize; }
          .page-path { font-size: 0.8rem; color: #777; font-family: monospace; }
          .badge { padding: 4px 10px; border-radius: 20px; font-size: 0.8rem; font-weight: bold; background: #eef4ff; color: #2a7ae2; }
          .high { background: #2a7ae2; color: white; }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>Site Index</h1>
          <table>
            <thead>
              <tr><th>Page</th><th>Priority</th></tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <xsl:sort select="sitemap:priority" data-type="number" order="descending"/>
                <tr>
                  <td>
                    <a href="{sitemap:loc}" style="text-decoration:none;">
                      <span class="page-label">
                        <xsl:variable name="p" select="substring-after(sitemap:loc, 'ramoneando.com/')"/>
                        <xsl:choose>
                          <xsl:when test="$p = ''">Home</xsl:when>
                          <xsl:otherwise><xsl:value-of select="translate(substring-before(concat($p, '/'), '/'), '-', ' ')"/></xsl:otherwise>
                        </xsl:choose>
                      </span>
                      <span class="page-path">/<xsl:value-of select="substring-after(sitemap:loc, 'ramoneando.com/')"/></span>
                    </a>
                  </td>
                  <td>
                    <span class="badge">
                      <xsl:if test="sitemap:priority &gt; 0.7"><xsl:attribute name="class">badge high</xsl:attribute></xsl:if>
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