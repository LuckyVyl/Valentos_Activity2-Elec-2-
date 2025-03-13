<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Movie Database</title>
                <style>
                    body { font-family: Arial, sans-serif; background-color:rgb(150, 113, 113); text-align: center; }
                    table { width: 80%; margin: auto; border-collapse: collapse; background: #fff; box-shadow: 0 0 10px rgba(206, 150, 192, 0.1); }
                    th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
                    th { background-color: #333; color: white; }
                    tr:nth-child(even) { background-color:rgb(224, 202, 202); }
                </style>
            </head>
            <body>
                <h1 style="color: #333;">Movie Database</h1>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Director</th>
                        <th>Actors</th>
                        <th>Year</th>
                    </tr>
                    <xsl:for-each select="movies/movie">
                        <tr>
                            <td><xsl:value-of select="movieTitle"/></td>
                            <td><xsl:value-of select="director"/></td>
                            <td>
                                <xsl:for-each select="actors/actor">
                                    <xsl:value-of select="."/><br/>
                                </xsl:for-each>
                            </td>
                            <td><xsl:value-of select="year"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>