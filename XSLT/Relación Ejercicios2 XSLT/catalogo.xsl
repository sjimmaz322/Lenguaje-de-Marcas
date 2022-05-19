<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Tranformación 2</title>
                <meta charset="UTF-8" />
                <style>
                    h1{text-align:center;}
                    .rojo{color:red}
                    .verde{color:green}
                    table{border-collapese:collapse;width:80%; margin:0 auto;text-align:center;}
                    table,td,th{border:1px solid black}
                    
                </style>
            </head>
            <body>
                <h1>EJERCICIO 5</h1>
                <ul>
                    <xsl:for-each select="catalogo/artistas/artista">


                        <xsl:choose>
                            <xsl:when test="nacionalidad = 'España'">
                                <li>
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                </li>
                            </xsl:when>

                            <xsl:otherwise>
                                <xsl:text></xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>


                    </xsl:for-each>
                </ul>
            
                <h1>EJERCICIO 6</h1>
                <table>
                    <tr>
                        
                        <th>Título</th>
                        
                    </tr>

                    <xsl:for-each select="catalogo/cds/cd">
                        
                        <tr>
                            

                            <xsl:choose>
                                <xsl:when test="año &gt; 2000">
                                    <td>
                                        <span class="verde">
                                            <xsl:value-of select="titulo"></xsl:value-of>
                                        </span>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <span class="rojo">
                                            <xsl:value-of select="titulo"></xsl:value-of>
                                        </span>
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