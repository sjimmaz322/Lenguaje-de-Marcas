<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Tranformación 1</title>
                <meta charset="UTF-8" />
                <style>
                    h1{text-align:center;}
                    .rojo{color:red}
                    .fondoRojo{background-color:red}
                    table{border-collapese:collapse;width:80%; margin:0 auto;text-align:center;}
                    table,td,th{border:1px solid black}
                    th{background-color:#d3d3d3}
                </style>
            </head>
            <body>
                <h1>EJERCICIO 1</h1>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Autores</th>
                        <th>Editores</th>

                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="titulo"/>
                        <tr>
                            <xsl:choose>
                                <xsl:when test="precio &gt;= 100">
                                    <td>
                                        <span class="rojo">
                                            <xsl:value-of select="titulo"></xsl:value-of> (Caro)
                                        </span>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo"></xsl:value-of>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <td>
                                <xsl:for-each select="autor">
                                    <xsl:value-of select="nombre"/>
                                    <xsl:text></xsl:text>
                                    <xsl:value-of select="apellido"/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="editor">
                                    <xsl:value-of select="nombre"/>
                                    <xsl:text></xsl:text>
                                    <xsl:value-of select="apellido"/>
                                    <xsl:text></xsl:text>
                                    <xsl:value-of select="afiliacion"/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h1>EJERCICIO 2</h1>
                <table>
                    <tr>
                        <th>Precio</th>
                        <th>Título</th>
                        <th>Fecha Public</th>
                    </tr>

                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" order="descending"/>
                        <tr>
                            <td>
                                <xsl:value-of select="precio"></xsl:value-of>
                            </td>

                            <xsl:choose>
                                <xsl:when test="precio &gt;= 100">
                                    <td class="fondoRojo">
                                        <span>
                                            <xsl:value-of select="titulo"></xsl:value-of>
                                        </span>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="titulo"></xsl:value-of>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <td>
                                <em>
                                    <xsl:value-of select="@año"></xsl:value-of>
                                </em>
                            </td>

                        </tr>

                    </xsl:for-each>
                </table>
                <h1>EJERCICIO 3</h1>
                <ol>
                    <xsl:for-each select="bib/libro/autor">
                        <xsl:sort select="apellido"/>
                        <li>
                        Apellido:
                            <xsl:text></xsl:text>
                            <xsl:value-of select="apellido"></xsl:value-of>
                            <xsl:text></xsl:text>
                        Nombre:
                            <xsl:value-of select="nombre"></xsl:value-of>
                        </li>
                    </xsl:for-each>
                </ol>

                <h1>EJERCICIO 4</h1>
                <ol>
                    <xsl:for-each select="bib/libro">


                        <xsl:choose>
                            <xsl:when test="precio &lt; 100">
                                <li>
                                    <xsl:value-of select="titulo"></xsl:value-of>
                                </li>
                            </xsl:when>

                            <xsl:otherwise>
                                <xsl:text></xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>


                    </xsl:for-each>
                </ol>

            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>