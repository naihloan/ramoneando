<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>Sitemap | ramoneando.com</title>
        <style type="text/css">
        body { font-family: 'Inter', sans-serif; background: #f4f7f6; padding: 40px; }
        .container { max-width: 900px; margin: auto; background: white; padding: 30px; border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.05); }
        th { text-transform: uppercase; font-size: 12px; letter-spacing: 1px; color: #888; border-bottom: 1px solid #eee; }
        .priority-tag { background: #2a7ae2; color: white; padding: 2px 8px; border-radius: 10px; font-size: 11px; }
        </style>
      </head>
      <body>
        <h1>Index of ramoneando.com</h1>
        <p>This is a human-readable version of the XML sitemap used by search engines.</p>
        <table>
          <tr><th>URL</th><th>Priority</th></tr>
          <xsl:for-each select="sitemap:urlset/sitemap:url">
            <tr>
              <td><a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a></td>
              <td><xsl:value-of select="sitemap:priority"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
