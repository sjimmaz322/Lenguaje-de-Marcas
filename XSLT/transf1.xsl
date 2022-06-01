<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Tranformación 1</title>
                <meta charset="UTF-8" />
                <style>

                </style>
            </head>
            <body>
                <h1>Información de mis Libros</h1>
                <ul>
                    <xsl:for-each select="biblioteca/libro">
                        <xsl:sort select="titulo" order="descending" />
                        <xsl:choose>
                            <xsl:when test="titulo = 'Pantaleón y las visitadoras'">
                                <li><span class="rojo"><xsl:value-of select="titulo"></xsl:value-of></span></li>                           
                            </xsl:when>
                            <xsl:when test="titulo = 'La vida está en otra parte'">
                                <li><span class="verde"><xsl:value-of select="titulo"></xsl:value-of></span></li>
                            </xsl:when>
                            <xsl:when test="titulo = 'Conversación en la catedral'">
                                <li><span class="azul"><xsl:value-of select="titulo"></xsl:value-of></span></li>
                            </xsl:when>
                            <xsl:otherwise></xsl:otherwise>
                        </xsl:choose>
                        
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>