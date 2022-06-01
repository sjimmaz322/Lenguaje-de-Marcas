<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación XSLT</title>
                <meta charset="utf-8"></meta>
                <style>
                    td .img{height:100px;}
                    .esp{padding-left: 50px;}
                </style>
            </head>
            <body>
                <h1>Información de los Continentes</h1>
                <ol>
                    <xsl:for-each select="geografia/continentes/continente">
                        <xsl:sort select="@nombre"/>
                        <li>
                            <h2>
                                <xsl:value-of select="@nombre"></xsl:value-of>
                            </h2>
                            <ul>
                                <xsl:for-each select="pais">
                                    <xsl:sort select="." order="descending"></xsl:sort>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">#                                                <xsl:value-of select="."/>
                                            </xsl:attribute>
                                            <xsl:value-of select="."/>
                                        </a>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ol>
                <h1>Información de los Paises</h1>
                <ol>
                    <xsl:for-each select="geografia/paises/pais">
                        <xsl:sort select="@nombre"/>
                        <li>
                            <h2><xsl:attribute name="id"><xsl:value-of select="@nombre"/></xsl:attribute><xsl:value-of select="@nombre"/></h2>
                            <table>
                                <tr>
                                    <td>
                                        <p><strong>Sistema de gobierno: </strong><xsl:value-of select="sistema"/></p>
                                        <p><strong>Superficie: </strong><xsl:value-of select="superficie"/>m²</p>
                                        <p><strong>Idioma: </strong><xsl:value-of select="idioma"/></p>
                                        <xsl:for-each select="moneda">
                                        <p>
                                            <strong>Moneda 
                                            <xsl:if test="@antigua != ''">Antigua
                                            </xsl:if>
                                            </strong><xsl:value-of select="."/>
                                        </p>
                                        </xsl:for-each>
                                    </td>
                                    
                                    <td class="esp">
                                        <img><xsl:attribute name="title"><xsl:value-of select="@nombre"/></xsl:attribute>
                                            <xsl:attribute name="src">Img/<xsl:value-of select="@nombre"/>.png</xsl:attribute>
                                        </img>
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </xsl:for-each>
                </ol>
                </body>
            </html>
        </xsl:template>

    </xsl:stylesheet>



    <!--  m²   -->
