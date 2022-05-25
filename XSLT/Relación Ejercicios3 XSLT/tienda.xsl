<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Relación 3</title>
                <meta charset="UTF-8" />
                <style>
                    h1{text-align:center;}
                    table{border-collapese:collapse;width:80%; margin:0 auto;text-align:center;}
                    table,td,th{border:1px solid black}
                    .rojo{color:red}
                    .verde{color:green}
                    .azul{color:blue}
                    img{height:100px;}
                </style>
            </head>
            <body>
                <h1>Ejercicio 1</h1>
                <xsl:for-each select="tienda/producto">
                    <p>
                        <xsl:value-of select="articulo"/>
                    </p>
                </xsl:for-each>
                <h1>Ejercicio 2</h1>
                <ul>
                    <xsl:for-each select="tienda/producto">
                        <li>
                            <xsl:value-of select="articulo"/>
                        </li>
                    </xsl:for-each>
                </ul>
                <h1>Ejercicio 3</h1>
                <table>

                    <xsl:for-each select="tienda/producto">
                        <tr>
                            <td>
                                <xsl:value-of select="articulo"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
                <h1>Ejercicio 4</h1>
                <table>

                    <xsl:for-each select="tienda/producto">
                        <tr>
                            <td>Artículos de mi tienda:
                            </td>
                            <td>
                                <xsl:value-of select="articulo"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
                <h1>Ejercicio 5</h1>
                <table>

                    <tr>
                        <td>
                            <xsl:text>Código</xsl:text>
                        </td>
                        <td>
                            <xsl:text>Artículo</xsl:text>
                        </td>
                        <td>
                            <xsl:text>Cantidad</xsl:text>
                        </td>
                    </tr>
                    <xsl:for-each select="tienda/producto">
                        <tr>
                            <td>
                                <xsl:value-of select="codigo"/>
                            </td>
                            <td>
                                <xsl:value-of select="articulo"/>
                            </td>
                            <td>
                                <xsl:value-of select="cantidad"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>

                <h1>Ejercicio 6</h1>
                <table>

                    <tr>
                        <td>
                            <xsl:text>Código</xsl:text>
                        </td>
                        <td>
                            <xsl:text>Artículo</xsl:text>
                        </td>
                        <td>
                            <xsl:text>Cantidad</xsl:text>
                        </td>
                        <td>
                            <xsl:text>Precio</xsl:text>
                        </td>
                    </tr>
                    <xsl:for-each select="tienda/producto">
                        <tr>
                            <td>
                                <xsl:value-of select="codigo"/>
                            </td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="precio &lt;= 100">
                                        <span class="verde">
                                            <xsl:value-of select="articulo"/>
                                        </span>
                                    </xsl:when>
                                    <xsl:when test="precio &lt;= 1000">
                                        <span class="azul">
                                            <xsl:value-of select="articulo"/>
                                        </span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <span class="rojo">
                                            <xsl:value-of select="articulo"/>
                                        </span>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <td>
                                <xsl:value-of select="cantidad"/>
                            </td>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
                <h1>Ejercicio 7</h1>
                <table>

                    <tr>
                        <th>
                            <xsl:text>Código</xsl:text>
                        </th>
                        <th>
                            <xsl:text>Artículo</xsl:text>
                        </th>
                        <th>
                            <xsl:text>Cantidad</xsl:text>
                        </th>
                        <th>
                            <xsl:text>Precio</xsl:text>
                        </th>
                        <th>
                            <xsl:text>Imagen</xsl:text>
                        </th>
                    </tr>
                    <xsl:for-each select="tienda/producto">
                        <tr>
                            <td>
                                <xsl:value-of select="codigo"/>
                            </td>
                            <td>
                                <xsl:value-of select="articulo"/>
                            </td>
                            <td>
                                <xsl:value-of select="cantidad"/>
                            </td>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                            <td>
                                <xsl:if test="codigo = 92">
                                    <img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img>
                                </xsl:if>
                                <xsl:if test="codigo = 101">
                                    <img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img>
                                </xsl:if>
                                <xsl:if test="codigo = 103">
                                    <img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img>
                                </xsl:if>
                                <xsl:if test="codigo = 104">
                                    <img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img>
                                </xsl:if>
                                <xsl:if test="codigo = 105">
                                    <img><xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute></img>
                                </xsl:if>
                            </td>

                        </tr>




                    </xsl:for-each>




                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>