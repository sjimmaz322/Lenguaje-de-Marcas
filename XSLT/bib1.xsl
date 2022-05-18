<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Tranformación 1</title>
                <meta charset="UTF-8" />
                <style>
                    .rojo{color:red}
                    table{border-collapese:collapse;widt:80%; margin:0 auto;text-align:center;}
                    table,td,th{border:1px solid black}
                    th{background-color:#d3d3d3}
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Autores</th>
                        <th>Editores</th>

                    </tr>
                    <xsl:for-each select="bib/libro">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="precio &gt;= 100">
                                    <td>
                                        <span class="rojo">
                                            <xsl:value-of select="titulo"></xsl:value-of> (Caro)</span>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo"></xsl:value-of>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>